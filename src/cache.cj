package cache4cj

import std.collection.*
import std.sync.*

/**
 * 缓存回调函数类型
 * 当缓存项被驱逐时调用
 */
public type OnEvictedCallback<T> = (String, T) -> Unit

/**
 * 缓存类
 * 线程安全的内存缓存实现,支持过期时间和自动清理
 */
public class Cache<T> {
    // 默认过期时间(Duration,-1表示永不过期)
    var defaultExpiration: Duration

    // 缓存项存储
    var items: HashMap<String, CacheItem<T>> = HashMap<String, CacheItem<T>>()

    // 读写锁,保证线程安全
    let lock: ReadWriteLock = ReadWriteLock()

    // 驱逐回调函数
    var onEvicted: Option<OnEvictedCallback<T>> = None

    // 清理器
    var janitor: Option<Janitor<T>> = None

    /**
     * 私有构造函数
     * @param de 默认过期时间
     */
    private init(de: Duration) {
        defaultExpiration = de
    }

    /**
     * 创建新缓存
     * @param defaultExpiration 默认过期时间
     * @param cleanupInterval 清理间隔(0表示不自动清理)
     * @return 缓存实例
     */
    public static func create(defaultExpiration!: Duration = Duration.second, cleanupInterval!: Duration = Duration.second): Cache<T> {
        let cache = Cache<T>(defaultExpiration)

        // 如果设置了清理间隔,启动清理器
        if (cleanupInterval > Duration.millisecond) {
            let j = Janitor<T>(cache, cleanupInterval)
            j.start()
            cache.janitor = Some(j)
        }

        return cache
    }

    /**
     * 从已有数据创建缓存
     * @param items 初始缓存项集合
     * @param defaultExpiration 默认过期时间
     * @param cleanupInterval 清理间隔(0表示不自动清理)
     * @return 缓存实例
     */
    public static func createFrom(
        items: HashMap<String, CacheItem<T>>,
        defaultExpiration: Duration,
        cleanupInterval: Duration
    ): Cache<T> {
        let cache = Cache<T>(defaultExpiration)

        // 复制已有的缓存项
        synchronized(cache.lock.writeLock) {
            for ((key, item) in items) {
                cache.items[key] = item
            }
        }

        // 如果设置了清理间隔,启动清理器
        if (cleanupInterval > Duration.millisecond) {
            let j = Janitor<T>(cache, cleanupInterval)
            j.start()
            cache.janitor = Some(j)
        }

        return cache
    }

    /**
     * 设置缓存项
     * @param key 键
     * @param value 值
     * @param d 过期时间(0表示使用默认过期时间,-1表示永不过期)
     */
    public func set(key: String, value: T, d!: Duration = Duration.second): Unit {
        var expDuration = d
        if (expDuration == Duration.second) {
            expDuration = defaultExpiration
        }

        // 计算过期时间戳(毫秒)
        let expiration = calculateExpiration(expDuration)

        synchronized(lock.writeLock) {
            items[key] = CacheItem<T>(value, expiration)
        }
    }

    /**
     * 设置缓存项(使用默认过期时间)
     * @param key 键
     * @param value 值
     */
    public func setDefault(key: String, value: T): Unit {
        set(key, value, d: Duration.second)
    }

    /**
     * 添加缓存项(仅在键不存在时)
     * @param key 键
     * @param value 值
     * @param d 过期时间
     * @throws ItemExistsException 如果键已存在
     */
    public func add(key: String, value: T, d!: Duration = Duration.second): Unit {
        synchronized(lock.writeLock) {
            let opt = getInternal(key)
            if (let Some(_) <- opt) {
                throw ItemExistsException(key)
            }
            setInternal(key, value, d)
        }
    }

    /**
     * 替换缓存项(仅在键存在时)
     * @param key 键
     * @param value 新值
     * @param d 过期时间
     * @throws ItemNotExistsException 如果键不存在
     */
    public func replace(key: String, value: T, d!: Duration = Duration.second): Unit {
        synchronized(lock.writeLock) {
            let opt = getInternal(key)
            if (let None <- opt) {
                throw ItemNotExistsException(key)
            }
            setInternal(key, value, d)
        }
    }

    /**
     * 获取缓存项
     * @param key 键
     * @return Option<T> 值的Option包装,如果不存在或已过期返回None
     */
    public func get(key: String): Option<T> {
        synchronized(lock.readLock) {
            getInternal(key)
        }
    }

    /**
     * 获取缓存项及其过期时间
     *
     * 返回值说明:
     * - 第一个元素 Option<T>: 缓存值(如果存在且未过期)
     * - 第二个元素 Int64: 过期时间戳(毫秒),0 表示永不过期或不存在
     *
     * 时间戳转换示例:
     * ```cangjie
     * let (valueOpt, expiration) = cache.getWithExpiration("key")
     * match (valueOpt) {
     *     case Some(value) => {
     *         if (expiration > 0) {
     *             // 将毫秒时间戳转换为可读时间
     *             let expTime = DateTime.fromUnixTimeStamp(Duration.millisecond * expiration)
     *             println("过期时间: ${expTime.format("yyyy-MM-dd HH:mm:ss")}")
     *         } else {
     *             println("永不过期")
     *         }
     *     }
     *     case None => println("键不存在或已过期")
     * }
     * ```
     *
     * @param key 键
     * @return (Option<T>, Int64) 值和过期时间戳(毫秒)的元组
     */
    public func getWithExpiration(key: String): (Option<T>, Int64) {
        synchronized(lock.readLock) {
            let optItem = items.get(key)
            if (let Some(item) <- optItem) {
                if (item.expired()) {
                    (None, 0)
                } else {
                    (Some(item.object), item.expiration)
                }
            } else {
                (None, 0)
            }
        }
    }

    /**
     * 删除缓存项
     * @param key 键
     */
    public func delete(key: String): Unit {
        let value = synchronized(lock.writeLock) {
            deleteInternal(key)
        }

        // 触发驱逐回调
        if (let Some(v) <- value) {
            if (let Some(callback) <- onEvicted) {
                callback(key, v)
            }
        }
    }

    /**
     * 删除所有过期的缓存项
     */
    public func deleteExpired(): Unit {
        var evictedItems: ArrayList<(String, T)> = ArrayList<(String, T)>()
        let keysToRemove: ArrayList<String> = ArrayList<String>()

        synchronized(lock.writeLock) {
            // 收集过期的键
            for ((key, item) in items) {
                if (item.expired()) {
                    keysToRemove.add(key)
                }
            }

            // 删除过期项并记录
            for (key in keysToRemove) {
                if (let Some(v) <- deleteInternalNoCallback(key)) {
                    evictedItems.add((key, v))
                }
            }
        }

        // 在锁外触发回调
        for ((key, value) in evictedItems) {
            if (let Some(callback) <- onEvicted) {
                callback(key, value)
            }
        }
    }

    /**
     * 获取所有未过期的缓存项
     * @return HashMap<String, T> 所有未过期的缓存项
     */
    public func getAllItems(): HashMap<String, T> {
        synchronized(lock.readLock) {
            let result: HashMap<String, T> = HashMap<String, T>()
            for ((key, item) in items) {
                if (!item.expired()) {
                    result[key] = item.object
                }
            }
            result
        }
    }

    /**
     * 获取所有未过期的缓存项及其元数据
     * @return HashMap<String, CacheItem<T>> 键和完整缓存项的映射(包含过期时间)
     */
    public func getAllItemsWithExpiration(): HashMap<String, CacheItem<T>> {
        synchronized(lock.readLock) {
            let result: HashMap<String, CacheItem<T>> = HashMap<String, CacheItem<T>>()
            for ((key, item) in items) {
                if (!item.expired()) {
                    result[key] = item
                }
            }
            result
        }
    }

    /**
     * 获取缓存项数量(包括可能已过期但未清理的项)
     * @return Int64 缓存项数量
     */
    public func itemCount(): Int64 {
        synchronized(lock.readLock) {
            items.size
        }
    }

    /**
     * 清空所有缓存项
     */
    public func flush(): Unit {
        synchronized(lock.writeLock) {
            items.clear()
        }
    }

    /**
     * 设置驱逐回调函数
     * @param callback 回调函数
     */
    public func setOnEvicted(callback: OnEvictedCallback<T>): Unit {
        synchronized(lock.writeLock) {
            onEvicted = Some(callback)
        }
    }

    /**
     * 移除驱逐回调函数
     */
    public func clearOnEvicted(): Unit {
        synchronized(lock.writeLock) {
            onEvicted = None
        }
    }

    /**
     * 停止清理器
     */
    public func stopJanitor(): Unit {
        if (let Some(j) <- janitor) {
            j.stop()
            janitor = None
        }
    }

    // ==================== 内部辅助方法 ====================

    /**
     * 内部获取方法(不加锁,由调用者负责锁管理)
     */
    internal func getInternal(key: String): Option<T> {
        let optItem = items.get(key)
        if (let Some(item) <- optItem) {
            if (item.expired()) {
                None
            } else {
                Some(item.object)
            }
        } else {
            None
        }
    }

    /**
     * 内部设置方法(不加锁,由调用者负责锁管理)
     */
    internal func setInternal(key: String, value: T, d: Duration): Unit {
        var expDuration = d
        if (expDuration == Duration.second) {
            expDuration = defaultExpiration
        }

        // 计算过期时间戳(毫秒)
        let expiration = calculateExpiration(expDuration)

        items[key] = CacheItem<T>(value, expiration)
    }

    /**
     * 内部删除方法(不加锁,会触发回调)
     */
    private func deleteInternal(key: String): Option<T> {
        let optItem = items.remove(key)
        if (let Some(item) <- optItem) {
            if (item.expired()) {
                None
            } else {
                Some(item.object)
            }
        } else {
            None
        }
    }

    /**
     * 内部删除方法(不加锁,不触发回调)
     */
    private func deleteInternalNoCallback(key: String): Option<T> {
        let optItem = items.remove(key)
        if (let Some(item) <- optItem) {
            if (item.expired()) {
                None
            } else {
                Some(item.object)
            }
        } else {
            None
        }
    }
}
