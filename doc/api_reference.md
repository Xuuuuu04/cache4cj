# cache4cj API 参考

## 简介

cache4cj 是一个使用仓颉（Cangjie）语言实现的**高性能、类型安全的内存缓存库**，从著名的 Go 语言库 [go-cache](https://github.com/patrickmn/go-cache) 移植而来。

本文档详细介绍 `cache4cj` 库当前提供的公开 API，包括核心缓存功能、数值操作、持久化和时间工具函数。

## 当前提供的模块

cache4cj 库当前提供以下主要模块：

1.  **核心缓存 (`Cache<T>`)**: 线程安全的泛型缓存类，支持过期时间和自动清理
2.  **缓存项 (`CacheItem<T>`)**: 缓存项结构体，存储值和过期时间
3.  **数值操作 (`CacheNumeric`)**: 提供 10 种数值类型的递增递减操作
4.  **持久化 (`CachePersistence`)**: 将缓存保存到文件和从文件加载
5.  **时间工具 (`time_utils`)**: 时间戳格式化和剩余时间计算
6.  **异常处理 (`CacheException`)**: 缓存操作相关的异常类型

## 核心 Cache API

Cache 类是 cache4cj 的核心，提供线程安全的泛型缓存实现。

### Cache 类

```cangjie
/**
 * 缓存类
 * 线程安全的内存缓存实现,支持过期时间和自动清理
 *
 * 类型参数 T: 缓存值的类型
 */
public class Cache<T> {
    /** 默认过期时间(Duration,-1表示永不过期) */
    var defaultExpiration: Duration

    /**
     * 创建新缓存
     * @param defaultExpiration 默认过期时间
     * @param cleanupInterval 清理间隔(0表示不自动清理)
     * @return 缓存实例
     */
    public static func create(
        defaultExpiration!: Duration = Duration.second,
        cleanupInterval!: Duration = Duration.second
    ): Cache<T>

    /**
     * 从已有数据创建缓存
     * @param items 初始缓存项集合
     * @param defaultExpiration 默认过期时间
     * @param cleanupInterval 清理间隔
     * @return 缓存实例
     */
    public static func createFrom(
        items: HashMap<String, CacheItem<T>>,
        defaultExpiration: Duration,
        cleanupInterval: Duration
    ): Cache<T>

    /**
     * 设置缓存项
     * @param key 键
     * @param value 值
     * @param d 过期时间(默认使用 defaultExpiration,-1表示永不过期)
     */
    public func set(key: String, value: T, d!: Duration = Duration.second): Unit

    /**
     * 设置缓存项(使用默认过期时间)
     * @param key 键
     * @param value 值
     */
    public func setDefault(key: String, value: T): Unit

    /**
     * 添加缓存项(仅在键不存在时)
     * @param key 键
     * @param value 值
     * @param d 过期时间
     * @throws ItemExistsException 如果键已存在
     */
    public func add(key: String, value: T, d!: Duration = Duration.second): Unit

    /**
     * 替换缓存项(仅在键存在时)
     * @param key 键
     * @param value 新值
     * @param d 过期时间
     * @throws ItemNotExistsException 如果键不存在
     */
    public func replace(key: String, value: T, d!: Duration = Duration.second): Unit

    /**
     * 获取缓存项
     * @param key 键
     * @return Option<T> 值的Option包装,如果不存在或已过期返回None
     */
    public func get(key: String): Option<T>

    /**
     * 获取缓存项及其过期时间
     * @param key 键
     * @return (Option<T>, Int64) 值和过期时间戳(毫秒)的元组
     */
    public func getWithExpiration(key: String): (Option<T>, Int64)

    /**
     * 删除缓存项
     * @param key 键
     */
    public func delete(key: String): Unit

    /**
     * 删除所有过期的缓存项
     */
    public func deleteExpired(): Unit

    /**
     * 获取所有未过期的缓存项
     * @return HashMap<String, T> 所有未过期的缓存项
     */
    public func getAllItems(): HashMap<String, T>

    /**
     * 获取所有未过期的缓存项及其元数据
     * @return HashMap<String, CacheItem<T>> 键和完整缓存项的映射
     */
    public func getAllItemsWithExpiration(): HashMap<String, CacheItem<T>>

    /**
     * 获取缓存项数量(包括可能已过期但未清理的项)
     * @return Int64 缓存项数量
     */
    public func itemCount(): Int64

    /**
     * 清空所有缓存项
     */
    public func flush(): Unit

    /**
     * 设置驱逐回调函数
     * @param callback 回调函数
     */
    public func setOnEvicted(callback: OnEvictedCallback<T>): Unit

    /**
     * 移除驱逐回调函数
     */
    public func clearOnEvicted(): Unit

    /**
     * 停止清理器
     */
    public func stopJanitor(): Unit
}
```

### 使用示例

```cangjie
import cache4cj.*
import std.time.*

main() {
    // 创建缓存:默认5分钟过期,每1分钟清理一次
    let cache = Cache<String>.create(
        defaultExpiration = Duration.minute * 5,
        cleanupInterval = Duration.minute * 1
    )

    // 设置缓存
    cache.set("username", "Alice")

    // 获取缓存
    match (cache.get("username")) {
        case Some(value) => println("用户名: ${value}")
        case None => println("未找到")
    }

    // 删除缓存
    cache.delete("username")

    // 停止清理器
    cache.stopJanitor()
}
```

### CacheItem 结构体

```cangjie
/**
 * 缓存项结构体
 * 存储缓存对象及其过期时间
 *
 * 类型参数 T: 缓存对象的类型
 */
public struct CacheItem<T> {
    /** 缓存的对象 */
    public var object: T

    /** 过期时间(毫秒,0表示永不过期) */
    public var expiration: Int64

    /**
     * 构造函数
     * @param obj 缓存对象
     * @param exp 过期时间(毫秒)
     */
    public init(obj: T, exp: Int64)

    /**
     * 判断缓存项是否已过期
     * @return true表示已过期,false表示未过期或永不过期
     */
    public func expired(): Bool
}
```

### 回调函数类型

```cangjie
/**
 * 缓存回调函数类型
 * 当缓存项被驱逐时调用
 *
 * 参数:
 *   - key: 被驱逐的键
 *   - value: 被驱逐的值
 */
public type OnEvictedCallback<T> = (String, T) -> Unit
```

**使用示例**:

```cangjie
cache.setOnEvicted({ (key: String, value: String) =>
    println("驱逐: ${key} = ${value}")
})

cache.set("temp", "data")
cache.delete("temp")  // 会触发回调
```

## CacheNumeric API

CacheNumeric 类提供数值类型的递增递减操作。

### 支持的数值类型

cache4cj 支持 10 种数值类型的缓存操作：

- **有符号整数**: `Int8`, `Int16`, `Int32`, `Int64`
- **无符号整数**: `UInt8`, `UInt16`, `UInt32`, `UInt64`
- **浮点数**: `Float32`, `Float64`

### Int 系列操作

```cangjie
/**
 * 递增 Int8 值
 * @param cache 缓存对象
 * @param key 键
 * @param n 增量(默认为1)
 * @return Int8 新值
 * @throws ItemNotExistsException 如果键不存在
 */
public static func incrementInt8(cache: Cache<Int8>, key: String, n!: Int8 = 1): Int8

/**
 * 递增 Int16 值
 * @param cache 缓存对象
 * @param key 键
 * @param n 增量(默认为1)
 * @return Int16 新值
 * @throws ItemNotExistsException 如果键不存在
 */
public static func incrementInt16(cache: Cache<Int16>, key: String, n!: Int16 = 1): Int16

/**
 * 递增 Int32 值
 * @param cache 缓存对象
 * @param key 键
 * @param n 增量(默认为1)
 * @return Int32 新值
 * @throws ItemNotExistsException 如果键不存在
 */
public static func incrementInt32(cache: Cache<Int32>, key: String, n!: Int32 = 1): Int32

/**
 * 递增 Int64 值
 * @param cache 缓存对象
 * @param key 键
 * @param n 增量(默认为1)
 * @return Int64 新值
 * @throws ItemNotExistsException 如果键不存在
 */
public static func incrementInt64(cache: Cache<Int64>, key: String, n!: Int64 = 1): Int64

/**
 * 递减 Int8 值
 * @param cache 缓存对象
 * @param key 键
 * @param n 减量(默认为1)
 * @return Int8 新值
 * @throws ItemNotExistsException 如果键不存在
 */
public static func decrementInt8(cache: Cache<Int8>, key: String, n!: Int8 = 1): Int8

/**
 * 递减 Int16 值
 * @param cache 缓存对象
 * @param key 键
 * @param n 减量(默认为1)
 * @return Int16 新值
 * @throws ItemNotExistsException 如果键不存在
 */
public static func decrementInt16(cache: Cache<Int16>, key: String, n!: Int16 = 1): Int16

/**
 * 递减 Int32 值
 * @param cache 缓存对象
 * @param key 键
 * @param n 减量(默认为1)
 * @return Int32 新值
 * @throws ItemNotExistsException 如果键不存在
 */
public static func decrementInt32(cache: Cache<Int32>, key: String, n!: Int32 = 1): Int32

/**
 * 递减 Int64 值
 * @param cache 缓存对象
 * @param key 键
 * @param n 减量(默认为1)
 * @return Int64 新值
 * @throws ItemNotExistsException 如果键不存在
 */
public static func decrementInt64(cache: Cache<Int64>, key: String, n!: Int64 = 1): Int64
```

### UInt 系列操作

```cangjie
/**
 * 递增 UInt8 值
 * @param cache 缓存对象
 * @param key 键
 * @param n 增量(默认为1)
 * @return UInt8 新值
 * @throws ItemNotExistsException 如果键不存在
 */
public static func incrementUInt8(cache: Cache<UInt8>, key: String, n!: UInt8 = 1): UInt8

/**
 * 递增 UInt16 值
 * @param cache 缓存对象
 * @param key 键
 * @param n 增量(默认为1)
 * @return UInt16 新值
 * @throws ItemNotExistsException 如果键不存在
 */
public static func incrementUInt16(cache: Cache<UInt16>, key: String, n!: UInt16 = 1): UInt16

/**
 * 递增 UInt32 值
 * @param cache 缓存对象
 * @param key 键
 * @param n 增量(默认为1)
 * @return UInt32 新值
 * @throws ItemNotExistsException 如果键不存在
 */
public static func incrementUInt32(cache: Cache<UInt32>, key: String, n!: UInt32 = 1): UInt32

/**
 * 递增 UInt64 值
 * @param cache 缓存对象
 * @param key 键
 * @param n 增量(默认为1)
 * @return UInt64 新值
 * @throws ItemNotExistsException 如果键不存在
 */
public static func incrementUInt64(cache: Cache<UInt64>, key: String, n!: UInt64 = 1): UInt64

/**
 * 递减 UInt8 值
 * @param cache 缓存对象
 * @param key 键
 * @param n 减量(默认为1)
 * @return UInt8 新值
 * @throws ItemNotExistsException 如果键不存在
 * @throws CacheException 如果发生下溢(减量大于当前值)
 */
public static func decrementUInt8(cache: Cache<UInt8>, key: String, n!: UInt8 = 1): UInt8

/**
 * 递减 UInt16 值
 * @param cache 缓存对象
 * @param key 键
 * @param n 减量(默认为1)
 * @return UInt16 新值
 * @throws ItemNotExistsException 如果键不存在
 * @throws CacheException 如果发生下溢(减量大于当前值)
 */
public static func decrementUInt16(cache: Cache<UInt16>, key: String, n!: UInt16 = 1): UInt16

/**
 * 递减 UInt32 值
 * @param cache 缓存对象
 * @param key 键
 * @param n 减量(默认为1)
 * @return UInt32 新值
 * @throws ItemNotExistsException 如果键不存在
 * @throws CacheException 如果发生下溢(减量大于当前值)
 */
public static func decrementUInt32(cache: Cache<UInt32>, key: String, n!: UInt32 = 1): UInt32

/**
 * 递减 UInt64 值
 * @param cache 缓存对象
 * @param key 键
 * @param n 减量(默认为1)
 * @return UInt64 新值
 * @throws ItemNotExistsException 如果键不存在
 * @throws CacheException 如果发生下溢(减量大于当前值)
 */
public static func decrementUInt64(cache: Cache<UInt64>, key: String, n!: UInt64 = 1): UInt64
```

### Float 系列操作

```cangjie
/**
 * 递增 Float32 值
 * @param cache 缓存对象
 * @param key 键
 * @param n 增量(默认为1.0)
 * @return Float32 新值
 * @throws ItemNotExistsException 如果键不存在
 */
public static func incrementFloat32(cache: Cache<Float32>, key: String, n!: Float32 = 1.0): Float32

/**
 * 递增 Float64 值
 * @param cache 缓存对象
 * @param key 键
 * @param n 增量(默认为1.0)
 * @return Float64 新值
 * @throws ItemNotExistsException 如果键不存在
 */
public static func incrementFloat64(cache: Cache<Float64>, key: String, n!: Float64 = 1.0): Float64

/**
 * 递减 Float32 值
 * @param cache 缓存对象
 * @param key 键
 * @param n 减量(默认为1.0)
 * @return Float32 新值
 * @throws ItemNotExistsException 如果键不存在
 */
public static func decrementFloat32(cache: Cache<Float32>, key: String, n!: Float32 = 1.0): Float32

/**
 * 递减 Float64 值
 * @param cache 缓存对象
 * @param key 键
 * @param n 减量(默认为1.0)
 * @return Float64 新值
 * @throws ItemNotExistsException 如果键不存在
 */
public static func decrementFloat64(cache: Cache<Float64>, key: String, n!: Float64 = 1.0): Float64
```

### 数值操作示例

```cangjie
import cache4cj.*

main() {
    // Int64 计数器
    let intCache = Cache<Int64>.create()
    intCache.set("page_views", 1000)

    let newCount = CacheNumeric.incrementInt64(intCache, "page_views", 1)
    println("浏览次数: ${newCount}")  // 输出: 1001

    let count2 = CacheNumeric.incrementInt64(intCache, "page_views", 50)
    println("增加50次后: ${count2}")  // 输出: 1051

    let count3 = CacheNumeric.decrementInt64(intCache, "page_views", 10)
    println("减少10次后: ${count3}")  // 输出: 1041

    // Float64 累计器
    let floatCache = Cache<Float64>.create()
    floatCache.set("price", 99.99)
    floatCache.set("tax_rate", 0.08)

    let newPrice = CacheNumeric.incrementFloat64(floatCache, "price", 10.0)
    println("价格增加后: ${newPrice}")  // 输出: 109.99

    let newTax = CacheNumeric.incrementFloat64(floatCache, "tax_rate", 0.01)
    println("税率增加后: ${newTax}")  // 输出: 0.09

    intCache.stopJanitor()
    floatCache.stopJanitor()
}
```

## CachePersistence API

CachePersistence 类提供缓存持久化功能。

### Int64 持久化

```cangjie
/**
 * 保存 Int64 缓存到文件
 * @param cache 缓存对象
 * @param fname 文件名
 * @throws CacheException 文件操作失败
 */
public static func saveToFile(cache: Cache<Int64>, fname: String): Unit

/**
 * 从文件加载 Int64 缓存
 * @param fname 文件名
 * @param defaultExpiration 默认过期时间
 * @return Cache<Int64> 缓存对象
 * @throws CacheException 文件操作失败或格式错误
 */
public static func loadFromFile(
    fname: String,
    defaultExpiration!: Duration = Duration.second
): Cache<Int64>
```

### Float64 持久化

```cangjie
/**
 * 保存 Float64 缓存到文件
 * @param cache 缓存对象
 * @param fname 文件名
 * @throws CacheException 文件操作失败
 */
public static func saveToFileFloat64(cache: Cache<Float64>, fname: String): Unit

/**
 * 从文件加载 Float64 缓存
 * @param fname 文件名
 * @param defaultExpiration 默认过期时间
 * @return Cache<Float64> 缓存对象
 * @throws CacheException 文件操作失败或格式错误
 */
public static func loadFromFileFloat64(
    fname: String,
    defaultExpiration!: Duration = Duration.second
): Cache<Float64>
```

### 文件格式

持久化文件使用纯文本格式：

```
# cache4cj persistence file
# version: 1.0
# format: key|expiration|value

key1|1736976000000|100
key2|1736976100000|200
key3|0|999
```

- `key`: 键名
- `expiration`: 过期时间戳（毫秒，0 表示永不过期）
- `value: 值

**优势**:
- ✅ 人类可读，易于调试
- ✅ 可用文本编辑器查看和修改
- ✅ 支持任意实现了 `ToString` 的类型

### 持久化示例

```cangjie
import cache4cj.*

main() {
    let cache = Cache<Int64>.create()

    // 设置缓存项
    cache.set("key1", 100)
    cache.set("key2", 200)
    cache.set("key3", 999, Duration.second * -1)  // 永不过期

    // 保存到文件
    CachePersistence.saveToFile(cache, "cache_data.txt")

    // 创建新缓存并加载
    let cache2 = CachePersistence.loadFromFile("cache_data.txt")

    // 验证加载
    match (cache2.get("key1")) {
        case Some(value) => println("加载成功: ${value}")
        case None => println("加载失败")
    }

    cache.stopJanitor()
    cache2.stopJanitor()
}
```

## Time Utils API

时间工具模块提供时间戳相关的工具函数。

### 时间函数

```cangjie
/**
 * 获取当前 Unix 时间戳(毫秒)
 * @return Int64 当前时间戳(毫秒)
 */
public func currentTimeMillis(): Int64

/**
 * 计算过期时间戳
 * @param durationFromNow 距离现在的时长
 * @return Int64 过期时间戳(毫秒),0 表示永不过期
 */
public func calculateExpiration(durationFromNow: Duration): Int64

/**
 * 格式化时间戳为可读字符串
 * @param timestampMillis 毫秒时间戳
 * @param pattern 时间格式模式(默认: "yyyy-MM-dd HH:mm:ss")
 * @return String 格式化后的时间字符串
 */
public func formatTimestamp(
    timestampMillis: Int64,
    pattern!: String = "yyyy-MM-dd HH:mm:ss"
): String

/**
 * 计算剩余时间(从当前时间到过期时间)
 * @param expirationMillis 过期时间戳(毫秒)
 * @return Int64 剩余毫秒数,0 表示已过期或永不过期
 */
public func getRemainingTime(expirationMillis: Int64): Int64
```

### 时间工具示例

```cangjie
import cache4cj.*
import std.time.*

main() {
    let cache = Cache<String>.create(
        defaultExpiration = Duration.minute * 10
    )

    cache.set("session", "user123")

    // 获取带过期时间的缓存项
    let (valueOpt, expiration) = cache.getWithExpiration("session")

    match (valueOpt) {
        case Some(value) => {
            println("会话ID: ${value}")

            if (expiration > 0) {
                // 使用时间工具格式化过期时间
                let expTimeStr = formatTimestamp(expiration)
                println("过期时间: ${expTimeStr}")

                // 计算剩余时间
                let remaining = getRemainingTime(expiration)
                println("剩余: ${remaining / 1000} 秒")
            } else {
                println("永不过期")
            }
        }
        case None => println("会话不存在")
    }

    cache.stopJanitor()
}
```

## 异常类型

cache4cj 提供了专门的异常类型用于处理错误情况。

### CacheException

```cangjie
/**
 * 缓存异常类
 * 用于表示缓存操作中的各种错误情况
 */
public open class CacheException <: Exception {
    public init(message: String)
}
```

### ItemExistsException

```cangjie
/**
 * 项目已存在异常
 * 当尝试添加已存在的键时抛出
 */
public class ItemExistsException <: CacheException {
    public init(key: String)
}
```

### ItemNotExistsException

```cangjie
/**
 * 项目不存在异常
 * 当尝试访问不存在的键时抛出
 */
public class ItemNotExistsException <: CacheException {
    public init(key: String)
}
```

### TypeMismatchException

```cangjie
/**
 * 类型不匹配异常
 * 当值的类型不符合预期时抛出
 */
public class TypeMismatchException <: CacheException {
    public init(key: String, expectedType: String)
}
```

## Janitor API

Janitor 类负责定期清理过期的缓存项。

### Janitor 类

```cangjie
/**
 * 清理器类
 * 定期清理过期的缓存项
 */
public class Janitor<T> {
    /**
     * 构造函数
     * @param cache 要清理的缓存对象
     * @param intv 清理间隔
     */
    public init(cache: Cache<T>, intv: Duration)

    /**
     * 启动清理器
     */
    public func start(): Unit

    /**
     * 停止清理器
     */
    public func stop(): Unit
}
```

## 使用场景示例

### 1. 基础缓存操作

```cangjie
import cache4cj.*
import std.time.*

main() {
    let cache = Cache<String>.create(
        defaultExpiration = Duration.minute * 5,
        cleanupInterval = Duration.minute * 1
    )

    // 设置缓存
    cache.set("username", "Alice")
    cache.set("email", "alice@example.com", Duration.second * 10)  // 10秒过期

    // 获取缓存
    match (cache.get("username")) {
        case Some(value) => println("用户名: ${value}")
        case None => println("未找到")
    }

    // 删除缓存
    cache.delete("username")

    cache.stopJanitor()
}
```

### 2. Add 和 Replace 操作

```cangjie
import cache4cj.*

main() {
    let cache = Cache<String>.create()

    // Add: 仅当键不存在时添加
    cache.add("key1", "value1")

    try {
        cache.add("key1", "value2")  // 抛出 ItemExistsException
    } catch (e: ItemExistsException) {
        println("键已存在")
    }

    // Replace: 仅当键存在时替换
    cache.replace("key1", "new_value")

    try {
        cache.replace("nonexistent", "value")  // 抛出 ItemNotExistsException
    } catch (e: ItemNotExistsException) {
        println("键不存在")
    }

    cache.stopJanitor()
}
```

### 3. 驱逐回调

```cangjie
import cache4cj.*

main() {
    let cache = Cache<String>.create()

    cache.setOnEvicted({ (key: String, value: String) =>
        println("驱逐: ${key} = ${value}")
    })

    cache.set("temp", "data")
    cache.delete("temp")  // 会触发回调

    cache.stopJanitor()
}
```

### 4. 获取所有缓存项及元数据

```cangjie
import cache4cj.*

main() {
    let cache = Cache<String>.create()

    cache.set("key1", "value1")
    cache.set("key2", "value2")

    // 获取所有未过期项（仅值）
    let items = cache.items()
    println("未过期项数: ${items.size}")

    // 获取所有未过期项（包含过期时间）
    let itemsWithExp = cache.getAllItemsWithExpiration()
    for ((key, item) in itemsWithExp) {
        println("Key: ${key}, Value: ${item.object}, Exp: ${formatTimestamp(item.expiration)}")
    }

    cache.stopJanitor()
}
```

### 5. 完整持久化流程

```cangjie
import cache4cj.*
import std.time.*

main() {
    // 创建并设置缓存
    let cache = Cache<Int64>.create(
        defaultExpiration = Duration.hour * 1
    )

    cache.set("user_count", 1000)
    cache.set("product_count", 500)
    cache.set("order_count", 200, Duration.second * -1)  // 永不过期

    // 保存到文件
    CachePersistence.saveToFile(cache, "cache_backup.txt")
    println("缓存已保存")

    // 从文件恢复缓存
    let restoredCache = CachePersistence.loadFromFile("cache_backup.txt")

    // 验证恢复
    match (restoredCache.get("user_count")) {
        case Some(count) => println("用户数: ${count}")
        case None => println("加载失败")
    }

    cache.stopJanitor()
    restoredCache.stopJanitor()
}
```

## API 设计原则

cache4cj 的 API 设计遵循以下原则：

1.  **类型安全**: 使用泛型系统，在编译时保证类型正确性
2.  **线程安全**: 使用 `ReadWriteLock` 保证并发访问安全
3.  **简洁易用**: API 命名清晰，参数默认值合理
4.  **错误处理**: 使用异常机制处理错误情况
5.  **可扩展性**: 支持回调函数，允许自定义驱逐行为

## 与 go-cache API 对比

| 功能 | go-cache | cache4cj |
|------|----------|----------|
| 创建缓存 | `New(defaultExpiration, cleanupInterval)` | `Cache.create(defaultExpiration, cleanupInterval)` |
| 设置值 | `cache.Set(key, value, duration)` | `cache.set(key, value, d: duration)` |
| 获取值 | `value, found := cache.Get(key)` | `let valueOpt = cache.get(key)` (返回 Option<T>) |
| 数值递增 | `cache.Increment(key, n)` | `CacheNumeric.incrementInt64(cache, key, n)` |
| 删除项 | `cache.Delete(key)` | `cache.delete(key)` |
| 驱逐回调 | `cache.OnEvicted(f)` | `cache.setOnEvicted(callback)` |
| 持久化 | `cache.SaveFile(fname)` (gob) | `CachePersistence.saveToFile(cache, fname)` (文本) |
