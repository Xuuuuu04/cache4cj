package cache4cj

import std.time.*

/**
 * 时间工具模块
 * 提供时间戳相关的工具函数
 */

/**
 * 获取当前 Unix 时间戳(毫秒)
 * @return Int64 当前时间戳(毫秒)
 */
public func currentTimeMillis(): Int64 {
    let now = DateTime.nowUTC()
    let duration = now.toUnixTimeStamp()
    // Duration 转换为毫秒
    duration.toMilliseconds()
}

/**
 * 计算过期时间戳
 * @param durationFromNow 距离现在的时长
 * @return Int64 过期时间戳(毫秒),0 表示永不过期
 */
public func calculateExpiration(durationFromNow: Duration): Int64 {
    if (durationFromNow <= Duration.millisecond) {
        return 0  // 永不过期
    }
    let now = DateTime.nowUTC()
    let expirationTime = now + durationFromNow
    let duration = expirationTime.toUnixTimeStamp()
    duration.toMilliseconds()
}

/**
 * 格式化时间戳为可读字符串
 *
 * 示例:
 * ```cangjie
 * let timestamp = currentTimeMillis()
 * let formatted = formatTimestamp(timestamp, "yyyy-MM-dd HH:mm:ss")
 * println("当前时间: ${formatted}")
 * ```
 *
 * @param timestampMillis 毫秒时间戳
 * @param pattern 时间格式模式(默认: "yyyy-MM-dd HH:mm:ss")
 * @return String 格式化后的时间字符串
 */
public func formatTimestamp(timestampMillis: Int64, pattern!: String = "yyyy-MM-dd HH:mm:ss"): String {
    if (timestampMillis == 0) {
        return "永不过期"
    }

    let duration = Duration.millisecond * timestampMillis
    let dateTime = DateTime.fromUnixTimeStamp(duration)
    dateTime.format(pattern)
}

/**
 * 计算剩余时间(从当前时间到过期时间)
 *
 * 示例:
 * ```cangjie
 * let expiration = cache.getWithExpiration("key").(1)
 * let remaining = getRemainingTime(expiration)
 * if (remaining > 0) {
 *     println("剩余时间: ${remaining / 1000} 秒")
 * }
 * ```
 *
 * @param expirationMillis 过期时间戳(毫秒)
 * @return Int64 剩余毫秒数,0 表示已过期或永不过期
 */
public func getRemainingTime(expirationMillis: Int64): Int64 {
    if (expirationMillis == 0) {
        return 0  // 永不过期
    }

    let current = currentTimeMillis()
    let remaining = expirationMillis - current

    if (remaining > 0) {
        remaining
    } else {
        0  // 已过期
    }
}
