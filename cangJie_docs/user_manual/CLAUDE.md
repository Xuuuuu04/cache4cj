[根目录](../../CLAUDE.md) > [user_manual](../) > **user_manual**

# 仓颉编程语言用户手册

## 变更记录 (Changelog)

- **2025-10-17 22:32:43** - 初始化用户手册模块文档

## 模块职责

`user_manual` 模块提供仓颉编程语言的完整学习指南，从入门基础到高级特性，帮助开发者系统性地掌握仓颉编程语言。

### 学习路径
1. **初识仓颉** - 语言介绍和环境搭建
2. **基础语法** - 数据类型、函数、控制流
3. **面向对象** - 类、接口、泛型
4. **高级特性** - 并发、宏、反射
5. **实践应用** - 网络编程、I/O 处理
6. **工具使用** - 编译构建、部署运行

## 入口与启动

### 学习起点
- **[起始页](./index.md)** - 用户手册的导航入口
- **[初识仓颉语言](./first_understanding/basic.md)** - 语言概述和特点介绍
- **[安装仓颉工具链](./first_understanding/install_Community.md)** - 开发环境搭建

### 基础学习路径
```
基础学习流程：
安装环境 → Hello World → 基础语法 → 函数编程 → 面向对象 → 高级特性 → 实践应用
```

## 对外接口

### 核心学习模块

#### 基础概念
- **[基本数据类型](./basic_data_type/)**：Unit、整数、浮点、字符串、布尔、字符等
- **[基础编程概念](./basic_programming_concepts/)**：标识符、表达式、程序结构
- **[函数](./function/)**：函数定义、调用、重载、闭包、Lambda 表达式

#### 面向对象编程
- **[结构体](./struct/)**：struct 定义、实例创建、mut 函数
- **[类和接口](./class_and_interface/)**：类定义、接口、属性、子类型关系
- **[枚举和模式匹配](./enum_and_pattern_match/)**：枚举类型、match 表达式、模式

#### 高级特性
- **[泛型](./generic/)**：泛型函数、类、接口、约束
- **[扩展](./extension/)**：直接扩展、接口扩展、访问规则
- **[集合类型](./collections/)**：ArrayList、HashSet、HashMap、Iterable

#### 系统编程
- **[并发编程](./concurrency/)**：线程创建、同步机制、sleep
- **[基础 I/O](./Basic_IO/)**：I/O 流概述、节点流、处理流
- **[网络编程](./Net/)**：网络概述、Socket、HTTP、WebSocket

#### 元编程
- **[宏](./Macro/)**：宏简介、Tokens、语法节点、实现、编译调试
- **[反射和注解](./reflect_and_annotation/)**：注解、动态特性

#### 工程实践
- **[编译构建](./compile_and_build/)**：cjc 使用、cjpm 介绍、条件编译
- **[错误处理](./error_handle/)**：异常定义、处理、Option 类型
- **[部署运行](./deploy_and_run/)**：运行程序、部署运行时

#### 外部接口
- **[仓颉-C 互操作](./FFI/cangjie-c.md)**：与 C 语言的交互

#### 参考资料
- **[附录](./Appendix/)**：操作符、关键字、编译选项、工具链安装等

## 关键依赖与配置

### 开发环境要求
- **操作系统**：Linux、Windows、macOS
- **编译器**：仓颉编译器 (cjc)
- **包管理器**：仓颉包管理器 (cjpm)
- **运行时**：仓颉运行时环境

### 工具链配置
```bash
# 验证编译器安装
cjc --version

# 设置环境变量
export CANGJIE_HOME=/path/to/cangjie
export PATH=$CANGJIE_HOME/bin:$PATH
```

## 数据模型

### 语言概念模型
- **类型系统**：强类型、类型推断、泛型支持
- **内存管理**：自动内存管理、值类型与引用类型
- **并发模型**：线程安全、协程支持
- **模块系统**：包管理、导入导出、访问控制

### 学习进度跟踪
- **基础知识**：数据类型、函数、控制流
- **面向对象**：类、接口、继承、多态
- **高级特性**：泛型、宏、反射
- **实践应用**：网络、I/O、并发

## 测试与质量

### 代码示例分类
- **可编译示例**：标记为 `<!-- compile -->`
- **可运行示例**：标记为 `<!-- verify -->`
- **概念演示**：纯语法展示

### 学习质量保证
- **渐进式学习**：从简单到复杂的知识体系
- **实践导向**：每个概念都配有代码示例
- **完整性**：覆盖语言的所有主要特性

## 常见问题 (FAQ)

### Q: 如何开始学习仓颉编程语言？
A: 从 [安装工具链](./first_understanding/install_Community.md) 开始，然后运行 [Hello World](./first_understanding/hello_world.md) 程序

### Q: 仓颉语言的主要特点是什么？
A: 参考 [初识仓颉语言](./first_understanding/basic.md) 了解语言特性和设计理念

### Q: 如何进行网络编程？
A: 查看 [网络编程概述](./Net/net_overview.md) 和 [HTTP 编程](./Net/net_http.html) 章节

### Q: 如何使用宏进行元编程？
A: 从 [宏的简介](./Macro/macro_introduction.md) 开始学习，逐步掌握高级特性

### Q: 如何与 C 语言进行交互？
A: 参考 [仓颉-C 互操作](./FFI/cangjie-c.md) 了解 FFI 使用方法

## 相关文件清单

### 目录结构
```
user_manual/
├── first_understanding/     # 初识仓颉
├── basic_data_type/        # 基础数据类型
├── basic_programming_concepts/  # 基础编程概念
├── function/               # 函数相关
├── struct/                 # 结构体
├── class_and_interface/    # 类和接口
├── enum_and_pattern_match/ # 枚举和模式匹配
├── generic/                # 泛型
├── extension/              # 扩展
├── collections/            # 集合类型
├── package/                # 包管理
├── error_handle/           # 错误处理
├── concurrency/            # 并发编程
├── Basic_IO/               # 基础 I/O
├── Net/                    # 网络编程
├── Macro/                  # 宏编程
├── reflect_and_annotation/ # 反射和注解
├── compile_and_build/      # 编译构建
├── deploy_and_run/         # 部署运行
├── FFI/                    # 外部函数接口
└── Appendix/               # 附录
```

### 导航文件
- `index.md` - 主导航页面
- `_structure.json` - 文档结构数据
- `_crawl_record.json` - 文档爬取记录
- `_failed_urls.json` - 失败的 URL 记录

### 特色章节
- **[函数类型和闭包](./function/first_class_citizen.html)** - 函数式编程特性
- **[并发编程](./concurrency/concurrency_overview.html)** - 多线程和同步
- **[宏编程](./Macro/macro_introduction.html)** - 元编程能力
- **[网络编程](./Net/net_overview.html)** - 实用的网络应用开发

## 变更记录 (Changelog)

- **2025-10-17 22:32:43** - 初始化用户手册模块文档，建立完整的学习路径导航

---

**学习建议**：建议按照文档结构顺序学习，每个章节都包含可运行的代码示例，边学边实践能更好地掌握仓颉编程语言。