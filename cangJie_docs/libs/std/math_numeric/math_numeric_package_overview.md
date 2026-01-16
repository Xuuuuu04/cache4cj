接口 interface FloatingPoint<T>
>>     
>>     public interface FloatingPoint<T> <: Number<T> {
>>         static func getE(): T
>>         static func getInf(): T
>>         static func getPI(): T
>>         static func getMinDenormal(): T
>>         static func getMinNormal(): T
>>         static func getNaN(): T
>>         func isInf(): Bool
>>         func isNaN(): Bool
>>         func isNormal(): Bool
>>     }
>>     
>> 
>> 功能：本接口提供了浮点数相关的方法。 父类型：
>>                            * Number<T>
>> static func getE()
>>     
>>     static func getE(): T
>>     
>> 
>> 功能：获取 T 类型的自然常数。 返回值：
>>                            * T - 类型 T 的自然常数。
>> static func getInf()
>>     
>>     static func getInf(): T
>>     
>> 
>> 功能：获取浮点数的无穷数。 返回值：
>>                            * T - 类型 T 的无穷数。
>> static func getPI()
>>     
>>     static func getPI(): T
>>     
>> 
>> 功能：获取 T 类型的圆周率常数。 返回值：
>>                            * T - 类型 T 的圆周率常数。
>> static func getMinDenormal()
>>     
>>     static func getMinDenormal(): T
>>     
>> 
>> 功能：获取单精度浮点数的最小次正规数。 返回值：
>>                            * T - 类型 T 的最小次正规数。
>> static func getMinNormal()
>>     
>>     static func getMinNormal(): T
>>     
>> 
>> 功能：获取单精度浮点数的最小正规数。 返回值：
>>                            * T - 类型 T 的最小正规数。
>> static func getNaN()
>>     
>>     static func getNaN(): T
>>     
>> 
>> 功能：获取浮点数的非数。 返回值：
>>                            * T - 类型 T 的非数。
>> func isInf()
>>     
>>     func isInf(): Bool
>>     
>> 
>> 功能：判断浮点数是否为无穷数值。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 如果浮点数的值正无穷大或负无穷大，则返回 `true`；否则，返回 `false`。
>> func isNaN()
>>     
>>     func isNaN(): Bool
>>     
>> 
>> 功能：判断浮点数是否为非数值。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 如果浮点数的值为非数值，则返回 `true`；否则，返回 `false`。
>> func isNormal()
>>     
>>     func isNormal(): Bool
>>     
>> 
>> 功能：判断浮点数是否为常规数值。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 如果是正常的浮点数，返回 `true`；否则，返回 `false`。
>> extend Float16 <: FloatingPoint<Float16>
>>     
>>     extend Float16 <: FloatingPoint<Float16>
>>     
>> 
>> 功能：为 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型扩展 FloatingPoint<Float16> 接口。 父类型：
>>                            * FloatingPoint<[Float16](../../core/core_package_api/core_package_intrinsics.html#float16)>
>> static func getE()
>>     
>>     public static func getE(): Float16
>>     
>> 
>> 功能：获取半精度浮点数类型的自然常数。 返回值：
>>                            * [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) - 半精度浮点数类型的自然常数。
>> static func getInf()
>>     
>>     public static func getInf(): Float16
>>     
>> 
>> 功能：获取半精度浮点数类型的无穷数值。 返回值：
>>                            * [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) - 半精度浮点数类型的无穷数值。
>> static func getPI()
>>     
>>     public static func getPI(): Float16
>>     
>> 
>> 功能：获取半精度浮点数类型的圆周率常数。 返回值：
>>                            * [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) - 半精度浮点数类型的圆周率常数。
>> static func getMinDenormal()
>>     
>>     public static func getMinDenormal(): Float16
>>     
>> 
>> 功能：获取半精度浮点数类型的最小次正规数。 返回值：
>>                            * [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) - 半精度浮点数类型的最小次正规数。
>> static func getMinNormal()
>>     
>>     public static func getMinNormal(): Float16
>>     
>> 
>> 功能：获取半精度浮点数类型的最小正规数。 返回值：
>>                            * [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) - 半精度浮点数类型的最小正规数。
>> static func getNaN()
>>     
>>     public static func getNaN(): Float16
>>     
>> 
>> 功能：获取半精度浮点数类型的非数。 返回值：
>>                            * [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) - 半精度浮点数类型的非数。
>> extend Float32 <: FloatingPoint<Float32>
>>     
>>     extend Float32 <: FloatingPoint<Float32>
>>     
>> 
>> 功能：为 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型扩展 FloatingPoint<Float32> 接口。 父类型：
>>                            * FloatingPoint<[Float32](../../core/core_package_api/core_package_intrinsics.html#float32)>
>> static func getE()
>>     
>>     public static func getE(): Float32
>>     
>> 
>> 功能：获取单精度浮点数类型的自然常数。 返回值：
>>                            * [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) - 单精度浮点数类型的自然常数。
>> static func getInf()
>>     
>>     public static func getInf(): Float32
>>     
>> 
>> 功能：获取单精度浮点数类型的无穷数值。 返回值：
>>                            * [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) - 单精度浮点数类型的无穷数值。
>> static func getPI()
>>     
>>     public static func getPI(): Float32
>>     
>> 
>> 功能：获取单精度浮点数类型的圆周率常数。 返回值：
>>                            * [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) - 单精度浮点数类型的圆周率常数。
>> static func getMinDenormal()
>>     
>>     public static func getMinDenormal(): Float32
>>     
>> 
>> 功能：获取单精度浮点数类型的最小次正规数。 返回值：
>>                            * [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) - 单精度浮点数类型的最小次正规数。
>> static func getMinNormal()
>>     
>>     public static func getMinNormal(): Float32
>>     
>> 
>> 功能：获取单精度浮点数类型的最小正规数。 返回值：
>>                            * [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) - 单精度浮点数类型的最小正规数。
>> static func getNaN()
>>     
>>     public static func getNaN(): Float32
>>     
>> 
>> 功能：获取单精度浮点数类型的非数。 返回值：
>>                            * [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) - 单精度浮点数类型的非数。
>> extend Float64 <: FloatingPoint<Float64>
>>     
>>     extend Float64 <: FloatingPoint<Float64>
>>     
>> 
>> 功能：为 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型扩展 FloatingPoint<Float64> 接口。 父类型：
>>                            * FloatingPoint<[Float64](../../core/core_package_api/core_package_intrinsics.html#float64)>
>> static func getE()
>>     
>>     public static func getE(): Float64
>>     
>> 
>> 功能：获取双精度浮点数类型的自然常数。 返回值：
>>                            * [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) - 双精度浮点数类型的自然常数。
>> static func getInf()
>>     
>>     public static func getInf(): Float64
>>     
>> 
>> 功能：获取双精度浮点数类型的无穷数值。 返回值：
>>                            * [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) - 双精度浮点数类型的无穷数值。
>> static func getPI()
>>     
>>     public static func getPI(): Float64
>>     
>> 
>> 功能：获取双精度浮点数类型的圆周率常数。 返回值：
>>                            * [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) - 双精度浮点数类型的圆周率常数。
>> static func getMinDenormal()
>>     
>>     public static func getMinDenormal(): Float64
>>     
>> 
>> 功能：获取双精度浮点数类型的最小次正规数。 返回值：
>>                            * [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) - 双精度浮点数类型的最小次正规数。
>> static func getMinNormal()
>>     
>>     public static func getMinNormal(): Float64
>>     
>> 
>> 功能：获取双精度浮点数类型的最小正规数。 返回值：
>>                            * [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) - 双精度浮点数类型的最小正规数。
>> static func getNaN()
>>     
>>     public static func getNaN(): Float64
>>     
>> 
>> 功能：获取双精度浮点数类型的非数。 返回值：
>>                            * [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) - 双精度浮点数类型的非数。
>> interface Integer<T>
>>     
>>     public interface Integer<T> <: Number<T> {
>>         static func isSigned(): Bool
>>         operator func %(rhs: T): T
>>         operator func &(rhs: T): T
>>         operator func |(rhs: T): T
>>         operator func ^(rhs: T): T
>>         operator func !(): T
>>         operator func >>(n: Int64): T
>>         operator func <<(n: Int64): T
>>     }
>>     
>> 
>> 功能：本接口提供了整数类型相关的方法。 父类型：
>>                            * Number<T>
>> static func isSigned()
>>     
>>     static func isSigned(): Bool
>>     
>> 
>> 功能：判断类型是否是有符号的。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 如果类型是有符号的，返回 `true`；否则返回 `false`。
>> operator func %(T)
>>     
>>     operator func %(rhs: T): T
>>     
>> 
>> 功能：算术运算符，计算余数。 参数：
>>                            * rhs: T - 运算符右边的数，表示除数。
>> 返回值：
>>                            * T - 计算所得余数。
>> operator func &(T)
>>     
>>     operator func &(rhs: T): T
>>     
>> 
>> 功能：位运算符，按位与。 参数：
>>                            * rhs: T - 运算符右边的数。
>> 返回值：
>>                            * T - 计算所得结果。
>> operator func |(T)
>>     
>>     operator func |(rhs: T): T
>>     
>> 
>> 功能：位运算符，按位或。 参数：
>>                            * rhs: T - 运算符右边的数。
>> 返回值：
>>                            * T - 计算所得结果。
>> operator func ^(T)
>>     
>>     operator func ^(rhs: T): T
>>     
>> 
>> 功能：位运算符，按位异或。 参数：
>>                            * rhs: T - 运算符右边的数。
>> 返回值：
>>                            * T - 计算所得结果。
>> operator func !()
>>     
>>     operator func !(): T
>>     
>> 
>> 功能：位运算符，按位取反。 返回值：
>>                            * T - 计算所得结果。
>> operator func >>(Int64)
>>     
>>     operator func >>(n: Int64): T
>>     
>> 
>> 功能：位运算符，按位右移。 参数：
>>                            * n: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 运算符右边的数，表示右移的位数。
>> 返回值：
>>                            * T - 计算所得结果。
>> operator func <<(Int64)
>>     
>>     operator func <<(n: Int64): T
>>     
>> 
>> 功能：位运算符，按位左移。 参数：
>>                            * n: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 运算符右边的数，表示左移的位数。
>> 返回值：
>>                            * T - 计算所得结果。
>> extend Int16 <: Integer<Int16>
>>     
>>     extend Int16 <: Integer<Int16>
>>     
>> 
>> 功能：为 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型扩展 Integer<T> 接口。 父类型：
>>                            * Integer<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)>
>> static func isSigned()
>>     
>>     public static func isSigned(): Bool
>>     
>> 
>> 功能：判断 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型是否是有符号类型。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 总是返回 `true`。
>> extend Int32 <: Integer<Int32>
>>     
>>     extend Int32 <: Integer<Int32>
>>     
>> 
>> 功能：为 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型扩展 Integer<T> 接口。 父类型：
>>                            * Integer<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)>
>> static func isSigned()
>>     
>>     public static func isSigned(): Bool
>>     
>> 
>> 功能：判断 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型是否是有符号类型。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 总是返回 `true`。
>> extend Int64 <: Integer<Int64>
>>     
>>     extend Int64 <: Integer<Int64>
>>     
>> 
>> 功能：为 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型扩展 Integer<T> 接口。 父类型：
>>                            * Integer<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)>
>> static func isSigned()
>>     
>>     public static func isSigned(): Bool
>>     
>> 
>> 功能：判断 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型是否是有符号类型。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 总是返回 `true`。
>> extend Int8 <: Integer<Int8>
>>     
>>     extend Int8 <: Integer<Int8>
>>     
>> 
>> 功能：为 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型扩展 Integer<T> 接口。 父类型：
>>                            * Integer<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)>
>> static func isSigned()
>>     
>>     public static func isSigned(): Bool
>>     
>> 
>> 功能：判断 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型是否是有符号类型。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 总是返回 `true`。
>> extend IntNative <: Integer<IntNative>
>>     
>>     extend IntNative <: Integer<IntNative>
>>     
>> 
>> 功能：为 [IntNative](../../core/core_package_api/core_package_intrinsics.html#intnative) 类型扩展 Integer<T> 接口。 父类型：
>>                            * Integer<[IntNative](../../core/core_package_api/core_package_intrinsics.html#intnative)>
>> static func isSigned()
>>     
>>     public static func isSigned(): Bool
>>     
>> 
>> 功能：判断 [IntNative](../../core/core_package_api/core_package_intrinsics.html#intnative) 类型是否是有符号类型。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 总是返回 `true`。
>> extend UInt16 <: Integer<UInt16>
>>     
>>     extend UInt16 <: Integer<UInt16>
>>     
>> 
>> 功能：为 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型扩展 Integer<T> 接口。 父类型：
>>                            * Integer<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)>
>> static func isSigned()
>>     
>>     public static func isSigned(): Bool
>>     
>> 
>> 功能：判断 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型是否是有符号类型。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 总是返回 `false`。
>> extend UInt32 <: Integer<UInt32>
>>     
>>     extend UInt32 <: Integer<UInt32>
>>     
>> 
>> 功能：为 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型扩展 Integer<T> 接口。 父类型：
>>                            * Integer<[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32)>
>> static func isSigned()
>>     
>>     public static func isSigned(): Bool
>>     
>> 
>> 功能：判断 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型是否是有符号类型。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 总是返回 `false`。
>> extend UInt64 <: Integer<UInt64>
>>     
>>     extend UInt64 <: Integer<UInt64>
>>     
>> 
>> 功能：为 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型扩展 Integer<T> 接口。 父类型：
>>                            * Integer<[UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64)>
>> static func isSigned()
>>     
>>     public static func isSigned(): Bool
>>     
>> 
>> 功能：判断 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型是否是有符号类型。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 总是返回 `false`。
>> extend UInt8 <: Integer<UInt8>
>>     
>>     extend UInt8 <: Integer<UInt8>
>>     
>> 
>> 功能：为 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型扩展 Integer<T> 接口。 父类型：
>>                            * Integer<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)>
>> static func isSigned()
>>     
>>     public static func isSigned(): Bool
>>     
>> 
>> 功能：判断 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型是否是有符号类型。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 总是返回 `false`。
>> extend UIntNative <: Integer<UIntNative>
>>     
>>     extend UIntNative <: Integer<UIntNative>
>>     
>> 
>> 功能：为 [UIntNative](../../core/core_package_api/core_package_intrinsics.html#uintnative) 类型扩展 Integer<T> 接口。 父类型：
>>                            * Integer<[UIntNative](../../core/core_package_api/core_package_intrinsics.html#uintnative)>
>> static func isSigned()
>>     
>>     public static func isSigned(): Bool
>>     
>> 
>> 功能：判断 [UIntNative](../../core/core_package_api/core_package_intrinsics.html#uintnative) 类型是否是有符号类型。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 总是返回 `false`。
>> interface MathExtension<T> (deprecated)
>>     
>>     public interface MathExtension<T> {
>>         static func GetPI(): T
>>         static func GetE(): T
>>     }
>>     
>> 
>> 功能：本接口提供了统一的方法获取一些数学常数。
>>
>>> **注意：** 未来版本即将废弃，使用 FloatingPoint<T> 替代。
>> 
>> static func GetPI()
>>     
>>     static func GetPI(): T
>>     
>> 
>> 功能：获取 T 类型的圆周率常数。 返回值：
>>                            * T - 类型 T 的圆周率常数。
>> static func GetE()
>>     
>>     static func GetE(): T
>>     
>> 
>> 功能：获取 T 类型的自然常数。 返回值：
>>                            * T - 类型 T 的自然常数。
>> extend Float16 <: MathExtension<Float16>
>>     
>>     extend Float16 <: MathExtension<Float16>
>>     
>> 
>> 功能：拓展半精度浮点数以支持一些数学常数。 父类型：
>>                            * MathExtension (deprecated)<[Float16](../../../std/core/core_package_api/core_package_intrinsics.html#float16)>
>> static func GetPI()
>>     
>>     public static func GetPI(): Float16
>>     
>> 
>> 功能：获取半精度浮点数的圆周率常数。 返回值：
>>                            * [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) - 类型的圆周率常数
>> static func GetE()
>>     
>>     public static func GetE(): Float16
>>     
>> 
>> 功能：获取半精度浮点数的自然常数。 返回值：
>>                            * [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) - 类型的自然常数
>> extend Float32 <: MathExtension<Float32>
>>     
>>     extend Float32 <: MathExtension<Float32>
>>     
>> 
>> 功能：拓展单精度浮点数以支持一些数学常数。 父类型：
>>                            * MathExtension (deprecated)<[Float32](../../../std/core/core_package_api/core_package_intrinsics.html#float32)>
>> static func GetPI()
>>     
>>     public static func GetPI(): Float32
>>     
>> 
>> 功能：获取单精度浮点数的圆周率常数。 返回值：
>>                            * [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) - 类型的圆周率常数
>> static func GetE()
>>     
>>     public static func GetE(): Float32
>>     
>> 
>> 功能：获取单精度浮点数的自然常数。 返回值：
>>                            * [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) - 类型的自然常数
>> extend Float64 <: MathExtension<Float64>
>>     
>>     extend Float64 <: MathExtension<Float64>
>>     
>> 
>> 功能：拓展双精度浮点数以支持一些数学常数。 父类型：
>>                            * MathExtension (deprecated)<[Float64](../../../std/core/core_package_api/core_package_intrinsics.html#float64)>
>> static func GetPI()
>>     
>>     public static func GetPI(): Float64
>>     
>> 
>> 功能：获取双精度浮点数的圆周率常数。 返回值：
>>                            * [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) - 类型的圆周率常数
>> static func GetE()
>>     
>>     public static func GetE(): Float64
>>     
>> 
>> 功能：获取双精度浮点数的自然常数。 返回值：
>>                            * [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) - 类型的自然常数
>> interface MaxMinValue<T>
>>     
>>     public interface MaxMinValue<T> {
>>         static func getMax(): T
>>         static func getMin(): T
>>     }
>>     
>> 
>> 功能：提供获取最大值和最小值的方法。 static func getMax()
>>     
>>     static func getMax(): T
>>     
>> 
>> 功能：获取最大值。 返回值：
>>                            * T - 最大值。
>> static func getMax()
>>     
>>     static func getMin(): T
>>     
>> 
>> 功能：获取最小值。 返回值：
>>                            * T - 最小值。
>> extend Float16 <: MaxMinValue<Float16>
>>     
>>     extend Float16 <: MaxMinValue<Float16>
>>     
>> 
>> 功能：为 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型扩展 MaxMinValue 接口。 父类型：
>>                            * MaxMinValue<[Float16](../../core/core_package_api/core_package_intrinsics.html#float16)>
>> static func getMax()
>>     
>>     public static func getMax(): Float16
>>     
>> 
>> 功能：获取 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型的最大值。 返回值：
>>                            * [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) - 半精度浮点数类型的最大值。
>> static func getMin()
>>     
>>     public static func getMin(): Float16
>>     
>> 
>> 功能：获取 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型的最小值。 返回值：
>>                            * [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) - 半精度浮点数类型的最小值。
>> extend Float32 <: MaxMinValue<Float32>
>>     
>>     extend Float32 <: MaxMinValue<Float32>
>>     
>> 
>> 功能：为 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型扩展 MaxMinValue 接口。 父类型：
>>                            * MaxMinValue<[Float32](../../core/core_package_api/core_package_intrinsics.html#float32)>
>> static func getMax()
>>     
>>     public static func getMax(): Float32
>>     
>> 
>> 功能：获取 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型的最大值。 返回值：
>>                            * [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) - 单精度浮点数类型的最大值。
>> static func getMin()
>>     
>>     public static func getMin(): Float32
>>     
>> 
>> 功能：获取 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型的最小值。 返回值：
>>                            * [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) - 单精度浮点数类型的最小值。
>> extend Float64 <: MaxMinValue<Float64>
>>     
>>     extend Float64 <: MaxMinValue<Float64>
>>     
>> 
>> 功能：为 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型扩展 MaxMinValue 接口。 父类型：
>>                            * MaxMinValue<[Float64](../../core/core_package_api/core_package_intrinsics.html#float64)>
>> static func getMax()
>>     
>>     public static func getMax(): Float64
>>     
>> 
>> 功能：获取 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型的最大值。 返回值：
>>                            * [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) - 双精度浮点数类型的最大值。
>> static func getMin()
>>     
>>     public static func getMin(): Float64
>>     
>> 
>> 功能：获取 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型的最小值。 返回值：
>>                            * [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) - 双精度浮点数类型的最小值。
>> extend Int16 <: MaxMinValue<Int16>
>>     
>>     extend Int16 <: MaxMinValue<Int16>
>>     
>> 
>> 功能：为 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型扩展 MaxMinValue 接口。 父类型：
>>                            * MaxMinValue<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)>
>> static func getMax()
>>     
>>     public static func getMax(): Int16
>>     
>> 
>> 功能：获取 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型的最大值。 返回值：
>>                            * [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) - [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型的最大值。
>> static func getMin()
>>     
>>     public static func getMin(): Int16
>>     
>> 
>> 功能：获取 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型的最小值。 返回值：
>>                            * [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) - [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型的最小值。
>> extend Int32 <: MaxMinValue<Int32>
>>     
>>     extend Int32 <: MaxMinValue<Int32>
>>     
>> 
>> 功能：为 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型扩展 MaxMinValue 接口。 父类型：
>>                            * MaxMinValue<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)>
>> static func getMax()接口
>>     interface FloatingPoint<T>
>>     
>>     
>>     public interface FloatingPoint<T> <: Number<T> {
>>         static func getE(): T
>>         static func getInf(): T
>>         static func getPI(): T
>>         static func getMinDenormal(): T
>>         static func getMinNormal(): T
>>         static func getNaN(): T
>>         func isInf(): Bool
>>         func isNaN(): Bool
>>         func isNormal(): Bool
>>     }
>>     
>> 
>> 功能：本接口提供了浮点数相关的方法。 父类型：
>>                            * Number<T>
>> static func getE()
>>     
>>     static func getE(): T
>>     
>> 
>> 功能：获取 T 类型的自然常数。 返回值：
>>                            * T - 类型 T 的自然常数。
>> static func getInf()
>>     
>>     static func getInf(): T
>>     
>> 
>> 功能：获取浮点数的无穷数。 返回值：
>>                            * T - 类型 T 的无穷数。
>> static func getPI()
>>     
>>     static func getPI(): T
>>     
>> 
>> 功能：获取 T 类型的圆周率常数。 返回值：
>>                            * T - 类型 T 的圆周率常数。
>> static func getMinDenormal()
>>     
>>     static func getMinDenormal(): T
>>     
>> 
>> 功能：获取单精度浮点数的最小次正规数。 返回值：
>>                            * T - 类型 T 的最小次正规数。
>> static func getMinNormal()
>>     
>>     static func getMinNormal(): T
>>     
>> 
>> 功能：获取单精度浮点数的最小正规数。 返回值：
>>                            * T - 类型 T 的最小正规数。
>> static func getNaN()
>>     
>>     static func getNaN(): T
>>     
>> 
>> 功能：获取浮点数的非数。 返回值：
>>                            * T - 类型 T 的非数。
>> func isInf()
>>     
>>     func isInf(): Bool
>>     
>> 
>> 功能：判断浮点数是否为无穷数值。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 如果浮点数的值正无穷大或负无穷大，则返回 `true`；否则，返回 `false`。
>> func isNaN()
>>     
>>     func isNaN(): Bool
>>     
>> 
>> 功能：判断浮点数是否为非数值。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 如果浮点数的值为非数值，则返回 `true`；否则，返回 `false`。
>> func isNormal()
>>     
>>     func isNormal(): Bool
>>     
>> 
>> 功能：判断浮点数是否为常规数值。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 如果是正常的浮点数，返回 `true`；否则，返回 `false`。
>> extend Float16 <: FloatingPoint<Float16>
>>     
>>     extend Float16 <: FloatingPoint<Float16>
>>     
>> 
>> 功能：为 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型扩展 FloatingPoint<Float16> 接口。 父类型：
>>                            * FloatingPoint<[Float16](../../core/core_package_api/core_package_intrinsics.html#float16)>
>> static func getE()
>>     
>>     public static func getE(): Float16
>>     
>> 
>> 功能：获取半精度浮点数类型的自然常数。 返回值：
>>                            * [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) - 半精度浮点数类型的自然常数。
>> static func getInf()
>>     
>>     public static func getInf(): Float16
>>     
>> 
>> 功能：获取半精度浮点数类型的无穷数值。 返回值：
>>                            * [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) - 半精度浮点数类型的无穷数值。
>> static func getPI()
>>     
>>     public static func getPI(): Float16
>>     
>> 
>> 功能：获取半精度浮点数类型的圆周率常数。 返回值：
>>                            * [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) - 半精度浮点数类型的圆周率常数。
>> static func getMinDenormal()
>>     
>>     public static func getMinDenormal(): Float16
>>     
>> 
>> 功能：获取半精度浮点数类型的最小次正规数。 返回值：
>>                            * [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) - 半精度浮点数类型的最小次正规数。
>> static func getMinNormal()
>>     
>>     public static func getMinNormal(): Float16
>>     
>> 
>> 功能：获取半精度浮点数类型的最小正规数。 返回值：
>>                            * [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) - 半精度浮点数类型的最小正规数。
>> static func getNaN()
>>     
>>     public static func getNaN(): Float16
>>     
>> 
>> 功能：获取半精度浮点数类型的非数。 返回值：
>>                            * [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) - 半精度浮点数类型的非数。
>> extend Float32 <: FloatingPoint<Float32>
>>     
>>     extend Float32 <: FloatingPoint<Float32>
>>     
>> 
>> 功能：为 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型扩展 FloatingPoint<Float32> 接口。 父类型：
>>                            * FloatingPoint<[Float32](../../core/core_package_api/core_package_intrinsics.html#float32)>
>> static func getE()
>>     
>>     public static func getE(): Float32
>>     
>> 
>> 功能：获取单精度浮点数类型的自然常数。 返回值：
>>                            * [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) - 单精度浮点数类型的自然常数。
>> static func getInf()
>>     
>>     public static func getInf(): Float32
>>     
>> 
>> 功能：获取单精度浮点数类型的无穷数值。 返回值：
>>                            * [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) - 单精度浮点数类型的无穷数值。
>> static func getPI()
>>     
>>     public static func getPI(): Float32
>>     
>> 
>> 功能：获取单精度浮点数类型的圆周率常数。 返回值：
>>                            * [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) - 单精度浮点数类型的圆周率常数。
>> static func getMinDenormal()
>>     
>>     public static func getMinDenormal(): Float32
>>     
>> 
>> 功能：获取单精度浮点数类型的最小次正规数。 返回值：
>>                            * [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) - 单精度浮点数类型的最小次正规数。
>> static func getMinNormal()
>>     
>>     public static func getMinNormal(): Float32
>>     
>> 
>> 功能：获取单精度浮点数类型的最小正规数。 返回值：
>>                            * [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) - 单精度浮点数类型的最小正规数。
>> static func getNaN()
>>     
>>     public static func getNaN(): Float32
>>     
>> 
>> 功能：获取单精度浮点数类型的非数。 返回值：
>>                            * [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) - 单精度浮点数类型的非数。
>> extend Float64 <: FloatingPoint<Float64>
>>     
>>     extend Float64 <: FloatingPoint<Float64>
>>     
>> 
>> 功能：为 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型扩展 FloatingPoint<Float64> 接口。 父类型：
>>                            * FloatingPoint<[Float64](../../core/core_package_api/core_package_intrinsics.html#float64)>
>> static func getE()
>>     
>>     public static func getE(): Float64
>>     
>> 
>> 功能：获取双精度浮点数类型的自然常数。 返回值：
>>                            * [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) - 双精度浮点数类型的自然常数。
>> static func getInf()
>>     
>>     public static func getInf(): Float64
>>     
>> 
>> 功能：获取双精度浮点数类型的无穷数值。 返回值：
>>                            * [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) - 双精度浮点数类型的无穷数值。
>> static func getPI()
>>     
>>     public static func getPI(): Float64
>>     
>> 
>> 功能：获取双精度浮点数类型的圆周率常数。 返回值：
>>                            * [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) - 双精度浮点数类型的圆周率常数。
>> static func getMinDenormal()
>>     
>>     public static func getMinDenormal(): Float64
>>     
>> 
>> 功能：获取双精度浮点数类型的最小次正规数。 返回值：
>>                            * [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) - 双精度浮点数类型的最小次正规数。
>> static func getMinNormal()
>>     
>>     public static func getMinNormal(): Float64
>>     
>> 
>> 功能：获取双精度浮点数类型的最小正规数。 返回值：
>>                            * [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) - 双精度浮点数类型的最小正规数。
>> static func getNaN()
>>     
>>     public static func getNaN(): Float64
>>     
>> 
>> 功能：获取双精度浮点数类型的非数。 返回值：
>>                            * [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) - 双精度浮点数类型的非数。
>> interface Integer<T>
>>     
>>     public interface Integer<T> <: Number<T> {
>>         static func isSigned(): Bool
>>         operator func %(rhs: T): T
>>         operator func &(rhs: T): T
>>         operator func |(rhs: T): T
>>         operator func ^(rhs: T): T
>>         operator func !(): T
>>         operator func >>(n: Int64): T
>>         operator func <<(n: Int64): T
>>     }
>>     
>> 
>> 功能：本接口提供了整数类型相关的方法。 父类型：
>>                            * Number<T>
>> static func isSigned()
>>     
>>     static func isSigned(): Bool
>>     
>> 
>> 功能：判断类型是否是有符号的。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 如果类型是有符号的，返回 `true`；否则返回 `false`。
>> operator func %(T)
>>     
>>     operator func %(rhs: T): T
>>     
>> 
>> 功能：算术运算符，计算余数。 参数：
>>                            * rhs: T - 运算符右边的数，表示除数。
>> 返回值：
>>                            * T - 计算所得余数。
>> operator func &(T)
>>     
>>     operator func &(rhs: T): T
>>     
>> 
>> 功能：位运算符，按位与。 参数：
>>                            * rhs: T - 运算符右边的数。
>> 返回值：
>>                            * T - 计算所得结果。
>> operator func |(T)
>>     
>>     operator func |(rhs: T): T
>>     
>> 
>> 功能：位运算符，按位或。 参数：
>>                            * rhs: T - 运算符右边的数。
>> 返回值：
>>                            * T - 计算所得结果。
>> operator func ^(T)
>>     
>>     operator func ^(rhs: T): T
>>     
>> 
>> 功能：位运算符，按位异或。 参数：
>>                            * rhs: T - 运算符右边的数。
>> 返回值：
>>                            * T - 计算所得结果。
>> operator func !()
>>     
>>     operator func !(): T
>>     
>> 
>> 功能：位运算符，按位取反。 返回值：
>>                            * T - 计算所得结果。
>> operator func >>(Int64)
>>     
>>     operator func >>(n: Int64): T
>>     
>> 
>> 功能：位运算符，按位右移。 参数：
>>                            * n: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 运算符右边的数，表示右移的位数。
>> 返回值：
>>                            * T - 计算所得结果。
>> operator func <<(Int64)
>>     
>>     operator func <<(n: Int64): T
>>     
>> 
>> 功能：位运算符，按位左移。 参数：
>>                            * n: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 运算符右边的数，表示左移的位数。
>> 返回值：
>>                            * T - 计算所得结果。
>> extend Int16 <: Integer<Int16>
>>     
>>     extend Int16 <: Integer<Int16>
>>     
>> 
>> 功能：为 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型扩展 Integer<T> 接口。 父类型：
>>                            * Integer<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)>
>> static func isSigned()
>>     
>>     public static func isSigned(): Bool
>>     
>> 
>> 功能：判断 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型是否是有符号类型。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 总是返回 `true`。
>> extend Int32 <: Integer<Int32>
>>     
>>     extend Int32 <: Integer<Int32>
>>     
>> 
>> 功能：为 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型扩展 Integer<T> 接口。 父类型：
>>                            * Integer<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)>
>> static func isSigned()
>>     
>>     public static func isSigned(): Bool
>>     
>> 
>> 功能：判断 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型是否是有符号类型。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 总是返回 `true`。
>> extend Int64 <: Integer<Int64>
>>     
>>     extend Int64 <: Integer<Int64>
>>     
>> 
>> 功能：为 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型扩展 Integer<T> 接口。 父类型：
>>                            * Integer<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)>
>> static func isSigned()
>>     
>>     public static func isSigned(): Bool
>>     
>> 
>> 功能：判断 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型是否是有符号类型。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 总是返回 `true`。
>> extend Int8 <: Integer<Int8>
>>     
>>     extend Int8 <: Integer<Int8>
>>     
>> 
>> 功能：为 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型扩展 Integer<T> 接口。 父类型：
>>                            * Integer<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)>
>> static func isSigned()
>>     
>>     public static func isSigned(): Bool
>>     
>> 
>> 功能：判断 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型是否是有符号类型。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 总是返回 `true`。
>> extend IntNative <: Integer<IntNative>
>>     
>>     extend IntNative <: Integer<IntNative>
>>     
>> 
>> 功能：为 [IntNative](../../core/core_package_api/core_package_intrinsics.html#intnative) 类型扩展 Integer<T> 接口。 父类型：
>>                            * Integer<[IntNative](../../core/core_package_api/core_package_intrinsics.html#intnative)>
>> static func isSigned()
>>     
>>     public static func isSigned(): Bool
>>     
>> 
>> 功能：判断 [IntNative](../../core/core_package_api/core_package_intrinsics.html#intnative) 类型是否是有符号类型。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 总是返回 `true`。
>> extend UInt16 <: Integer<UInt16>
>>     
>>     extend UInt16 <: Integer<UInt16>
>>     
>> 
>> 功能：为 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型扩展 Integer<T> 接口。 父类型：
>>                            * Integer<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)>
>> static func isSigned()
>>     
>>     public static func isSigned(): Bool
>>     
>> 
>> 功能：判断 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型是否是有符号类型。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 总是返回 `false`。
>> extend UInt32 <: Integer<UInt32>
>>     
>>     extend UInt32 <: Integer<UInt32>
>>     
>> 
>> 功能：为 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型扩展 Integer<T> 接口。 父类型：
>>                            * Integer<[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32)>
>> static func isSigned()
>>     
>>     public static func isSigned(): Bool
>>     
>> 
>> 功能：判断 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型是否是有符号类型。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 总是返回 `false`。
>> extend UInt64 <: Integer<UInt64>
>>     
>>     extend UInt64 <: Integer<UInt64>
>>     
>> 
>> 功能：为 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型扩展 Integer<T> 接口。 父类型：
>>                            * Integer<[UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64)>
>> static func isSigned()
>>     
>>     public static func isSigned(): Bool
>>     
>> 
>> 功能：判断 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型是否是有符号类型。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 总是返回 `false`。
>> extend UInt8 <: Integer<UInt8>
>>     
>>     extend UInt8 <: Integer<UInt8>
>>     
>> 
>> 功能：为 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型扩展 Integer<T> 接口。 父类型：
>>                            * Integer<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)>
>> static func isSigned()
>>     
>>     public static func isSigned(): Bool
>>     
>> 
>> 功能：判断 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型是否是有符号类型。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 总是返回 `false`。
>> extend UIntNative <: Integer<UIntNative>
>>     
>>     extend UIntNative <: Integer<UIntNative>
>>     
>> 
>> 功能：为 [UIntNative](../../core/core_package_api/core_package_intrinsics.html#uintnative) 类型扩展 Integer<T> 接口。 父类型：
>>                            * Integer<[UIntNative](../../core/core_package_api/core_package_intrinsics.html#uintnative)>
>> static func isSigned()
>>     
>>     public static func isSigned(): Bool
>>     
>> 
>> 功能：判断 [UIntNative](../../core/core_package_api/core_package_intrinsics.html#uintnative) 类型是否是有符号类型。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 总是返回 `false`。
>> interface MathExtension<T> (deprecated)
>>     
>>     public interface MathExtension<T> {
>>         static func GetPI(): T
>>         static func GetE(): T
>>     }
>>     
>> 
>> 功能：本接口提供了统一的方法获取一些数学常数。
>>
>>> **注意：** 未来版本即将废弃，使用 FloatingPoint<T> 替代。
>> 
>> static func GetPI()
>>     
>>     static func GetPI(): T
>>     
>> 
>> 功能：获取 T 类型的圆周率常数。 返回值：
>>                            * T - 类型 T 的圆周率常数。
>> static func GetE()
>>     
>>     static func GetE(): T
>>     
>> 
>> 功能：获取 T 类型的自然常数。 返回值：
>>                            * T - 类型 T 的自然常数。
>> extend Float16 <: MathExtension<Float16>
>>     
>>     extend Float16 <: MathExtension<Float16>
>>     
>> 
>> 功能：拓展半精度浮点数以支持一些数学常数。 父类型：
>>                            * MathExtension (deprecated)<[Float16](../../../std/core/core_package_api/core_package_intrinsics.html#float16)>
>> static func GetPI()
>>     
>>     public static func GetPI(): Float16
>>     
>> 
>> 功能：获取半精度浮点数的圆周率常数。 返回值：
>>                            * [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) - 类型的圆周率常数
>> static func GetE()
>>     
>>     public static func GetE(): Float16
>>     
>> 
>> 功能：获取半精度浮点数的自然常数。 返回值：
>>                            * [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) - 类型的自然常数
>> extend Float32 <: MathExtension<Float32>
>>     
>>     extend Float32 <: MathExtension<Float32>
>>     
>> 
>> 功能：拓展单精度浮点数以支持一些数学常数。 父类型：
>>                            * MathExtension (deprecated)<[Float32](../../../std/core/core_package_api/core_package_intrinsics.html#float32)>
>> static func GetPI()
>>     
>>     public static func GetPI(): Float32
>>     
>> 
>> 功能：获取单精度浮点数的圆周率常数。 返回值：
>>                            * [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) - 类型的圆周率常数
>> static func GetE()
>>     
>>     public static func GetE(): Float32
>>     
>> 
>> 功能：获取单精度浮点数的自然常数。 返回值：
>>                            * [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) - 类型的自然常数
>> extend Float64 <: MathExtension<Float64>
>>     
>>     extend Float64 <: MathExtension<Float64>
>>     
>> 
>> 功能：拓展双精度浮点数以支持一些数学常数。 父类型：
>>                            * MathExtension (deprecated)<[Float64](../../../std/core/core_package_api/core_package_intrinsics.html#float64)>
>> static func GetPI()
>>     
>>     public static func GetPI(): Float64
>>     
>> 
>> 功能：获取双精度浮点数的圆周率常数。 返回值：
>>                            * [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) - 类型的圆周率常数
>> static func GetE()
>>     
>>     public static func GetE(): Float64
>>     
>> 
>> 功能：获取双精度浮点数的自然常数。 返回值：
>>                            * [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) - 类型的自然常数
>> interface MaxMinValue<T>
>>     
>>     public interface MaxMinValue<T> {
>>         static func getMax(): T
>>         static func getMin(): T
>>     }
>>     
>> 
>> 功能：提供获取最大值和最小值的方法。 static func getMax()
>>     
>>     static func getMax(): T
>>     
>> 
>> 功能：获取最大值。 返回值：
>>                            * T - 最大值。
>> static func getMax()
>>     
>>     static func getMin(): T
>>     
>> 
>> 功能：获取最小值。 返回值：
>>                            * T - 最小值。
>> extend Float16 <: MaxMinValue<Float16>
>>     
>>     extend Float16 <: MaxMinValue<Float16>
>>     
>> 
>> 功能：为 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型扩展 MaxMinValue 接口。 父类型：
>>                            * MaxMinValue<[Float16](../../core/core_package_api/core_package_intrinsics.html#float16)>
>> static func getMax()
>>     
>>     public static func getMax(): Float16
>>     
>> 
>> 功能：获取 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型的最大值。 返回值：
>>                            * [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) - 半精度浮点数类型的最大值。
>> static func getMin()
>>     
>>     public static func getMin(): Float16
>>     
>> 
>> 功能：获取 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型的最小值。 返回值：
>>                            * [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) - 半精度浮点数类型的最小值。
>> extend Float32 <: MaxMinValue<Float32>
>>     
>>     extend Float32 <: MaxMinValue<Float32>
>>     
>> 
>> 功能：为 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型扩展 MaxMinValue 接口。 父类型：
>>                            * MaxMinValue<[Float32](../../core/core_package_api/core_package_intrinsics.html#float32)>
>> static func getMax()
>>     
>>     public static func getMax(): Float32
>>     
>> 
>> 功能：获取 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型的最大值。 返回值：
>>                            * [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) - 单精度浮点数类型的最大值。
>> static func getMin()
>>     
>>     public static func getMin(): Float32
>>     
>> 
>> 功能：获取 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型的最小值。 返回值：
>>                            * [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) - 单精度浮点数类型的最小值。
>> extend Float64 <: MaxMinValue<Float64>
>>     
>>     extend Float64 <: MaxMinValue<Float64>
>>     
>> 
>> 功能：为 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型扩展 MaxMinValue 接口。 父类型：
>>                            * MaxMinValue<[Float64](../../core/core_package_api/core_package_intrinsics.html#float64)>
>> static func getMax()
>>     
>>     public static func getMax(): Float64
>>     
>> 
>> 功能：获取 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型的最大值。 返回值：
>>                            * [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) - 双精度浮点数类型的最大值。
>> static func getMin()
>>     
>>     public static func getMin(): Float64
>>     
>> 
>> 功能：获取 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型的最小值。 返回值：
>>                            * [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) - 双精度浮点数类型的最小值。
>> extend Int16 <: MaxMinValue<Int16>
>>     
>>     extend Int16 <: MaxMinValue<Int16>
>>     
>> 
>> 功能：为 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型扩展 MaxMinValue 接口。 父类型：
>>                            * MaxMinValue<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)>
>> static func getMax()
>>     
>>     public static func getMax(): Int16
>>     
>> 
>> 功能：获取 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型的最大值。 返回值：
>>                            * [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) - [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型的最大值。
>> static func getMin()
>>     
>>     public static func getMin(): Int16
>>     
>> 
>> 功能：获取 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型的最小值。 返回值：
>>                            * [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) - [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型的最小值。
>> extend Int32 <: MaxMinValue<Int32>
>>     
>>     extend Int32 <: MaxMinValue<Int32>
>>     
>> 
>> 功能：为 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型扩展 MaxMinValue 接口。 父类型：
>>                            * MaxMinValue<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)>
>> static func getMax()
>>     
>>     public static func getMax(): Int32
>>     
>> 
>> 功能：获取 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型的最大值。 返回值：
>>                            * [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) - [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型的最大值。
>> static func getMin()
>>     
>>     public static func getMin(): Int32
>>     
>> 
>> 功能：获取 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型的最小值。 返回值：
>>                            * [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) - [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型的最小值。
>> extend Int64 <: MaxMinValue<Int64>
>>     
>>     extend Int64 <: MaxMinValue<Int64>
>>     
>> 
>> 功能：为 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型扩展 MaxMinValue 接口。 父类型：
>>                            * MaxMinValue<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)>
>> static func getMax()
>>     
>>     public static func getMax(): Int64
>>     
>> 
>> 功能：获取 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型的最大值。 返回值：
>>                            * [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型的最大值。
>> static func getMin()
>>     
>>     public static func getMin(): Int64
>>     
>> 
>> 功能：获取 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型的最小值。 返回值：
>>                            * [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型的最小值。
>> extend Int8 <: MaxMinValue<Int8>
>>     
>>     extend Int8 <: MaxMinValue<Int8>
>>     
>> 
>> 功能：为 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型扩展 MaxMinValue 接口。 父类型：
>>                            * MaxMinValue<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)>
>> static func getMax()
>>     
>>     public static func getMax(): Int8
>>     
>> 
>> 功能：获取 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型的最大值。 返回值：
>>                            * [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) - [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型的最大值。
>> static func getMin()
>>     接口
>>     interface FloatingPoint<T>
>>     
>>     
>>     public interface FloatingPoint<T> <: Number<T> {
>>         static func getE(): T
>>         static func getInf(): T
>>         static func getPI(): T
>>         static func getMinDenormal(): T
>>         static func getMinNormal(): T
>>         static func getNaN(): T
>>         func isInf(): Bool
>>         func isNaN(): Bool
>>         func isNormal(): Bool
>>     }
>>     
>> 
>> 功能：本接口提供了浮点数相关的方法。 父类型：
>>                            * Number<T>
>> static func getE()
>>     
>>     static func getE(): T
>>     
>> 
>> 功能：获取 T 类型的自然常数。 返回值：
>>                            * T - 类型 T 的自然常数。
>> static func getInf()
>>     
>>     static func getInf(): T
>>     
>> 
>> 功能：获取浮点数的无穷数。 返回值：
>>                            * T - 类型 T 的无穷数。
>> static func getPI()
>>     
>>     static func getPI(): T
>>     
>> 
>> 功能：获取 T 类型的圆周率常数。 返回值：
>>                            * T - 类型 T 的圆周率常数。
>> static func getMinDenormal()
>>     
>>     static func getMinDenormal(): T
>>     
>> 
>> 功能：获取单精度浮点数的最小次正规数。 返回值：
>>                            * T - 类型 T 的最小次正规数。
>> static func getMinNormal()
>>     
>>     static func getMinNormal(): T
>>     
>> 
>> 功能：获取单精度浮点数的最小正规数。 返回值：
>>                            * T - 类型 T 的最小正规数。
>> static func getNaN()
>>     
>>     static func getNaN(): T
>>     
>> 
>> 功能：获取浮点数的非数。 返回值：
>>                            * T - 类型 T 的非数。
>> func isInf()
>>     
>>     func isInf(): Bool
>>     
>> 
>> 功能：判断浮点数是否为无穷数值。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 如果浮点数的值正无穷大或负无穷大，则返回 `true`；否则，返回 `false`。
>> func isNaN()
>>     
>>     func isNaN(): Bool
>>     
>> 
>> 功能：判断浮点数是否为非数值。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 如果浮点数的值为非数值，则返回 `true`；否则，返回 `false`。
>> func isNormal()
>>     
>>     func isNormal(): Bool
>>     
>> 
>> 功能：判断浮点数是否为常规数值。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 如果是正常的浮点数，返回 `true`；否则，返回 `false`。
>> extend Float16 <: FloatingPoint<Float16>
>>     
>>     extend Float16 <: FloatingPoint<Float16>
>>     
>> 
>> 功能：为 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型扩展 FloatingPoint<Float16> 接口。 父类型：
>>                            * FloatingPoint<[Float16](../../core/core_package_api/core_package_intrinsics.html#float16)>
>> static func getE()
>>     
>>     public static func getE(): Float16
>>     
>> 
>> 功能：获取半精度浮点数类型的自然常数。 返回值：
>>                            * [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) - 半精度浮点数类型的自然常数。
>> static func getInf()
>>     
>>     public static func getInf(): Float16
>>     
>> 
>> 功能：获取半精度浮点数类型的无穷数值。 返回值：
>>                            * [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) - 半精度浮点数类型的无穷数值。
>> static func getPI()
>>     
>>     public static func getPI(): Float16
>>     
>> 
>> 功能：获取半精度浮点数类型的圆周率常数。 返回值：
>>                            * [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) - 半精度浮点数类型的圆周率常数。
>> static func getMinDenormal()
>>     
>>     public static func getMinDenormal(): Float16
>>     
>> 
>> 功能：获取半精度浮点数类型的最小次正规数。 返回值：
>>                            * [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) - 半精度浮点数类型的最小次正规数。
>> static func getMinNormal()
>>     
>>     public static func getMinNormal(): Float16
>>     
>> 
>> 功能：获取半精度浮点数类型的最小正规数。 返回值：
>>                            * [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) - 半精度浮点数类型的最小正规数。
>> static func getNaN()
>>     
>>     public static func getNaN(): Float16
>>     
>> 
>> 功能：获取半精度浮点数类型的非数。 返回值：
>>                            * [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) - 半精度浮点数类型的非数。
>> extend Float32 <: FloatingPoint<Float32>
>>     
>>     extend Float32 <: FloatingPoint<Float32>
>>     
>> 
>> 功能：为 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型扩展 FloatingPoint<Float32> 接口。 父类型：
>>                            * FloatingPoint<[Float32](../../core/core_package_api/core_package_intrinsics.html#float32)>
>> static func getE()
>>     
>>     public static func getE(): Float32
>>     
>> 
>> 功能：获取单精度浮点数类型的自然常数。 返回值：
>>                            * [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) - 单精度浮点数类型的自然常数。
>> static func getInf()
>>     
>>     public static func getInf(): Float32
>>     
>> 
>> 功能：获取单精度浮点数类型的无穷数值。 返回值：
>>                            * [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) - 单精度浮点数类型的无穷数值。
>> static func getPI()
>>     
>>     public static func getPI(): Float32
>>     
>> 
>> 功能：获取单精度浮点数类型的圆周率常数。 返回值：
>>                            * [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) - 单精度浮点数类型的圆周率常数。
>> static func getMinDenormal()
>>     
>>     public static func getMinDenormal(): Float32
>>     
>> 
>> 功能：获取单精度浮点数类型的最小次正规数。 返回值：
>>                            * [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) - 单精度浮点数类型的最小次正规数。
>> static func getMinNormal()public static func getMin(): Int8
>>     `
>> 
>> 功能：获取 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型的最小值。 返回值：
>>                            * [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) \- [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型的最小值。
>> extend IntNative <: MaxMinValue<IntNative>
>>     
>>     extend IntNative <: MaxMinValue<IntNative>
>>     
>> 
>> 功能：为 [IntNative](../../core/core_package_api/core_package_intrinsics.html#intnative) 类型扩展 MaxMinValue 接口。 父类型：
>>                            * MaxMinValue<[IntNative](../../core/core_package_api/core_package_intrinsics.html#intnative)>
>> static func getMax()
>>     
>>     public static func getMax(): IntNative
>>     
>> 
>> 功能：获取 [IntNative](../../core/core_package_api/core_package_intrinsics.html#intnative) 类型的最大值。 返回值：
>>                            * [IntNative](../../core/core_package_api/core_package_intrinsics.html#intnative) \- [IntNative](../../core/core_package_api/core_package_intrinsics.html#intnative) 类型的最大值。
>> static func getMin()
>>     
>>     public static func getMin(): IntNative
>>     
>> 
>> 功能：获取 [IntNative](../../core/core_package_api/core_package_intrinsics.html#intnative) 类型的最小值。 返回值：
>>                            * [IntNative](../../core/core_package_api/core_package_intrinsics.html#intnative) \- [IntNative](../../core/core_package_api/core_package_intrinsics.html#intnative) 类型的最小值。
>> extend UInt16 <: MaxMinValue<UInt16>
>>     
>>     extend UInt16 <: MaxMinValue<UInt16>
>>     
>> 
>> 功能：为 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型扩展 MaxMinValue 接口。 父类型：
>>                            * MaxMinValue<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)>
>> static func getMax()
>>     
>>     public static func getMax(): UInt16
>>     
>> 
>> 功能：获取 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型的最大值。 返回值：
>>                            * [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) \- [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型的最大值。
>> static func getMin()
>>     
>>     public static func getMin(): UInt16
>>     
>> 
>> 功能：获取 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型的最小值。 返回值：
>>                            * [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) \- [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型的最小值。
>> extend UInt32 <: MaxMinValue<UInt32>
>>     
>>     extend UInt32 <: MaxMinValue<UInt32>
>>     
>> 
>> 功能：为 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型扩展 MaxMinValue 接口。 父类型：
>>                            * MaxMinValue<[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32)>
>> static func getMax()
>>     
>>     public static func getMax(): UInt32
>>     
>> 
>> 功能：获取 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型的最大值。 返回值：
>>                            * [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) \- [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型的最大值。
>> static func getMin()
>>     
>>     public static func getMin(): UInt32
>>     
>> 
>> 功能：获取 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型的最小值。 返回值：
>>                            * [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) \- [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型的最小值。
>> extend UInt64 <: MaxMinValue<UInt64>
>>     
>>     extend UInt64 <: MaxMinValue<UInt64>
>>     
>> 
>> 功能：为 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型扩展 MaxMinValue 接口。 父类型：
>>                            * MaxMinValue<[UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64)>
>> static func getMax()
>>     
>>     public static func getMax(): UInt64
>>     
>> 
>> 功能：获取 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型的最大值。 返回值：
>>                            * [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) \- [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型的最大值。
>> static func getMin()
>>     
>>     public static func getMin(): UInt64
>>     
>> 
>> 功能：获取 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型的最小值。 返回值：
>>                            * [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) \- [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型的最小值。
>> extend UInt8 <: MaxMinValue<UInt8>
>>     
>>     extend UInt8 <: MaxMinValue<UInt8>
>>     
>> 
>> 功能：为 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型扩展 MaxMinValue 接口。 父类型：
>>                            * MaxMinValue<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)>
>> static func getMax()
>>     
>>     public static func getMax(): UInt8
>>     
>> 
>> 功能：获取 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型的最大值。 返回值：
>>                            * [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) \- [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型的最大值。
>> static func getMin()
>>     
>>     public static func getMin(): UInt8
>>     
>> 
>> 功能：获取 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型的最小值。 返回值：
>>                            * [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) \- [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型的最小值。
>> extend UIntNative <: MaxMinValue<UIntNative>
>>     
>>     extend UIntNative <: MaxMinValue<UIntNative>
>>     
>> 
>> 功能：为 [UIntNative](../../core/core_package_api/core_package_intrinsics.html#uintnative) 类型扩展 MaxMinValue 接口。 父类型：
>>                            * MaxMinValue<[UIntNative](../../core/core_package_api/core_package_intrinsics.html#uintnative)>
>> static func getMax()
>>     
>>     public static func getMax(): UIntNative
>>     
>> 
>> 功能：获取 [UIntNative](../../core/core_package_api/core_package_intrinsics.html#uintnative) 类型的最大值。 返回值：
>>                            * [UIntNative](../../core/core_package_api/core_package_intrinsics.html#uintnative) \- [UIntNative](../../core/core_package_api/core_package_intrinsics.html#uintnative) 类型的最大值。
>> static func getMin()
>>     
>>     public static func getMin(): UIntNative
>>     
>> 
>> 功能：获取 [UIntNative](../../core/core_package_api/core_package_intrinsics.html#uintnative) 类型的最小值。 返回值：
>>                            * [UIntNative](../../core/core_package_api/core_package_intrinsics.html#uintnative) \- [UIntNative](../../core/core_package_api/core_package_intrinsics.html#uintnative) 类型的最小值。
>> interface Number<T>
>>     
>>     public interface Number<T> {
>>         operator func +(rhs: T): T
>>         operator func -(rhs: T): T
>>         operator func *(rhs: T): T
>>         operator func /(rhs: T): T
>>         operator func -(): T
>>     }
>>     
>> 
>> 功能：提供数值类型相关的方法。 operator func +(T)
>>     
>>     operator func +(rhs: T): T
>>     
>> 
>> 功能：算术运算符，计算加法。 参数：
>>                            * rhs: T - 运算符右边的数，表示另一个加数。
>> 返回值：
>>                            * T - 计算所得和。
>> operator func -(T)
>>     
>>     operator func -(rhs: T): T
>>     
>> 
>> 功能：算术运算符，计算减法。 参数：
>>                            * rhs: T - 运算符右边的数，表示减数。
>> 返回值：
>>                            * T - 计算所得差。
>> operator func *(T)
>>     
>>     operator func *(rhs: T): T
>>     
>> 
>> 功能：算术运算符，计算乘法。 参数：
>>                            * rhs: T - 运算符右边的数，表示另一个乘数。
>> 返回值：
>>                            * T - 计算所得积。
>> operator func /(T)
>>     
>>     operator func /(rhs: T): T
>>     
>> 
>> 功能：算术运算符，计算除法。 参数：
>>                            * rhs: T - 运算符右边的数，表示除数。
>> 返回值：
>>                            * T - 计算所得商。
>> operator func -()
>>     
>>     operator func -(): T
>>     
>> 
>> 功能：算术运算符，计算取负的值。 返回值：
>>                            * T - 取负的值。
>> extend Float16 <: Number<Float16>
>>     
>>     extend Float16 <: Number<Float16> {}
>>     
>> 
>> 功能：为 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型扩展 Number<T> 接口。 父类型：
>>                            * Number<[Float16](../../core/core_package_api/core_package_intrinsics.html#float16)>
>> extend Float32 <: Number<Float32>
>>     
>>     extend Float32 <: Number<Float32> {}
>>     
>> 
>> 功能：为 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型扩展 Number<T> 接口。 父类型：
>>                            * Number<[Float32](../../core/core_package_api/core_package_intrinsics.html#float32)>
>> extend Float64 <: Number<Float64>
>>     
>>     extend Float64 <: Number<Float64> {}
>>     
>> 
>> 功能：为 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型扩展 Number<T> 接口。 父类型：
>>                            * Number<[Float64](../../core/core_package_api/core_package_intrinsics.html#float64)>
>> extend Int16 <: Number<Int16>
>>     
>>     extend Int16 <: Number<Int16> {}
>>     
>> 
>> 功能：为 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型扩展 Number<T> 接口。 父类型：
>>                            * Number<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)>
>> extend Int32 <: Number<Int32>
>>     
>>     extend Int32 <: Number<Int32> {}
>>     
>> 
>> 功能：为 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型扩展 Number<T> 接口。 父类型：
>>                            * Number<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)>
>> extend Int64 <: Number<Int64>
>>     
>>     extend Int64 <: Number<Int64> {}
>>     
>> 
>> 功能：为 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型扩展 Number<T> 接口。 父类型：
>>                            * Number<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)>
>> extend Int8 <: Number<Int8>
>>     
>>     extend Int8 <: Number<Int8> {}
>>     
>> 
>> 功能：为 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型扩展 Number<T> 接口。 父类型：
>>                            * Number<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)>
>> extend IntNative <: Number<IntNative>
>>     
>>     extend IntNative <: Number<IntNative> {}
>>     
>> 
>> 功能：为 [IntNative](../../core/core_package_api/core_package_intrinsics.html#intnative) 类型扩展 Number<T> 接口。 父类型：
>>                            * Number<[IntNative](../../core/core_package_api/core_package_intrinsics.html#intnative)>
>> extend UInt16 <: Number<UInt16>
>>     
>>     extend UInt16 <: Number<UInt16> {}
>>     
>> 
>> 功能：为 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型扩展 Number<T> 接口。 父类型：
>>                            * Number<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)>
>> extend UInt32 <: Number<UInt32>
>>     
>>     extend UInt32 <: Number<UInt32> {}
>>     
>> 
>> 功能：为 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型扩展 Number<T> 接口。 父类型：
>>                            * Number<[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32)>
>> extend UInt64 <: Number<UInt64>
>>     
>>     extend UInt64 <: Number<UInt64> {}
>>     
>> 
>> 功能：为 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型扩展 Number<T> 接口。 父类型：
>>                            * Number<[UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64)>
>> extend UInt8 <: Number<UInt8>
>>     
>>     extend UInt8 <: Number<UInt8> {}
>>     
>> 
>> 功能：为 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型扩展 Number<T> 接口。 父类型：
>>                            * Number<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)>
>> extend UIntNative <: Number<UIntNative>
>>     
>>     extend UIntNative <: Number<UIntNative> {}
>>     
>> 
>> 功能：为 [UIntNative](../../core/core_package_api/core_package_intrinsics.html#uintnative) 类型扩展 Number<T> 接口。 父类型：
>>                            * Number<[UIntNative](../../core/core_package_api/core_package_intrinsics.html#uintnative)>
>> std.math.numeric 功能介绍 math.numeric 包对基础类型可表达范围之外提供扩展能力。 例如：
>>                            1. 支持大整数(BigInt)；
>>                            2. 支持高精度十进制数(Decimal)类型；
>>                            3. 提供常见的数学运算能力包括高精度运算规则。
>> API 列表 函数 函数名| 功能  
>> ---|---  
>> [abs(BigInt)](./math_numeric_package_api/math_numeric_package_funcs.html#func-absbigint)| 求一个 `BigInt` 的绝对值。  
>> [abs(Decimal)](./math_numeric_package_api/math_numeric_package_funcs.html#func-absdecimal)| 求一个 `Decimal` 的绝对值。  
>> [countOne(BigInt) (deprecated)](./math_numeric_package_api/math_numeric_package_funcs.html#func-countonebigint-deprecated)| 计算并返回入参 `BigInt` 的二进制补码中 1 的个数。  
>> [countOnes(BigInt)](./math_numeric_package_api/math_numeric_package_funcs.html#func-countonesbigint)| 计算并返回入参 `BigInt` 的二进制补码中 1 的个数。  
>> [gcd(BigInt, BigInt)](./math_numeric_package_api/math_numeric_package_funcs.html#func-gcdbigint-bigint)| 求两个 `BigInt` 的最大公约数。总是返回非负数（相当于绝对值的最大公约数）。  
>> [lcm(BigInt, BigInt)](./math_numeric_package_api/math_numeric_package_funcs.html#func-lcmbigint-bigint)| 求两个 `BigInt` 的最小公倍数。除了入参有 0 时返回 0 外，总是返回正数（相当于绝对值的最小公倍数）。  
>> [round(Decimal, RoundingMode)](./math_numeric_package_api/math_numeric_package_funcs.html#func-rounddecimal-roundingmode)| 计算 `Decimal` 的舍入值，根据舍入方式向邻近的整数舍入。  
>> [sqrt(BigInt)](./math_numeric_package_api/math_numeric_package_funcs.html#func-sqrtbigint)| 求 `BigInt` 的算术平方根，向下取整。  
>> [sqrt(Decimal)](./math_numeric_package_api/math_numeric_package_funcs.html#func-sqrtdecimal)| 求 `Decimal` 的算术平方根。结果为无限小数场景时，默认采用 IEEE 754-2019 decimal128 对结果进行舍入。  
>> [trailingZeros(BigInt)](./math_numeric_package_api/math_numeric_package_funcs.html#func-trailingzerosbigint)| 求 `BigInt` 的二进制表达中的从最低位算起，连续位为 0 的个数。如果最低位不是 0，则返回 0。  
>> 枚举 枚举| 功能  
>> ---|---  
>> [OverflowStrategy](./math_numeric_package_api/math_numeric_package_enums.html#enum-overflowstrategy)| 溢出策略枚举类，共包含 3 种溢出策略。`BigInt` 类型、`Decimal` 类型转换为整数类型时，允许指定不同的溢出处理策略。  
>> 结构体 结构体| 功能  
>> ---|---  
>> [BigInt](./math_numeric_package_api/math_numeric_package_structs.html#struct-bigint)| BigInt 定义为任意精度（二进制）的有符号整数。仓颉的 struct BigInt 用于任意精度有符号整数的计算，类型转换等。  
>> [Decimal](./math_numeric_package_api/math_numeric_package_structs.html#struct-decimal)| Decimal 用于表示任意精度的有符号的十进制数。允许操作过程指定上下文，指定结果精度及舍入规则。提供基础类型 (Int、UInt、String、Float等) 与 BigInt 类型互相转换能力，支持 Decimal 对象基本属性查询等能力，支持基础数学运算操作，提供对象比较、hash、字符串打印等基础能力。
