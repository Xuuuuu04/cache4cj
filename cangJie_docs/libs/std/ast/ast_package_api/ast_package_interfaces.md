> 接口，支持判等操作。# 接口

## interface ToBytes
    
    public interface ToBytes {
        func toBytes(): Array<UInt8>
    }
    

功能：提供对应类型的序列化功能。

### func toBytes()
    
    func toBytes(): Array<UInt8>
    

功能：提供对应类型的序列化功能。

返回值：

            * [Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)> - 序列化后的字节序列。

## interface ToTokens
    
    public interface ToTokens {
        func toTokens(): Tokens
    }
    

功能：实现对应类型的实例到 [Tokens](ast_package_classes.html#class-tokens) 类型转换的接口，作为支持 `quote` 插值操作必须实现的接口。

### func toTokens()
    
    func toTokens(): Tokens
    

功能：实现对应类型的实例到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

返回值：

            * [Tokens](ast_package_classes.html#class-tokens) - 转换后的 [Tokens](ast_package_classes.html#class-tokens)。

### extend Array <: ToTokens
    
    extend<T> Array<T> <: ToTokens
    

功能：实现 [Array](../../core/core_package_api/core_package_structs.html#struct-arrayt) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

父类型：

            * ToTokens

#### func toTokens()
    
    public func toTokens(): Tokens
    

功能：实现 [Array](../../core/core_package_api/core_package_structs.html#struct-arrayt) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换，仅支持数值类型、[Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 类型、[Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 类型、[String](../../core/core_package_api/core_package_structs.html#struct-string) 类型。

返回值：

            * [Tokens](ast_package_classes.html#class-tokens) - 转换后的 [Tokens](ast_package_classes.html#class-tokens)。

### extend ArrayList <: ToTokens
    
    extend<T> ArrayList<T> <: ToTokens
    

功能：实现 [ArrayList](../../collection/collection_package_api/collection_package_class.html#class-arraylistt) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

父类型：

            * ToTokens

#### func toTokens()
    
    public func toTokens(): Tokens
    

功能：实现 [ArrayList](../../collection/collection_package_api/collection_package_class.html#class-arraylistt) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换，目前支持的类型有 [Decl](ast_package_classes.html#class-decl)、[Node](ast_package_classes.html#class-node)、[Constructor](ast_package_classes.html#class-constructor)、[Argument](ast_package_classes.html#class-argument)、[FuncParam](ast_package_classes.html#class-funcparam)、[MatchCase](ast_package_classes.html#class-matchcase)、[Modifier](ast_package_classes.html#class-modifier)、[Annotation](ast_package_classes.html#class-annotation)、[ImportList](ast_package_classes.html#class-importlist)、[Pattern](ast_package_classes.html#class-pattern)、[TypeNode](ast_package_classes.html#class-typenode) 等。

返回值：

            * [Tokens](ast_package_classes.html#class-tokens) - 转换后的 [Tokens](ast_package_classes.html#class-tokens)。

### extend Bool <: ToTokens
    
    extend Bool <: ToTokens
    

功能：实现 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

父类型：

            * ToTokens

#### func toTokens()
    
    public func toTokens(): Tokens
    

功能：实现 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

返回值：

            * [Tokens](ast_package_classes.html#class-tokens) - 转换后的 [Tokens](ast_package_classes.html#class-tokens)。

### extend Float16 <: ToTokens
    
    extend Float16 <: ToTokens
    

功能：实现 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

父类型：

            * ToTokens

#### func toTokens()
    
    public func toTokens(): Tokens
    

功能：实现 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

返回值：

            * [Tokens](ast_package_classes.html#class-tokens) - 转换后的 [Tokens](ast_package_classes.html#class-tokens)。

### extend Float32 <: ToTokens
    
    extend Float32 <: ToTokens
    

功能：实现 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

父类型：

            * ToTokens

#### func toTokens()
    
    public func toTokens(): Tokens
    

功能：实现 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

返回值：

            * [Tokens](ast_package_classes.html#class-tokens) - 转换后的 [Tokens](ast_package_classes.html#class-tokens)。

### extend Float64 <: ToTokens
    
    extend Float64 <: ToTokens
    

功能：实现 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

父类型：

            * ToTokens

#### func toTokens()
    
    public func toTokens(): Tokens
    

功能：实现 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

返回值：

            * [Tokens](ast_package_classes.html#class-tokens) - 转换后的 [Tokens](ast_package_classes.html#class-tokens)。

### extend Int16 <: ToTokens
    
    extend Int16 <: ToTokens
    

功能：实现 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

父类型：

            * ToTokens

#### func toTokens()
    
    public func toTokens(): Tokens
    

功能：实现 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

返回值：

            * [Tokens](ast_package_classes.html#class-tokens) - 转换后的 [Tokens](ast_package_classes.html#class-tokens)。

### extend Int32 <: ToTokens
    
    extend Int32 <: ToTokens
    

功能：实现 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

父类型：

            * ToTokens

#### func toTokens()
    
    public func toTokens(): Tokens
    

功能：实现 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

返回值：

            * [Tokens](ast_package_classes.html#class-tokens) - 转换后的 [Tokens](ast_package_classes.html#class-tokens)。

### extend Int64 <: ToTokens
    
    extend Int64 <: ToTokens
    

功能：实现 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

父类型：

            * ToTokens

#### func toTokens()
    
    public func toTokens(): Tokens
    

功能：实现 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

返回值：

            * [Tokens](ast_package_classes.html#class-tokens) - 转换后的 [Tokens](ast_package_classes.html#class-tokens)。

### extend Int8 <: ToTokens
    
    extend Int8 <: ToTokens
    

功能：实现 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

父类型：

            * ToTokens

#### func toTokens()
    
    public func toTokens(): Tokens
    

功能：实现 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

返回值：

            * [Tokens](ast_package_classes.html#class-tokens) - 转换后的 [Tokens](ast_package_classes.html#class-tokens)。

### extend Rune <: ToTokens
    
    extend Rune <: ToTokens
    

功能：实现 [Rune](../../../std/core/core_package_api/core_package_intrinsics.html#rune) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

父类型：

            * ToTokens

#### func toTokens()
    
    public func toTokens(): Tokens
    

功能：实现 [Rune](../../../std/core/core_package_api/core_package_intrinsics.html#rune) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

返回值：

            * [Tokens](ast_package_classes.html#class-tokens) - 转换后的 [Tokens](ast_package_classes.html#class-tokens)。

### extend String <: ToTokens
    
    extend String <: ToTokens
    

功能：实现 [String](../../core/core_package_api/core_package_structs.html#struct-string) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

父类型：

            * ToTokens

#### func toTokens()
    
    public func toTokens(): Tokens
    

功能：实现 [String](../../core/core_package_api/core_package_structs.html#struct-string) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

返回值：

            * [Tokens](ast_package_classes.html#class-tokens) - 转换后的 [Tokens](ast_package_classes.html#class-tokens)。

### extend Token <: ToTokens
    
    extend Token <: ToTokens
    

功能：实现 [Token](ast_package_structs.html#struct-token) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

父类型：

            * ToTokens

#### func toTokens()
    
    public func toTokens(): Tokens
    

功能：实现 [Token](ast_package_structs.html#struct-token) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

返回值：

            * [Tokens](ast_package_classes.html#class-tokens) - 转换后的 [Tokens](ast_package_classes.html#class-tokens)。

### extend Tokens <: ToTokens
    
    extend Tokens <: ToTokens
    

功能：实现 [Tokens](ast_package_classes.html#class-tokens) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

父类型：

            * ToTokens

#### func toTokens()
    
    public func toTokens(): Tokens
    

功能：实现 [Tokens](ast_package_classes.html#class-tokens) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

返回值：

            * [Tokens](ast_package_classes.html#class-tokens) - 转换后的 [Tokens](ast_package_classes.html#class-tokens)。

### extend UInt16 <: ToTokens
    
    extend UInt16 <: ToTokens
    

功能：实现 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

父类型：

            * ToTokens

#### func toTokens()
    
    public func toTokens(): Tokens
    

功能：实现 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

返回值：

            * [Tokens](ast_package_classes.html#class-tokens) - 转换后的 [Tokens](ast_package_classes.html#class-tokens)。

### extend UInt32 <: ToTokens
    
    extend UInt32 <: ToTokens
    

功能：实现 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

父类型：

            * ToTokens

#### func toTokens()
    
    public func toTokens(): Tokens
    

功能：实现 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

返回值：

            * [Tokens](ast_package_classes.html#class-tokens) - 转换后的 [Tokens](ast_package_classes.html#class-tokens)。

### extend UInt64 <: ToTokens
    
    extend UInt64 <: ToTokens
    

功能：实现 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

父类型：

            * ToTokens

#### func toTokens()
    
    public func toTokens(): Tokens
    

功能：实现 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

返回值：

            * [Tokens](ast_package_classes.html#class-tokens) - 转换后的 [Tokens](ast_package_classes.html#class-tokens)。

### extend UInt8 <: ToTokens
    
    extend UInt8 <: ToTokens
    

功能：实现 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

父类型：

            * ToTokens

#### func toTokens()
    
    public func toTokens(): Tokens
    

功能：实现 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型到 [Tokens](ast_package_classes.html#class-tokens) 类型的转换。

返回值：

            * [Tokens](ast_package_classes.html#class-tokens) - 转换后的 [Tokens](ast_package_classes.html#class-tokens)。
