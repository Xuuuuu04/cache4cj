package cache4cj

/**
 * 缓存异常类
 * 用于表示缓存操作中的各种错误情况
 */
public open class CacheException <: Exception {
    public init(message: String) {
        super(message)
    }
}

/**
 * 项目已存在异常
 * 当尝试添加已存在的键时抛出
 */
public class ItemExistsException <: CacheException {
    public init(key: String) {
        super("Item '${key}' already exists")
    }
}

/**
 * 项目不存在异常
 * 当尝试访问不存在的键时抛出
 */
public class ItemNotExistsException <: CacheException {
    public init(key: String) {
        super("Item '${key}' not found")
    }
}

/**
 * 类型不匹配异常
 * 当值的类型不符合预期时抛出
 */
public class TypeMismatchException <: CacheException {
    public init(key: String, expectedType: String) {
        super("The value for '${key}' does not have type ${expectedType}")
    }
}
