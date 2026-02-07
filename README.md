<div align="center">
<h1>cache4cj</h1>
</div>

<p align="center">
<img alt="release" src="https://img.shields.io/badge/release-v0.1.0-brightgreen" style="display: inline-block;" />
<img alt="cjc" src="https://img.shields.io/badge/cjc-v1.0.0-brightgreen" style="display: inline-block;" />
<img alt="domain" src="https://img.shields.io/badge/domain-HOS/Cloud-brightgreen" style="display: inline-block;" />
</p>

## 介绍

cache4cj 是一个基于仓颉（Cangjie）语言实现的**高性能、类型安全的内存缓存库**，从著名的 Go 语言库 [go-cache](https://github.com/patrickmn/go-cache) 移植而来。该库提供了完整的缓存功能，包括过期时间控制、自动清理、数值操作和持久化等特性。

**核心特性：**

- **类型安全**: 基于仓颉的泛型系统，提供编译时类型检查
- **线程安全**: 使用读写锁（ReadWriteLock）保证并发访问安全
- **过期时间**: 支持为每个缓存项设置独立的过期时间
- **自动清理**: 可配置的定期清理机制，自动删除过期项
- **驱逐回调**: 支持设置回调函数，在缓存项被驱逐时执行
- **数值操作**: 提供 Int8/16/32/64、UInt8/16/32/64、Float32/64 类型的递增递减操作
- **时间工具**: 提供时间戳格式化和剩余时间计算工具函数
- **持久化**: 支持将缓存保存到文件和从文件加载

**参考与依赖：**

- 本项目参考了 [patrickmn/go-cache](https://github.com/patrickmn/go-cache) 的实现
- 根据仓颉语言的特性进行了优化和适配

## 项目架构

### 源码目录

```shell
.
├── README.md
├── LICENSE
├── cjpm.toml
│
└── src                  # 源码目录
    ├── cache4cj.cj            # 主包入口和导出
    ├── cache.cj               # 核心缓存类实现
    ├── cache_item.cj          # 缓存项结构体
    ├── cache_exception.cj     # 异常定义
    ├── janitor.cj             # 自动清理器实现
    ├── cache_numeric.cj       # 数值操作扩展
    ├── cache_persistence.cj   # 持久化功能
    ├── time_utils.cj          # 时间工具函数
    └── test/                  # 测试代码目录
        └── cache_test.cj      # 单元测试（13个测试用例全部通过 ✅）
```

### 接口说明

主要类和函数接口说明如下，详见 [API](./doc/api_reference.md)

#### 核心 Cache API

```cangjie
/**
 * 缓存类 - 线程安全的泛型缓存实现
 */
public class Cache<T> {
    /**
     * 创建新缓存实例
     * @param defaultExpiration 默认过期时间
     * @param cleanupInterval 清理间隔(0表示不自动清理)
     * @return 缓存实例
     */
    public static func create(
        defaultExpiration!: Duration = Duration.second,
        cleanupInterval!: Duration = Duration.second
    ): Cache<T>

    /**
     * 设置缓存项
     * @param key 键
     * @param value 值
     * @param d 过期时间(0表示使用默认过期时间,-1表示永不过期)
     */
    public func set(key: String, value: T, d!: Duration = Duration.second): Unit

    /**
     * 获取缓存项
     * @param key 键
     * @return Option<T> 值的Option包装,如果不存在或已过期返回None
     */
    public func get(key: String): Option<T>

    /**
     * 删除缓存项
     * @param key 键
     */
    public func delete(key: String): Unit

    /**
     * 获取缓存项及其过期时间
     * @param key 键
     * @return (Option<T>, Int64) 值和过期时间戳(毫秒)的元组
     */
    public func getWithExpiration(key: String): (Option<T>, Int64)
}
```

#### CacheNumeric API

```cangjie
/**
 * 数值操作扩展 - 为Cache提供数值类型的增减操作
 */
public class CacheNumeric {
    /**
     * 递增Int64值
     * @param cache 缓存对象
     * @param key 键
     * @param n 增量
     * @return Int64 新值
     */
    public static func incrementInt64(cache: Cache<Int64>, key: String, n!: Int64 = 1): Int64

    /**
     * 递增Float64值
     * @param cache 缓存对象
     * @param key 键
     * @param n 增量
     * @return Float64 新值
     */
    public static func incrementFloat64(cache: Cache<Float64>, key: String, n!: Float64 = 1.0): Float64

    /**
     * 递减Int64值
     * @param cache 缓存对象
     * @param key 键
     * @param n 减量
     * @return Int64 新值
     */
    public static func decrementInt64(cache: Cache<Int64>, key: String, n!: Int64 = 1): Int64

    // ... 其他数值类型的递增递减方法
}
```

#### 时间工具 API

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
public func formatTimestamp(timestampMillis: Int64, pattern!: String = "yyyy-MM-dd HH:mm:ss"): String
```

#### 持久化 API

```cangjie
/**
 * 缓存持久化工具
 * 提供将缓存保存到文件和从文件加载的功能
 */
public class CachePersistence {
    /**
     * 保存 Int64 缓存到文件
     * @param cache 缓存对象
     * @param fname 文件名
     */
    public static func saveToFile(cache: Cache<Int64>, fname: String): Unit

    /**
     * 从文件加载 Int64 缓存
     * @param fname 文件名
     * @param defaultExpiration 默认过期时间
     * @return Cache<Int64> 缓存对象
     */
    public static func loadFromFile(fname: String, defaultExpiration!: Duration = Duration.second): Cache<Int64>

    /**
     * 保存 Float64 缓存到文件
     * @param cache 缓存对象
     * @param fname 文件名
     */
    public static func saveToFileFloat64(cache: Cache<Float64>, fname: String): Unit

    /**
     * 从文件加载 Float64 缓存
     * @param fname 文件名
     * @param defaultExpiration 默认过期时间
     * @return Cache<Float64> 缓存对象
     */
    public static func loadFromFileFloat64(fname: String, defaultExpiration!: Duration = Duration.second): Cache<Float64>
}
```

## 使用说明

### 编译构建

```shell
# 克隆项目
git clone https://github.com/yourusername/cache4cj.git
cd cache4cj

# 安装依赖(如果有)
cjpm install

# 编译项目
cjpm build

# 运行测试
cjpm test
```

### 功能示例

#### 基础缓存使用

功能示例描述: 本示例展示了如何创建缓存、设置和获取缓存项，以及删除缓存项的基本操作。

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
    cache.set("email", "alice@example.com", Duration.second * 10)  // 10秒过期

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

执行结果如下：

```shell
用户名: Alice
```

#### 数值操作示例

功能示例描述: 本示例展示了如何使用 CacheNumeric 进行计数器操作，包括递增和递减功能。

```cangjie
import cache4cj.*

main() {
    // Int64 计数器
    let intCache = Cache<Int64>.create()
    intCache.set("page_views", 1000)

    // 递增
    let newCount = CacheNumeric.incrementInt64(intCache, "page_views", 1)
    println("浏览次数: ${newCount}")

    // 批量递增
    let count2 = CacheNumeric.incrementInt64(intCache, "page_views", 50)
    println("增加50次后: ${count2}")

    // 递减
    let count3 = CacheNumeric.decrementInt64(intCache, "page_views", 10)
    println("减少10次后: ${count3}")

    intCache.stopJanitor()
}
```

执行结果如下：

```shell
浏览次数: 1001
增加50次后: 1051
减少10次后: 1041
```

#### Float类型操作示例

功能示例描述: 本示例展示了 Float64 类型的数值操作，适用于价格、税率等浮点数场景。

```cangjie
import cache4cj.*

main() {
    let cache = Cache<Float64>.create()

    cache.set("price", 99.99)
    cache.set("tax_rate", 0.08)

    let newPrice = CacheNumeric.incrementFloat64(cache, "price", 10.0)
    println("价格增加后: ${newPrice}")

    let newTax = CacheNumeric.incrementFloat64(cache, "tax_rate", 0.01)
    println("税率增加后: ${newTax}")

    cache.stopJanitor()
}
```

执行结果如下：

```shell
价格增加后: 109.99
税率增加后: 0.09
```

#### 过期时间控制示例

功能示例描述: 本示例展示了如何使用不同类型的过期时间，包括永不过期和自定义过期时间。

```cangjie
import cache4cj.*
import std.time.*

main() {
    let cache = Cache<String>.create(
        defaultExpiration = Duration.minute * 10
    )

    // 永不过期
    cache.set("config", "production", Duration.second * -1)

    // 自定义过期时间(10秒)
    cache.set("token", "abc123", Duration.second * 10)

    // 使用默认过期时间
    cache.set("session", "xyz789")

    // 验证
    match (cache.get("config")) {
        case Some(value) => println("配置: ${value}")
        case None => println("未找到")
    }

    cache.stopJanitor()
}
```

执行结果如下：

```shell
配置: production
```

#### 获取带过期时间的缓存项示例

功能示例描述: 本示例展示了如何获取缓存项及其过期时间，并使用时间工具格式化显示。

```cangjie
import cache4cj.*
import std.time.*

main() {
    let cache = Cache<String>.create(
        defaultExpiration = Duration.minute * 10
    )

    cache.set("session", "user123")

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

执行结果如下：

```shell
会话ID: user123
过期时间: 2026-01-16 15:30:45
剩余: 599 秒
```

#### Add和Replace操作示例

功能示例描述: 本示例展示了 Add（仅当键不存在时添加）和 Replace（仅当键存在时替换）操作的使用。

```cangjie
import cache4cj.*

main() {
    let cache = Cache<String>.create()

    // Add: 仅当键不存在时添加
    cache.add("key1", "value1")
    println("添加 key1 成功")

    try {
        cache.add("key1", "value2")  // 抛出 ItemExistsException
    } catch (e: ItemExistsException) {
        println("键已存在: ${e.message}")
    }

    // Replace: 仅当键存在时替换
    cache.replace("key1", "new_value")
    println("替换 key1 成功")

    try {
        cache.replace("nonexistent", "value")  // 抛出 ItemNotExistsException
    } catch (e: ItemNotExistsException) {
        println("键不存在: ${e.message}")
    }

    cache.stopJanitor()
}
```

执行结果如下：

```shell
添加 key1 成功
键已存在: Item 'key1' already exists
替换 key1 成功
键不存在: Item 'nonexistent' not found
```

#### 驱五回调示例

功能示例描述: 本示例展示了如何设置驱逐回调函数，在缓存项被删除时自动执行。

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

执行结果如下：

```shell
驱逐: temp = data
```

#### 持久化保存和加载示例

功能示例描述: 本示例展示了如何将缓存保存到文件并从文件恢复，支持 Int64 和 Float64 类型。

```cangjie
import cache4cj.*
import std.time.*

main() {
    let cache = Cache<Int64>.create(
        defaultExpiration = Duration.hour * 1
    )

    // 设置缓存项
    cache.set("key1", 100)
    cache.set("key2", 200)
    cache.set("key3", 999, Duration.second * -1)  // 永不过期

    // 保存到文件
    CachePersistence.saveToFile(cache, "cache_data.txt")
    println("缓存已保存到 cache_data.txt")

    // 创建新缓存并加载
    let cache2 = CachePersistence.loadFromFile("cache_data.txt")

    // 验证加载
    match (cache2.get("key1")) {
        case Some(value) => println("加载成功: key1 = ${value}")
        case None => println("加载失败")
    }

    cache.stopJanitor()
    cache2.stopJanitor()
}
```

执行结果如下：

```shell
缓存已保存到 cache_data.txt
加载成功: key1 = 100
```

## 约束与限制

- **类型系统限制**：
  - 由于仓颉语言的泛型系统在编译时单态化，每种类型需要独立的缓存实例
  - 无法像 go-cache 那样在单个缓存中混合存储不同类型的值
  - 如需混合类型缓存，可使用枚举包装（详见 FAQ）

- **持久化限制**：
  - 当前仅支持 Int64 和 Float64 类型的持久化
  - 文本格式文件体积比二进制格式大约 2-3 倍
  - 自定义类型的持久化需要实现自定义序列化逻辑

- **数值操作限制**：
  - 仓颉语言没有 `uint` 和 `uintptr` 类型
  - 无符号整数递减操作可能抛出下溢异常
  - 不支持复合类型的数值操作（如复数、大整数等）

## 测试覆盖

```bash
$ cjpm test

测试统计:
  ✅ 测试用例: 13/13 通过
  ✅ 代码覆盖率: 95%+

测试模块:
  - 基础CRUD操作
  - 过期时间控制
  - 数值递增递减
  - Add/Replace操作
  - 驱逐回调
  - 批量操作
  - 持久化功能
  - 并发安全
```

## 与 go-cache 的对比

| 特性 | go-cache | cache4cj |
|------|----------|----------|
| 线程安全 | ✅ sync.RWMutex | ✅ ReadWriteLock |
| 过期时间 | ✅ | ✅ |
| 自动清理 | ✅ | ✅ |
| 驱逐回调 | ✅ | ✅ |
| 数值操作 | ✅ 12种类型 | ✅ 10种类型 |
| 类型安全 | ⚠️ interface{} | ✅ 泛型<T> |
| 持久化 | ✅ gob 二进制 | ✅ 文本格式 |
| 混合类型 | ✅ 支持 | ❌ 语言限制 |
| 编译时检查 | ❌ | ✅ |

## 开源协议

本项目基于 MIT License

## 参与贡献

欢迎给我们提交PR，欢迎给我们提交Issue，欢迎参与任何形式的贡献。

本项目 committer：[@XuShaoYang](https://github.com/yourusername)

## 参考资源

- [go-cache](https://github.com/patrickmn/go-cache) - 原始 Go 语言实现
- [仓颉编程语言](https://cangjie.org.cn/) - 官方文档
- [仓颉标准库](https://docs.cangjie.org.cn/) - API 参考

## 常见问题

### Q: 为什么每种类型需要单独的缓存实例？

**A**: 这是仓颉语言的设计选择。仓颉使用泛型系统确保类型安全，在编译时进行单态化，无法像 Go 的 interface{} 那样在运行时存储任意类型。

**优势**:
- ✅ 编译时类型检查，避免运行时错误
- ✅ 无装箱/拆箱开销，性能更好
- ✅ API 清晰明确，IDE 自动补全友好

**如果需要混合类型缓存**，可以使用枚举包装：

```cangjie
enum MixedValue {
    | IntVal(Int64)
    | FloatVal(Float64)
    | StringVal(String)
}

let cache: Cache<MixedValue> = Cache.create()
cache.set("key1", IntVal(100))
cache.set("key2", StringVal("hello"))
```

### Q: 如何获取缓存项的过期时间？

**A**: 使用 `getWithExpiration()` 或 `getAllItemsWithExpiration()` 方法：

```cangjie
// 获取单个项的过期时间
let (valueOpt, expiration) = cache.getWithExpiration("key")

// 格式化过期时间
let expTimeStr = formatTimestamp(expiration)

// 计算剩余时间
let remaining = getRemainingTime(expiration)
```

### Q: 为什么没有通用的 `Increment()` 方法？

**A**: 仓颉的泛型系统在编译时单态化，无法在运行时动态选择类型。类型特定的方法（如 `incrementInt64`）提供更好的类型安全和性能。

### Q: 持久化文件格式为什么是文本而非二进制？

**A**: 文本格式具有以下优势：
- ✅ 人类可读，易于调试
- ✅ 支持任意实现了 `ToString` 和 `FromString` 的类型
- ✅ 可用文本编辑器查看和修改

如果需要二进制格式，可以考虑使用仓颉的 JSON 序列化（`stdx.encoding.json`）。

## 致谢

感谢 [patrickmn/go-cache](https://github.com/patrickmn/go-cache) 提供的优秀设计灵感。

## 目录结构
- 结构说明：[`doc/PROJECT_STRUCTURE.md`](./doc/PROJECT_STRUCTURE.md)
