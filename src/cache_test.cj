package cache4cj

import std.unittest.*
import std.unittest.testmacro.*
import std.collection.*

/**
 * 缓存测试类
 */
@Test
class CacheTest {
    // 测试基本的数学运算验证框架
    @TestCase
    public func testBasicMath() {
        @Expect(1 + 1, 2)
    }

    // 测试基本的设置和获取操作
    @TestCase
    public func testSetAndGet() {
        let cache = Cache<String>.create(
            defaultExpiration: Duration.second * 5,
            cleanupInterval: Duration.second
        )

        cache.set("key1", "value1")

        let result = cache.get("key1")
        match (result) {
            case Some(value) => @Expect(value, "value1")
            case None => throw Exception("Expected Some value, got None")
        }

        cache.stopJanitor()
    }

    // 测试获取不存在的键
    @TestCase
    public func testGetNotFound() {
        let cache = Cache<String>.create(
            defaultExpiration: Duration.second,
            cleanupInterval: Duration.second
        )
        let result = cache.get("nonexistent")

        match (result) {
            case None => @Expect(true, true)
            case Some(_) => throw Exception("Expected None")
        }

        cache.stopJanitor()
    }

    // 测试删除操作
    @TestCase
    public func testDelete() {
        let cache = Cache<String>.create(
            defaultExpiration: Duration.second,
            cleanupInterval: Duration.second
        )

        cache.set("key1", "value1")
        cache.delete("key1")

        let result = cache.get("key1")
        match (result) {
            case None => @Expect(true, true)
            case Some(_) => throw Exception("Expected None")
        }

        cache.stopJanitor()
    }

    // 测试清空操作
    @TestCase
    public func testFlush() {
        let cache = Cache<String>.create(
            defaultExpiration: Duration.second,
            cleanupInterval: Duration.second
        )

        cache.set("key1", "value1")
        cache.set("key2", "value2")
        cache.flush()

        @Expect(cache.itemCount(), 0)

        cache.stopJanitor()
    }

    // 测试itemCount
    @TestCase
    public func testItemCount() {
        let cache = Cache<String>.create(
            defaultExpiration: Duration.second,
            cleanupInterval: Duration.second
        )

        cache.set("key1", "value1")
        cache.set("key2", "value2")
        cache.set("key3", "value3")

        @Expect(cache.itemCount(), 3)

        cache.stopJanitor()
    }

    // 测试Int64数值操作
    @TestCase
    public func testIncrementInt64() {
        let cache = Cache<Int64>.create(
            defaultExpiration: Duration.second,
            cleanupInterval: Duration.second
        )

        cache.set("counter", 10)
        let newValue = CacheNumeric.incrementInt64(cache, "counter", n: 5)

        @Expect(newValue, 15)

        match (cache.get("counter")) {
            case Some(value) => @Expect(value, 15)
            case None => throw Exception("Expected value")
        }

        cache.stopJanitor()
    }

    // 测试缓存项过期功能 - 短过期时间
    @TestCase
    public func testExpirationShort() {
        let cache = Cache<String>.create(
            defaultExpiration: Duration.millisecond * 100,  // 100毫秒过期
            cleanupInterval: Duration.second
        )

        cache.set("key1", "value1")

        // 立即获取,应该存在
        match (cache.get("key1")) {
            case Some(value) => @Expect(value, "value1")
            case None => throw Exception("Expected value immediately after set")
        }

        // 等待150毫秒,应该过期
        sleep(Duration.millisecond * 150)

        match (cache.get("key1")) {
            case None => @Expect(true, true)  // 期望已过期
            case Some(_) => throw Exception("Expected None after expiration")
        }

        cache.stopJanitor()
    }

    // 测试缓存项过期功能 - 永不过期
    @TestCase
    public func testExpirationNever() {
        let cache = Cache<String>.create(
            defaultExpiration: Duration.millisecond,  // 1毫秒,但会设置为永不过期
            cleanupInterval: Duration.second
        )

        // 使用 Duration.millisecond 作为特殊值表示永不过期
        cache.set("key1", "value1", d: Duration.millisecond)

        // 等待10毫秒
        sleep(Duration.millisecond * 10)

        // 永不过期的项应该仍然存在
        match (cache.get("key1")) {
            case Some(value) => @Expect(value, "value1")
            case None => throw Exception("Expected value for never-expiring item")
        }

        cache.stopJanitor()
    }

    // 测试自动清理过期项
    @TestCase
    public func testDeleteExpired() {
        let cache = Cache<String>.create(
            defaultExpiration: Duration.millisecond * 200,  // 200毫秒过期
            cleanupInterval: Duration.millisecond  // 使用最小值表示基本不自动清理
        )

        cache.set("key1", "value1")
        cache.set("key2", "value2", d: Duration.millisecond * 500)  // 500毫秒过期

        @Expect(cache.itemCount(), 2)

        // 等待250毫秒,key1应该过期,key2应该还存活
        sleep(Duration.millisecond * 250)

        // 手动清理过期项
        cache.deleteExpired()

        // 现在应该只有key2
        @Expect(cache.itemCount(), 1)

        // 验证key1已过期
        match (cache.get("key1")) {
            case None => @Expect(true, true)
            case Some(_) => throw Exception("Expected key1 to be expired")
        }

        // 验证key2仍然存在
        match (cache.get("key2")) {
            case Some(value) => @Expect(value, "value2")
            case None => throw Exception("Expected key2 to still exist")
        }

        cache.stopJanitor()
    }

    // 测试获取过期时间和值
    @TestCase
    public func testGetWithExpiration() {
        let cache = Cache<String>.create(
            defaultExpiration: Duration.second * 5,
            cleanupInterval: Duration.second
        )

        cache.set("key1", "value1")

        let (valueOpt, expiration) = cache.getWithExpiration("key1")

        match (valueOpt) {
            case Some(value) => @Expect(value, "value1")
            case None => throw Exception("Expected value")
        }

        // 过期时间应该大于当前时间(未来时间)
        @Expect(expiration > 0, true)

        cache.stopJanitor()
    }

    // 测试获取所有缓存项及其过期时间
    @TestCase
    public func testGetAllItemsWithExpiration() {
        let cache = Cache<String>.create(
            defaultExpiration: Duration.second * 10,
            cleanupInterval: Duration.second
        )

        // 添加多个缓存项
        cache.set("key1", "value1")
        cache.set("key2", "value2")
        cache.set("key3", "value3", d: Duration.millisecond * 100)  // 短过期时间

        // 等待150毫秒,key3应该过期
        sleep(Duration.millisecond * 150)

        // 获取所有缓存项(应该只包含未过期的项)
        let items = cache.getAllItemsWithExpiration()

        // 验证只返回了未过期的项
        @Expect(items.size, 2)

        // 验证key1和key2存在
        if (let Some(item1) <- items.get("key1")) {
            @Expect(item1.object, "value1")
            @Expect(item1.expiration > 0, true)
        } else {
            throw Exception("Expected key1 to exist")
        }

        if (let Some(item2) <- items.get("key2")) {
            @Expect(item2.object, "value2")
            @Expect(item2.expiration > 0, true)
        } else {
            throw Exception("Expected key2 to exist")
        }

        // 验证key3已过期,不在结果中
        match (items.get("key3")) {
            case None => @Expect(true, true)
            case Some(_) => throw Exception("Expected key3 to be expired and not in result")
        }

        cache.stopJanitor()
    }

    // 测试从已有数据创建缓存
    @TestCase
    public func testCreateFrom() {
        // 创建原始缓存并添加数据
        let cache1 = Cache<String>.create(
            defaultExpiration: Duration.second,
            cleanupInterval: Duration.second
        )

        cache1.set("key1", "value1")
        cache1.set("key2", "value2")

        // 获取所有缓存项
        let items = cache1.getAllItems()

        // 将HashMap<String, T>转换为HashMap<String, CacheItem<T>>
        let cacheItems: HashMap<String, CacheItem<String>> = HashMap<String, CacheItem<String>>()
        for ((key, value) in items) {
            let (valueOpt, expiration) = cache1.getWithExpiration(key)
            if (let Some(v) <- valueOpt) {
                cacheItems[key] = CacheItem<String>(v, expiration)
            }
        }

        // 从已有数据创建新缓存
        let cache2 = Cache<String>.createFrom(
            cacheItems,
            Duration.second * 10,
            Duration.second
        )

        // 验证数据是否正确复制
        @Expect(cache2.itemCount(), 2)

        match (cache2.get("key1")) {
            case Some(value) => @Expect(value, "value1")
            case None => throw Exception("Expected key1")
        }

        match (cache2.get("key2")) {
            case Some(value) => @Expect(value, "value2")
            case None => throw Exception("Expected key2")
        }

        cache1.stopJanitor()
        cache2.stopJanitor()
    }
}
