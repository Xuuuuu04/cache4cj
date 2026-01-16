package cache4cj

import std.sync.*

/**
 * 数值操作扩展
 * 为Cache提供数值类型的增减操作
 */
public class CacheNumeric {
    /**
     * 递增Int64值
     * @param cache 缓存对象
     * @param key 键
     * @param n 增量
     * @return Int64 新值
     * @throws CacheException 如果键不存在或值类型不匹配
     */
    public static func incrementInt64(cache: Cache<Int64>, key: String, n!: Int64 = 1): Int64 {
        synchronized(cache.lock.writeLock) {
            let opt = cache.getInternal(key)
            if (let Some(value) <- opt) {
                let newValue = value + n
                cache.setInternal(key, newValue, Duration.second)
                newValue
            } else {
                throw ItemNotExistsException(key)
            }
        }
    }

    /**
     * 递增Int32值
     * @param cache 缓存对象
     * @param key 键
     * @param n 增量
     * @return Int32 新值
     * @throws CacheException 如果键不存在或值类型不匹配
     */
    public static func incrementInt32(cache: Cache<Int32>, key: String, n!: Int32 = 1): Int32 {
        synchronized(cache.lock.writeLock) {
            let opt = cache.getInternal(key)
            if (let Some(value) <- opt) {
                let newValue = value + n
                cache.setInternal(key, newValue, Duration.second)
                newValue
            } else {
                throw ItemNotExistsException(key)
            }
        }
    }

    /**
     * 递增Float64值
     * @param cache 缓存对象
     * @param key 键
     * @param n 增量
     * @return Float64 新值
     * @throws CacheException 如果键不存在或值类型不匹配
     */
    public static func incrementFloat64(cache: Cache<Float64>, key: String, n!: Float64 = 1.0): Float64 {
        synchronized(cache.lock.writeLock) {
            let opt = cache.getInternal(key)
            if (let Some(value) <- opt) {
                let newValue = value + n
                cache.setInternal(key, newValue, Duration.second)
                newValue
            } else {
                throw ItemNotExistsException(key)
            }
        }
    }

    /**
     * 递增Float32值
     * @param cache 缓存对象
     * @param key 键
     * @param n 增量
     * @return Float32 新值
     * @throws CacheException 如果键不存在或值类型不匹配
     */
    public static func incrementFloat32(cache: Cache<Float32>, key: String, n!: Float32 = 1.0): Float32 {
        synchronized(cache.lock.writeLock) {
            let opt = cache.getInternal(key)
            if (let Some(value) <- opt) {
                let newValue = value + n
                cache.setInternal(key, newValue, Duration.second)
                newValue
            } else {
                throw ItemNotExistsException(key)
            }
        }
    }

    /**
     * 递减Int64值
     * @param cache 缓存对象
     * @param key 键
     * @param n 减量
     * @return Int64 新值
     * @throws CacheException 如果键不存在或值类型不匹配
     */
    public static func decrementInt64(cache: Cache<Int64>, key: String, n!: Int64 = 1): Int64 {
        incrementInt64(cache, key, n: -n)
    }

    /**
     * 递减Int32值
     * @param cache 缓存对象
     * @param key 键
     * @param n 减量
     * @return Int32 新值
     * @throws CacheException 如果键不存在或值类型不匹配
     */
    public static func decrementInt32(cache: Cache<Int32>, key: String, n!: Int32 = 1): Int32 {
        incrementInt32(cache, key, n: -n)
    }

    /**
     * 递减Float64值
     * @param cache 缓存对象
     * @param key 键
     * @param n 减量
     * @return Float64 新值
     * @throws CacheException 如果键不存在或值类型不匹配
     */
    public static func decrementFloat64(cache: Cache<Float64>, key: String, n!: Float64 = 1.0): Float64 {
        incrementFloat64(cache, key, n: -n)
    }

    /**
     * 递减Float32值
     * @param cache 缓存对象
     * @param key 键
     * @param n 减量
     * @return Float32 新值
     * @throws CacheException 如果键不存在或值类型不匹配
     */
    public static func decrementFloat32(cache: Cache<Float32>, key: String, n!: Float32 = 1.0): Float32 {
        incrementFloat32(cache, key, n: -n)
    }

    // ==================== Int8, Int16 操作 ====================

    /**
     * 递增Int8值
     * @param cache 缓存对象
     * @param key 键
     * @param n 增量
     * @return Int8 新值
     * @throws CacheException 如果键不存在或值类型不匹配
     */
    public static func incrementInt8(cache: Cache<Int8>, key: String, n!: Int8 = 1): Int8 {
        synchronized(cache.lock.writeLock) {
            let opt = cache.getInternal(key)
            if (let Some(value) <- opt) {
                let newValue = value + n
                cache.setInternal(key, newValue, Duration.second)
                newValue
            } else {
                throw ItemNotExistsException(key)
            }
        }
    }

    /**
     * 递增Int16值
     * @param cache 缓存对象
     * @param key 键
     * @param n 增量
     * @return Int16 新值
     * @throws CacheException 如果键不存在或值类型不匹配
     */
    public static func incrementInt16(cache: Cache<Int16>, key: String, n!: Int16 = 1): Int16 {
        synchronized(cache.lock.writeLock) {
            let opt = cache.getInternal(key)
            if (let Some(value) <- opt) {
                let newValue = value + n
                cache.setInternal(key, newValue, Duration.second)
                newValue
            } else {
                throw ItemNotExistsException(key)
            }
        }
    }

    /**
     * 递减Int8值
     * @param cache 缓存对象
     * @param key 键
     * @param n 减量
     * @return Int8 新值
     * @throws CacheException 如果键不存在或值类型不匹配
     */
    public static func decrementInt8(cache: Cache<Int8>, key: String, n!: Int8 = 1): Int8 {
        incrementInt8(cache, key, n: -n)
    }

    /**
     * 递减Int16值
     * @param cache 缓存对象
     * @param key 键
     * @param n 减量
     * @return Int16 新值
     * @throws CacheException 如果键不存在或值类型不匹配
     */
    public static func decrementInt16(cache: Cache<Int16>, key: String, n!: Int16 = 1): Int16 {
        incrementInt16(cache, key, n: -n)
    }

    // ==================== UInt 系列操作 ====================

    /**
     * 递增UInt8值
     * @param cache 缓存对象
     * @param key 键
     * @param n 增量
     * @return UInt8 新值
     * @throws CacheException 如果键不存在或值类型不匹配
     */
    public static func incrementUInt8(cache: Cache<UInt8>, key: String, n!: UInt8 = 1): UInt8 {
        synchronized(cache.lock.writeLock) {
            let opt = cache.getInternal(key)
            if (let Some(value) <- opt) {
                let newValue = value + n
                cache.setInternal(key, newValue, Duration.second)
                newValue
            } else {
                throw ItemNotExistsException(key)
            }
        }
    }

    /**
     * 递增UInt16值
     * @param cache 缓存对象
     * @param key 键
     * @param n 增量
     * @return UInt16 新值
     * @throws CacheException 如果键不存在或值类型不匹配
     */
    public static func incrementUInt16(cache: Cache<UInt16>, key: String, n!: UInt16 = 1): UInt16 {
        synchronized(cache.lock.writeLock) {
            let opt = cache.getInternal(key)
            if (let Some(value) <- opt) {
                let newValue = value + n
                cache.setInternal(key, newValue, Duration.second)
                newValue
            } else {
                throw ItemNotExistsException(key)
            }
        }
    }

    /**
     * 递增UInt32值
     * @param cache 缓存对象
     * @param key 键
     * @param n 增量
     * @return UInt32 新值
     * @throws CacheException 如果键不存在或值类型不匹配
     */
    public static func incrementUInt32(cache: Cache<UInt32>, key: String, n!: UInt32 = 1): UInt32 {
        synchronized(cache.lock.writeLock) {
            let opt = cache.getInternal(key)
            if (let Some(value) <- opt) {
                let newValue = value + n
                cache.setInternal(key, newValue, Duration.second)
                newValue
            } else {
                throw ItemNotExistsException(key)
            }
        }
    }

    /**
     * 递增UInt64值
     * @param cache 缓存对象
     * @param key 键
     * @param n 增量
     * @return UInt64 新值
     * @throws CacheException 如果键不存在或值类型不匹配
     */
    public static func incrementUInt64(cache: Cache<UInt64>, key: String, n!: UInt64 = 1): UInt64 {
        synchronized(cache.lock.writeLock) {
            let opt = cache.getInternal(key)
            if (let Some(value) <- opt) {
                let newValue = value + n
                cache.setInternal(key, newValue, Duration.second)
                newValue
            } else {
                throw ItemNotExistsException(key)
            }
        }
    }

    /**
     * 递减UInt8值
     * @param cache 缓存对象
     * @param key 键
     * @param n 减量
     * @return UInt8 新值
     * @throws CacheException 如果键不存在或值类型不匹配
     */
    public static func decrementUInt8(cache: Cache<UInt8>, key: String, n!: UInt8 = 1): UInt8 {
        synchronized(cache.lock.writeLock) {
            let opt = cache.getInternal(key)
            if (let Some(value) <- opt) {
                // 无符号整数不能直接使用-n,需要手动处理
                if (n > value) {
                    throw CacheException("Underflow: cannot decrement ${n} from ${value}")
                }
                let newValue = value - n
                cache.setInternal(key, newValue, Duration.second)
                newValue
            } else {
                throw ItemNotExistsException(key)
            }
        }
    }

    /**
     * 递减UInt16值
     * @param cache 缓存对象
     * @param key 键
     * @param n 减量
     * @return UInt16 新值
     * @throws CacheException 如果键不存在或值类型不匹配
     */
    public static func decrementUInt16(cache: Cache<UInt16>, key: String, n!: UInt16 = 1): UInt16 {
        synchronized(cache.lock.writeLock) {
            let opt = cache.getInternal(key)
            if (let Some(value) <- opt) {
                if (n > value) {
                    throw CacheException("Underflow: cannot decrement ${n} from ${value}")
                }
                let newValue = value - n
                cache.setInternal(key, newValue, Duration.second)
                newValue
            } else {
                throw ItemNotExistsException(key)
            }
        }
    }

    /**
     * 递减UInt32值
     * @param cache 缓存对象
     * @param key 键
     * @param n 减量
     * @return UInt32 新值
     * @throws CacheException 如果键不存在或值类型不匹配
     */
    public static func decrementUInt32(cache: Cache<UInt32>, key: String, n!: UInt32 = 1): UInt32 {
        synchronized(cache.lock.writeLock) {
            let opt = cache.getInternal(key)
            if (let Some(value) <- opt) {
                if (n > value) {
                    throw CacheException("Underflow: cannot decrement ${n} from ${value}")
                }
                let newValue = value - n
                cache.setInternal(key, newValue, Duration.second)
                newValue
            } else {
                throw ItemNotExistsException(key)
            }
        }
    }

    /**
     * 递减UInt64值
     * @param cache 缓存对象
     * @param key 键
     * @param n 减量
     * @return UInt64 新值
     * @throws CacheException 如果键不存在或值类型不匹配
     */
    public static func decrementUInt64(cache: Cache<UInt64>, key: String, n!: UInt64 = 1): UInt64 {
        synchronized(cache.lock.writeLock) {
            let opt = cache.getInternal(key)
            if (let Some(value) <- opt) {
                if (n > value) {
                    throw CacheException("Underflow: cannot decrement ${n} from ${value}")
                }
                let newValue = value - n
                cache.setInternal(key, newValue, Duration.second)
                newValue
            } else {
                throw ItemNotExistsException(key)
            }
        }
    }
}
