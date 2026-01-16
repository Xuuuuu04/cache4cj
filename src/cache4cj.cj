package cache4cj

/**
 * cache4cj - 高性能仓颉内存缓存库
 *
 * 功能特性:
 * - 线程安全的缓存操作
 * - 支持过期时间设置
 * - 自动清理过期项
 * - 驱逐回调机制
 * - 数值类型增减操作
 *
 * 使用示例:
 * ```
 * import cache4cj.*
 *
 * main() {
 *     // 创建缓存,默认5分钟过期,每1分钟清理一次
 *     let cache = Cache<String>.create(
 *         defaultExpiration = Duration.minute * 5,
 *         cleanupInterval = Duration.minute * 1
 *     )
 *
 *     // 设置缓存项
 *     cache.set("key1", "value1")
 *
 *     // 获取缓存项
 *     if (let Some(value) <- cache.get("key1")) {
 *         println("Got: ${value}")
 *     }
 *
 *     // 删除缓存项
 *     cache.delete("key1")
 *
 *     // 停止清理器
 *     cache.stopJanitor()
 * }
 * ```
 */

// 导出核心类和异常类型
// 所有类已在各自文件中声明为 public,无需重复导入
