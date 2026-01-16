import cache4cj.*
import std.time.*

/**
 * 基础使用示例
 * 演示cache4cj的核心功能
 */
main() {
    println("=== cache4cj 基础使用示例 ===\n")

    // ==================== 示例1: 基本使用 ====================
    println("【示例1】基本使用 - 设置和获取")
    {
        let cache = Cache<String>.create(
            defaultExpiration = Duration.minute * 5,
            cleanupInterval = Duration.minute * 1
        )

        // 设置缓存
        cache.set("username", "Alice")
        cache.set("email", "alice@example.com")

        // 获取缓存
        match (cache.get("username")) {
            case Some(value) => println("  用户名: ${value}")
            case None => println("  未找到用户名")
        }

        // 检查键是否存在
        match (cache.get("nonexistent")) {
            case Some(_) => println("  找到了")
            case None => println("  键不存在")
        }

        cache.stopJanitor()
    }
    println()

    // ==================== 示例2: 过期时间 ====================
    println("【示例2】过期时间控制")
    {
        let cache = Cache<String>.create()

        // 永不过期
        cache.set("config", "production", Duration.second * -1)

        // 自定义过期时间(10秒)
        cache.set("token", "abc123", Duration.second * 10)

        // 使用默认过期时间(5分钟)
        cache.set("session", "xyz789", Duration.minute * 5)

        println("  已设置三个不同过期时间的缓存项")

        cache.stopJanitor()
    }
    println()

    // ==================== 示例3: 数值操作 ====================
    println("【示例3】数值类型递增递减")
    {
        let cache = Cache<Int64>.create()

        // 设置计数器
        cache.set("page_views", 1000)

        // 递增
        let newCount = CacheNumeric.incrementInt64(cache, "page_views", 1)
        println("  浏览次数: ${newCount}")

        // 批量递增
        let count2 = CacheNumeric.incrementInt64(cache, "page_views", 50)
        println("  增加50次后: ${count2}")

        // 递减
        let count3 = CacheNumeric.decrementInt64(cache, "page_views", 10)
        println("  减少10次后: ${count3}")

        cache.stopJanitor()
    }
    println()

    // ==================== 示例4: Add和Replace ====================
    println("【示例4】Add和Replace操作")
    {
        let cache = Cache<String>.create()

        // Add: 仅当键不存在时添加
        cache.add("key1", "value1")
        println("  已添加 key1")

        try {
            cache.add("key1", "value2")  // 会抛出异常
        } catch (e: ItemExistsException) {
            println("  key1已存在,无法添加")
        }

        // Replace: 仅当键存在时替换
        cache.replace("key1", "new_value")
        println("  已替换 key1 的值")

        try {
            cache.replace("nonexistent", "value")  // 会抛出异常
        } catch (e: ItemNotExistsException) {
            println("  键不存在,无法替换")
        }

        cache.stopJanitor()
    }
    println()

    // ==================== 示例5: 驱逐回调 ====================
    println("【示例5】驱逐回调机制")
    {
        let cache = Cache<String>.create()
        var evictedCount = 0

        // 设置驱逐回调
        cache.setOnEvicted({ (key: String, value: String) =>
            evictedCount++
            println("  驱逐: ${key} = ${value}")
        })

        cache.set("temp1", "data1")
        cache.set("temp2", "data2")

        cache.delete("temp1")
        cache.delete("temp2")

        println("  总共驱逐了 ${evictedCount} 个项")

        cache.stopJanitor()
    }
    println()

    // ==================== 示例6: 批量操作 ====================
    println("【示例6】批量操作")
    {
        let cache = Cache<String>.create()

        // 批量设置
        let keys = ["key1", "key2", "key3", "key4", "key5"]
        for (key in keys) {
            cache.set(key, "value_${key}")
        }
        println("  已设置 ${keys.size} 个缓存项")
        println("  缓存项总数: ${cache.itemCount()}")

        // 获取所有项
        let allItems = cache.items()
        println("  未过期项数: ${allItems.size}")

        // 清空
        cache.flush()
        println("  清空后项数: ${cache.itemCount()}")

        cache.stopJanitor()
    }
    println()

    // ==================== 示例7: Float类型操作 ====================
    println("【示例7】浮点数操作")
    {
        let cache = Cache<Float64>.create()

        cache.set("price", 99.99)
        cache.set("tax_rate", 0.08)

        let newPrice = CacheNumeric.incrementFloat64(cache, "price", 10.0)
        println("  价格增加后: ${newPrice}")

        let newTax = CacheNumeric.incrementFloat64(cache, "tax_rate", 0.01)
        println("  税率增加后: ${newTax}")

        cache.stopJanitor()
    }
    println()

    // ==================== 示例8: 获取过期时间 ====================
    println("【示例8】获取带过期时间的缓存项")
    {
        let cache = Cache<String>.create(
            defaultExpiration = Duration.minute * 10
        )

        cache.set("session", "user123")

        let (valueOpt, expiration) = cache.getWithExpiration("session")

        match (valueOpt) {
            case Some(value) => {
                println("  会话ID: ${value}")
                if (expiration > 0) {
                    // 将纳秒转换为毫秒
                    let expMs = expiration / 1000000
                    println("  过期时间戳: ${expMs}")
                } else {
                    println("  永不过期")
                }
            }
            case None => println("  会话不存在")
        }

        cache.stopJanitor()
    }
    println()

    println("=== 示例演示完成 ===")
}
