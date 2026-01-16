[根目录](../../CLAUDE.md) > **libs_stdx**

# 仓颉扩展库 (stdx) 文档

## 变更记录 (Changelog)

- **2025-10-17 22:32:43** - 初始化扩展库模块文档

## 模块职责

`libs_stdx` 模块提供仓颉编程语言扩展库 (stdx) 的完整文档，涵盖以下功能领域：

- **加密安全**：国密 SM4、安全随机数、数字证书
- **数据编码**：Base64、Hex、JSON、URL 编码转换
- **网络通信**：HTTP/1.1、HTTP/2、WebSocket、TLS 安全传输
- **压缩处理**：zlib 压缩算法
- **日志系统**：结构化日志记录和输出
- **测试工具**：模糊测试引擎
- **编程范式**：面向切面编程支持

## 入口与启动

### 主要入口文档
- **[扩展库概述](./libs_overview.md)**：stdx 扩展库的总体介绍和使用指南
- **包依赖关系**：详细的包依赖和链接顺序说明
- **编译配置**：cjc 和 cjpm 的配置示例

### 核心包结构
```
stdx/
├── aspectCJ/           # 面向切面编程
├── compress/           # 压缩解压
│   └── zlib/          # zlib 压缩算法
├── crypto/            # 加密安全
│   ├── crypto/        # 核心加密功能
│   ├── digest/        # 消息摘要
│   ├── keys/          # 密钥管理
│   └── x509/          # 数字证书
├── encoding/          # 数据编码
│   ├── base64/        # Base64 编码
│   ├── hex/           # Hex 编码
│   ├── json/          # JSON 处理
│   ├── json_stream/   # JSON 流处理
│   └── url/           # URL 处理
├── fuzz/              # 模糊测试
├── log/               # 日志记录
├── logger/            # 日志输出
├── net/               # 网络通信
│   ├── http/          # HTTP 协议
│   └── tls/           # TLS 安全传输
├── serialization/     # 序列化
└── unittest/          # 单元测试扩展
```

## 对外接口

### 核心包 API

#### 加密安全包 (crypto)
- **[stdx.crypto.crypto](./crypto/crypto/crypto_package_overview.md)**：SM4 对称加密、安全随机数
- **[stdx.crypto.digest](./crypto/digest/crypto_digest_package_overview.md)**：消息摘要算法
- **[stdx.crypto.keys](./crypto/keys/keys_package_overview.md)**：非对称加密和签名
- **[stdx.crypto.x509](./crypto/x509/x509_package_overview.md)**：数字证书处理

#### 编码转换包 (encoding)
- **[stdx.encoding.base64](./encoding/base64/base64_package_overview.md)**：Base64 编码解码
- **[stdx.encoding.hex](./encoding/hex/hex_package_overview.md)**：Hex 编码解码
- **[stdx.encoding.json](./encoding/json/json_package_overview.md)**：JSON 数据处理
- **[stdx.encoding.json_stream](./encoding/json_stream/json_stream_package_overview.md)**：JSON 流处理
- **[stdx.encoding.url](./encoding/url/url_package_overview.md)**：URL 解析和处理

#### 网络通信包 (net)
- **[stdx.net.http](./net/http/http_package_overview.md)**：HTTP/1.1、HTTP/2、WebSocket
- **[stdx.net.tls](./net/tls/tls_package_overview.md)**：TLS 安全传输

#### 其他功能包
- **[stdx.compress.zlib](./compress/zlib/zlib_package_overview.md)**：zlib 压缩解压
- **[stdx.fuzz](./fuzz/fuzz_package_overview.md)**：模糊测试引擎
- **[stdx.log](./log/log_package_overview.md)**：日志记录功能
- **[stdx.logger](./logger/logger_package_overview.md)**：日志输出功能

## 关键依赖与配置

### 外部依赖
- **OpenSSL 3**：crypto 和 net 模块的必需依赖
  - Linux: `libssl-dev` 或自行编译安装
  - Windows: 需要预编译的 OpenSSL 3 库文件
  - macOS: `brew install openssl@3`

### 编译配置
```bash
# 设置扩展库路径
export CANGJIE_STDX_PATH=/path/to/stdx

# Linux/macOS 编译示例
cjc main.cj -L $CANGJIE_STDX_PATH -lstdx.crypto.crypto -ldl

# Windows 编译示例
cjc main.cj -L %CANGJIE_STDX_PATH% -lstdx.crypto.crypto -lcrypt32
```

### 包依赖顺序
严格的包链接顺序要求，详见 [扩展库概述](./libs_overview.md#包依赖)

## 数据模型

### 核心数据结构
- **JsonValue**：JSON 数据的统一表示
- **HttpRequest/HttpResponse**：HTTP 请求响应模型
- **SecureRandom**：安全随机数生成器
- **X509Certificate**：数字证书表示
- **WebSocket**：WebSocket 连接管理

### 配置模型
- **TlsClientConfig/TlsServerConfig**：TLS 配置
- **ClientBuilder/ServerBuilder**：HTTP 客户端服务器构建器
- **OperationMode/PaddingMode**：加密算法配置

## 测试与质量

### 测试覆盖
- **单元测试**：每个包包含完整的测试用例
- **示例代码**：可编译运行的代码示例
- **集成测试**：跨包的功能集成测试

### 代码质量
- **类型安全**：严格的类型系统
- **异常处理**：完善的错误处理机制
- **性能优化**：高效的算法实现

## 常见问题 (FAQ)

### Q: 如何使用加密功能？
A: 参考 [crypto 包文档](./crypto/crypto/crypto_package_overview.md) 和 [SM4 使用示例](./crypto/crypto/crypto_samples/sample_crypto.md)

### Q: HTTP 客户端如何配置 TLS？
A: 查看 [HTTP 客户端示例](./net/http/http_samples/http_client.md) 中的自定义网络配置部分

### Q: JSON 数据如何与仓颉对象转换？
A: 参考 [JSON 包文档](./encoding/json/json_package_overview.md) 中的 DataModel 转换说明

### Q: 如何处理 OpenSSL 依赖问题？
A: 查看各包概述中的 OpenSSL 安装说明，确保安装正确版本的 OpenSSL 3

## 相关文件清单

### 概览文档
- `libs_overview.md` - 扩展库总体介绍
- `summary_cjnative.md` - CJNative 实现总结

### API 文档结构
每个包包含以下标准文档：
- `*_package_overview.md` - 包概述和功能介绍
- `*_package_api/` - API 详细文档
  - `*_package_classes.md` - 类文档
  - `*_package_interfaces.md` - 接口文档
  - `*_package_structs.md` - 结构体文档
  - `*_package_enums.md` - 枚举文档
  - `*_package_exceptions.md` - 异常文档
- `*_samples/` - 示例代码

### 特殊模块
- **aspectCJ**：面向切面编程支持
- **serialization**：序列化反序列化功能
- **unittest.data**：单元测试扩展功能

## 变更记录 (Changelog)

- **2025-10-17 22:32:43** - 初始化扩展库模块文档，完成核心包结构分析

---

**注意**：使用扩展库前请确保正确安装 OpenSSL 3 依赖，并严格按照包依赖顺序进行链接。