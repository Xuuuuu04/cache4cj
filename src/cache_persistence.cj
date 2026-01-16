package cache4cj

import std.fs.*
import std.collection.*
import std.convert.*
import std.sync.*

/**
 * 缓存持久化工具
 * 提供将缓存保存到文件和从文件加载的功能
 *
 * 注意：此功能仅支持基础数值类型(Int64, Float64)的缓存
 * 泛型缓存的持久化需要更复杂的序列化方案
 */
public class CachePersistence {
    /**
     * 保存 Int64 缓存到文件
     * @param cache 缓存对象
     * @param fname 文件名
     * @throws CacheException 文件操作失败
     */
    public static func saveToFile(cache: Cache<Int64>, fname: String): Unit {
        synchronized(cache.lock.readLock) {
            // 构建文件内容
            var content = "# cache4cj persistence file\n"
            content += "# version: 1.0\n"
            content += "# format: key|expiration|value\n"
            content += "\n"

            // 写入缓存项
            for ((key, item) in cache.items) {
                // 跳过已过期的项
                if (item.expired()) {
                    continue
                }

                content += "${key}|${item.expiration}|${item.object}\n"
            }

            // 写入文件
            try {
                File.writeTo(fname, content.toArray())
            } catch (e: Exception) {
                throw CacheException("Failed to save cache to ${fname}: ${e.message}")
            }
        }
    }

    /**
     * 保存 Float64 缓存到文件
     * @param cache 缓存对象
     * @param fname 文件名
     * @throws CacheException 文件操作失败
     */
    public static func saveToFileFloat64(cache: Cache<Float64>, fname: String): Unit {
        synchronized(cache.lock.readLock) {
            // 构建文件内容
            var content = "# cache4cj persistence file\n"
            content += "# version: 1.0\n"
            content += "# format: key|expiration|value\n"
            content += "\n"

            // 写入缓存项
            for ((key, item) in cache.items) {
                // 跳过已过期的项
                if (item.expired()) {
                    continue
                }

                content += "${key}|${item.expiration}|${item.object}\n"
            }

            // 写入文件
            try {
                File.writeTo(fname, content.toArray())
            } catch (e: Exception) {
                throw CacheException("Failed to save cache to ${fname}: ${e.message}")
            }
        }
    }

    /**
     * 从文件加载 Int64 缓存
     * @param fname 文件名
     * @param defaultExpiration 默认过期时间
     * @return Cache<Int64> 缓存对象
     * @throws CacheException 文件操作失败或格式错误
     */
    public static func loadFromFile(fname: String, defaultExpiration!: Duration = Duration.second): Cache<Int64> {
        if (!exists(fname)) {
            throw CacheException("File not found: ${fname}")
        }

        // 读取文件内容
        let content = File.readFrom(fname)
        let text = String.fromUtf8(content)

        var items = HashMap<String, CacheItem<Int64>>()
        var lineNum = 0

        // 按行分割
        let lines = text.split("\n")

        for (line in lines) {
            lineNum++

            // 跳过空行和注释行
            if (line.size == 0 || line.startsWith("#")) {
                continue
            }

            // 解析行：key|expiration|value
            let parts = line.split("|")
            if (parts.size != 3) {
                continue
            }

            let key = parts[0]
            let expStr = parts[1]
            let valueStr = parts[2]

            // 解析过期时间
            let exp = try {
                Int64.parse(expStr)
            } catch (e: Exception) {
                throw CacheException("Invalid expiration at line ${lineNum}: ${expStr}")
            }

            // 解析值
            let value = try {
                Int64.parse(valueStr)
            } catch (e: Exception) {
                throw CacheException("Invalid value at line ${lineNum}: ${valueStr}")
            }

            // 添加到缓存项
            items[key] = CacheItem<Int64>(value, exp)
        }

        // 从已加载的数据创建缓存
        return Cache<Int64>.createFrom(items, defaultExpiration, Duration.millisecond)
    }

    /**
     * 从文件加载 Float64 缓存
     * @param fname 文件名
     * @param defaultExpiration 默认过期时间
     * @return Cache<Float64> 缓存对象
     * @throws CacheException 文件操作失败或格式错误
     */
    public static func loadFromFileFloat64(fname: String, defaultExpiration!: Duration = Duration.second): Cache<Float64> {
        if (!exists(fname)) {
            throw CacheException("File not found: ${fname}")
        }

        // 读取文件内容
        let content = File.readFrom(fname)
        let text = String.fromUtf8(content)

        var items = HashMap<String, CacheItem<Float64>>()
        var lineNum = 0

        // 按行分割
        let lines = text.split("\n")

        for (line in lines) {
            lineNum++

            // 跳过空行和注释行
            if (line.size == 0 || line.startsWith("#")) {
                continue
            }

            // 解析行：key|expiration|value
            let parts = line.split("|")
            if (parts.size != 3) {
                continue
            }

            let key = parts[0]
            let expStr = parts[1]
            let valueStr = parts[2]

            // 解析过期时间
            let exp = try {
                Int64.parse(expStr)
            } catch (e: Exception) {
                throw CacheException("Invalid expiration at line ${lineNum}: ${expStr}")
            }

            // 解析值
            let value = try {
                Float64.parse(valueStr)
            } catch (e: Exception) {
                throw CacheException("Invalid value at line ${lineNum}: ${valueStr}")
            }

            // 添加到缓存项
            items[key] = CacheItem<Float64>(value, exp)
        }

        // 从已加载的数据创建缓存
        return Cache<Float64>.createFrom(items, defaultExpiration, Duration.millisecond)
    }
}
