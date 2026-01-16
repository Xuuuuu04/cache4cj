package cache4cj

/**
 * 缓存项结构体
 * 存储缓存对象及其过期时间
 */
public struct CacheItem<T> {
    // 缓存的对象
    public var object: T

    // 过期时间(毫秒,0表示永不过期)
    public var expiration: Int64

    /**
     * 构造函数
     * @param obj 缓存对象
     * @param exp 过期时间(毫秒)
     */
    public init(obj: T, exp: Int64) {
        object = obj
        expiration = exp
    }

    /**
     * 判断缓存项是否已过期
     * @return true表示已过期,false表示未过期或永不过期
     */
    public func expired(): Bool {
        if (expiration == 0) {
            return false  // 永不过期
        }
        // 获取当前时间戳并比较
        let current = currentTimeMillis()
        current > expiration
    }
}
