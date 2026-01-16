函数 func digest<T>(T, Array<Byte>) where T <: Digest
>>     
>>     public func digest<T>(algorithm: T, data: Array<Byte>): Array<Byte> where T <: Digest
>>     
>> 
>> 功能：提供 digest 泛型函数，实现用指定的摘要算法进行摘要运算。 参数：
>>                        * algorithm: T - 具体的摘要算法。
>>                        * data: [Array](../../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../../core/core_package_api/core_package_types.html#type-byte)> \- 待进行摘要运算的数据。
>> 返回值：
>>                        * [Array](../../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../../core/core_package_api/core_package_types.html#type-byte)> \- 摘要运算结果。
>> 示例：
>>     
>>     import std.crypto.digest.*
>>     
>>     main() {
>>         let data: Array
>>     函数
>>     func digest<T>(T, Array<Byte>) where T <: Digest
>>     
>>     
>>     public func digest<T>(algorithm: T, data: Array<Byte>): Array<Byte> where T <: Digest
>>     
>> 
>> 功能：提供 digest 泛型函数，实现用指定的摘要算法进行摘要运算。 参数：
>>                        * algorithm: T - 具体的摘要算法。
>>                        * data: [Array](../../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../../core/core_package_api/core_package_types.html#type-byte)> \- 待进行摘要运算的数据。
>> 返回值：
>>                        * [Array](../../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../../core/core_package_api/core_package_types.html#type-byte)> \- 摘要运算结果。
>> 示例：
>>     
>>     import std.crypto.digest.*
>>     
>>     main() {
>>         let data: Array<Byte> = [1, 2, 3, 4, 5]
>>         let mydigest = MyDigest()
>>         let digestBytes = digest<MyDigest>(mydigest, data)
>>         println(digestBytes)
>>     }
>>     
>>     // 自定义 Digest
>>     class MyDigest <: Digest {
>>         public prop size: Int64 {
>>             get() { 0 }
>>         }
>>         public prop blockSize: Int64 {
>>             get() { 0 }
>>         }
>>         public prop algorithm: String {
>>             get() { "" }
>>         }
>>         public func write(buffer: Array<Byte>): Unit { println("buffer = ${buffer}") }
>>         public func finish(to!: Array<Byte>): Unit { println("to = ${to}") }
>>         public func finish(): Array<Byte> { [3,2,1] }
>>         public func reset(): Unit {}
>>     }
>>     
>> 
>> 运行结果：
>>     
>>     buffer = [1, 2, 3, 4, 5]
>>     [3, 2, 1]
>>     
>> 
>> func digest<T>(T, String) where T <: Digest (deprecated)
>>     
>>     public func digest<T>(algorithm: T, data: String): Array<Byte> where T <: Digest
>>     
>> 
>> 功能：提供 digest 泛型函数，实现用指定的摘要算法进行摘要运算。
>>
>>> **注意：** 未来版本即将废弃不再使用，可使用 [digest<T>(T, Array<Byte>) where T <: Digest](./digest_package_funcs.html#func-digesttt-arraybyte-where-t--digest) 替代。
>> 
>> 参数：
>>                        * algorithm: T - 具体的摘要算法。
>>                        * data: [String](../../../core/core_package_api/core_package_structs.html#struct-string) \- 待进行摘要运算的数据。
>> 返回值：
>>                        * [Array](../../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../../core/core_package_api/core_package_types.html#type-byte)> \- 摘要运算结果。
>> func digest<T>(T, InputStream) where T <: Digest
>>     
>>     public func digest<T>(algorithm: T, input: InputStream): Array<Byte> where T <: Digest
>>     
>> 
>> 功能：提供 digest 泛型函数，实现用指定的摘要算法对 InputStream 里的数据进行摘要运算。 参数：
>>                        * algorithm: T - 具体的摘要算法。
>>                        * input: [InputStream](../../../io/io_package_api/io_package_interfaces.html#interface-inputstream) \- 待进行摘要运算的 InputStream。
>> 返回值：
>>                        * [Array](../../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../../core/core_package_api/core_package_types.html#type-byte)> \- 摘要运算结果。
>> 示例：
>>     
>>     import std.crypto.digest.*
>>     import std.io.*
>>     
>>     main() {
>>         /* 将原始的字节数组 data 转换为一个输入流 BufferedInputStream */
>>         let data: Array<Byte> = [1, 2, 3, 4, 5]
>>         let byteBuffer = ByteBuffer(data)
>>         let bufferedInputStream = BufferedInputStream(byteBuffer)
>>         let mydigest = MyDigest()
>>         let digestBytes = digest<MyDigest>(mydigest, bufferedInputStream)
>>         println(digestBytes)
>>     }
>>     
>>     // 自定义 Digest
>>     class MyDigest <: Digest {
>>         public prop size: Int64 {
>>             get() { 0 }
>>         }
>>         public prop blockSize: Int64 {
>>             get() { 2 }
>>         }
>>         public prop algorithm: String {
>>             get() { "" }
>>         }
>>         public func write(buffer: Array<Byte>): Unit { println("buffer = ${buffer}") }
>>         public func finish(to!: Array<Byte>): Unit { println("to = ${to}") }
>>         public func finish(): Array<Byte> { [3,2,1] }
>>         public func reset(): Unit {}
>>     }
>>     
>> 
>> 运行结果：
>>     
>>     buffer = [1, 2]
>>     buffer = [3, 4]
>>     buffer = [5]
>>     [3, 2, 1]
>>     
>> 
>> 接口 interface BlockCipher
>>     
>>     public interface BlockCipher {
>>         prop blockSize: Int64
>>         prop algorithm: String
>>         func encrypt(input: Array<Byte>): Array<Byte>
>>         func decrypt(input: Array<Byte>): Array<Byte>
>>         func encrypt(input: Array<Byte>, to!: Array<Byte>): Int64
>>         func decrypt(input: Array<Byte>, to!: Array<Byte>): Int64
>>     }
>>     
>> 
>> 功能：分组加解密算法接口，继承该接口的 class、interface、struct 也需要遵守该接口中函数的入参及返回值定义。 prop algorithm
>>     
>>     prop algorithm: String
>>     
>> 
>> 功能：获取分组加解密算法的算法名称。 类型：[String](../../../core/core_package_api/core_package_structs.html#struct-string) prop blockSize
>>     
>>     prop blockSize: Int64
>>     
>> 
>> 功能：分组块长度，单位字节。 类型：[Int64](../../../core/core_package_api/core_package_intrinsics.html#int64) func encrypt(Array<Byte>)
>>     
>>     func encrypt(input: Array<Byte>): Array<Byte>
>>     
>> 
>> 功能：提供加密函数。 参数：
>>                        * input: [Array](../../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../../core/core_package_api/core_package_types.html#type-byte)> \- 待加密的数据。
>> 返回值：
>>                        * [Array](../../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../../core/core_package_api/core_package_types.html#type-byte)> \- 加密后的结果。
>> func decrypt(Array<Byte>)
>>     
>>     func decrypt(input: Array<Byte>): Array<Byte>
>>     
>> 
>> 功能：提供解密函数。 参数：
>>                        * input: [Array](../../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../../core/core_package_api/core_package_types.html#type-byte)> \- 待解密的数据。
>> 返回值：
>>                        * [Array](../../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../../core/core_package_api/core_package_types.html#type-byte)> \- 解密后的结果。
>> func encrypt(Array<Byte>, Array<Byte>)
>>     
>>     func encrypt(input: Array<Byte>, to!: Array<Byte>): Int64
>>     
>> 
>> 功能：提供加密函数。 参数：
>>                        * input: [Array](../../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../../core/core_package_api/core_package_types.html#type-byte)> \- 待加密的数据。
>>                        * to!: [Array](../../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../../core/core_package_api/core_package_types.html#type-byte)> \- 输出数组。
>> 返回值：
>>                        * [Int64](../../../core/core_package_api/core_package_intrinsics.html#int64) \- 输出长度。
>> func decrypt(Array<Byte>, Array<Byte>)
>>     
>>     func decrypt(input: Array<Byte>,  to!: Array<Byte>): Int64
>>     
>> 
>> 功能：提供解密函数。 参数：
>>                        * input: [Array](../../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../../core/core_package_api/core_package_types.html#type-byte)> \- 待解密的数据。
>>                        * to!: [Array](../../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../../core/core_package_api/core_package_types.html#type-byte)> \- 输出数组。
>> 返回值：
>>                        * [Int64](../../../core/core_package_api/core_package_intrinsics.html#int64) \- 输出长度。
