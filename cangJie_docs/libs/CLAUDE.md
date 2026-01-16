[根目录](../../CLAUDE.md) > [libs](../) > **libs**

# 仓颉标准库文档

## 变更记录 (Changelog)

- **2025-10-17 22:32:43** - 初始化标准库模块文档

## 模块职责

`libs` 模块提供仓颉编程语言标准库 (std) 的完整 API 参考文档，涵盖语言核心功能、基础数据结构、系统接口等所有标准库组件。

### 核心功能领域
- **核心类型系统**：基础数据类型、类型转换、内存管理
- **集合框架**：数组、列表、集合、映射等数据结构
- **I/O 系统**：文件操作、流处理、网络通信基础
- **并发支持**：线程、同步原语、协程调度
- **工具库**：算法、时间处理、国际化支持
- **测试框架**：单元测试、性能测试工具

## 入口与启动

### 主要入口文档
- **[仓颉标准库 API 概述](./std/std_module_overview.md)**：标准库总体介绍
- **[std.core](./std/core/core_package_overview.md)**：核心类型和基础功能

### 标准库结构
```
std/
├── core/                    # 核心类型和基础功能
│   ├── core_package_api/    # 核心 API 文档
│   └── core_samples/        # 核心功能示例
├── collection/              # 集合框架
├── io/                      # 输入输出
├── net/                     # 网络基础
├── time/                    # 时间处理
├── convert/                 # 类型转换
├── algorithm/               # 算法库
├── unittest/                # 单元测试
├── reflect/                 # 反射
├── annotation/              # 注解
└── ...                      # 其他标准库模块
```

## 对外接口

### 核心模块 API

#### std.core - 核心基础库
- **[核心类型](./std/core/core_package_api/)**：基础类型、类型别名、内置函数
- **[异常处理](./std/core/core_package_api/core_package_exceptions.md)**：标准异常类
- **[接口定义](./std/core/core_package_api/core_package_interfaces.md)**：基础接口
- **[核心示例](./std/core/core_samples/)**：并发编程、C 交互示例

#### 其他重要模块
- **std.collection**：集合数据结构实现
- **std.io**：输入输出流处理
- **std.net**：网络通信基础
- **std.time**：时间和日期处理
- **std.convert**：数据类型转换
- **std.algorithm**：常用算法实现

### API 文档标准格式
每个标准库模块包含：
- **包概述**：功能介绍和使用场景
- **API 参考**：详细的类、接口、函数文档
- **示例代码**：可运行的代码示例
- **类型说明**：类型定义和约束条件

## 关键依赖与配置

### 标准库特性
- **自动导入**：核心模块自动可用，无需显式导入
- **类型安全**：严格的类型检查和类型推断
- **内存安全**：自动内存管理，防止内存泄漏
- **异常安全**：完善的异常处理机制

### 编译配置
```cangjie
// 标准库使用示例
import std.collection.*        // 导入集合模块
import std.io.*               // 导入 I/O 模块
import std.unittest.*         // 导入测试框架

main() {
    // 标准库代码
}
```

## 数据模型

### 核心类型系统
- **基础类型**：Int64、Float64、String、Bool、Unit、Nothing
- **容器类型**：Array、List、Set、Map、Tuple
- **函数类型**：一等公民函数，支持闭包和高阶函数
- **自定义类型**：struct、class、enum、interface

### 标准接口
- **ToString**：字符串转换接口
- **Equatable**：相等性比较接口
- **Comparable**：排序比较接口
- **Iterable**：迭代器接口
- **Hashable**：哈希计算接口

### 异常体系
- **Exception**：异常基类
- **IOException**：I/O 相关异常
- **IndexOutOfBoundsException**：索引越界异常
- **RuntimeException**：运行时异常

## 测试与质量

### 测试框架
- **[std.unittest](./std/unittest/)**：官方单元测试框架
- **断言宏**：@Test、@TestCase、@Expect
- **测试运行器**：自动化测试执行
- **覆盖率统计**：代码覆盖率分析

### 质量保证
- **类型系统**：编译时类型检查
- **内存安全**：自动内存管理
- **并发安全**：线程安全的数据结构
- **异常安全**：RAII 和异常处理

## 常见问题 (FAQ)

### Q: 如何使用标准库的集合类型？
A: 参考 std.collection 模块文档，包含 ArrayList、HashSet、HashMap 等常用集合

### Q: 如何进行文件 I/O 操作？
A: 查看 std.io 模块，提供文件读写、流处理等 I/O 功能

### Q: 如何编写单元测试？
A: 使用 std.unittest 框架，参考测试示例和最佳实践

### Q: 标准库是否支持网络编程？
A: std.net 提供基础的网络功能，高级网络功能请使用 stdx.net

### Q: 如何处理异常？
A: 参考 std.core 中的异常类和异常处理最佳实践

## 相关文件清单

### 核心文档
- `std/std_module_overview.md` - 标准库概述
- `std/core/core_package_overview.md` - 核心模块介绍

### API 文档结构
每个模块的标准文档结构：
```
module_name/
├── module_package_overview.md      # 模块概述
├── module_package_api/            # API 文档
│   ├── module_package_classes.md   # 类文档
│   ├── module_package_interfaces.md # 接口文档
│   ├── module_package_structs.md   # 结构体文档
│   ├── module_package_enums.md     # 枚举文档
│   ├── module_package_exceptions.md # 异常文档
│   └── module_package_funcs.md     # 函数文档
└── module_samples/                # 示例代码
```

### 特色模块
- **[并发编程示例](./std/core/core_samples/core_spawn_sample.md)**：多线程编程
- **[C 语言交互示例](./std/core/core_samples/core_cstring_sample.md)**：FFI 使用
- **[算法库](./std/algorithm/)**：常用算法实现
- **[时间处理](./std/time/)**：日期时间操作

### 辅助文件
- `_structure.json` - 文档结构数据
- `_crawl_record.json` - 文档爬取记录
- `_failed_urls.json` - 失败的 URL 记录

## 与扩展库的关系

### 功能分工
- **标准库 (std)**：语言核心功能、基础数据结构、系统接口
- **扩展库 (stdx)**：专业领域功能、第三方协议集成、高级特性

### 使用建议
- 优先使用标准库功能
- 特殊需求时选择对应的扩展库模块
- 注意 std 和 stdx 的依赖关系和链接顺序

## 变更记录 (Changelog)

- **2025-10-17 22:32:43** - 初始化标准库模块文档，建立 API 参考框架

---

**开发指南**：标准库是仓颉编程语言的基础，建议开发者熟悉标准库的 API 设计模式和使用方法，这将大大提高开发效率和代码质量。