接口 interface Formattable  
>>       
>>     public interface Formattable {
>>         func format(fmt: String): String
>>     }
>>     
>> 
>> 功能：该接口定义了格式化函数，即根据格式化参数将指定类型实例转换为对应格式的字符串。 格式化参数相关的说明请参见 convert 包中的[功能介绍](./../convert_package_overview.html#%E5%8A%9F%E8%83%BD%E4%BB%8B%E7%BB%8D)。 其他类型可通过实现该接口提供格式化功能。 func format(String)
>>     
>>     func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前实例格式化后得到的字符串。
>> extend Float16 <: Formattable
>>     
>>     extend Float16 <: Formattable
>>     
>> 
>> 功能：为 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 实例转换为格式化字符串。接口 interface Formattable
>>     
>>     public interface Formattable {
>>         func format(fmt: String): String
>>     }
>>     
>> 
>> 功能：该接口定义了格式化函数，即根据格式化参数将指定类型实例转换为对应格式的字符串。 格式化参数相关的说明请参见 convert 包中的[功能介绍](./../convert_package_overview.html#%E5%8A%9F%E8%83%BD%E4%BB%8B%E7%BB%8D)。 其他类型可通过实现该接口提供格式化功能。 func format(String)
>>     
>>     func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前实例格式化后得到的字符串。
>> extend Float16 <: Formattable
>>     
>>     extend Float16 <: Formattable
>>     
>> 
>> 功能：为 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend Float32 <: Formattable
>>     
>>     extend Float32 <: Formattable
>>     
>> 
>> 功能：为 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend Float64 <: Formattable
>>     
>>     extend Float64 <: Formattable
>>     
>> 
>> 功能：为 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend Int16 <: Formattable
>>     
>>     extend Int16 <: Formattable
>>     
>> 
>> 功能：为 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend Int32 <: Formattable
>>     
>>     extend Int32 <: Formattable
>>     
>> 
>> 功能：为 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend Int64 <: Formattable
>>     
>>     extend Int64 <: Formattable
>>     
>> 
>> 功能：为 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend Int8 <: Formattable
>>     
>>     extend Int8 <: Formattable
>>     
>> 
>> 功能：为 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend Rune <: Formattable
>>     
>>     extend Rune <: Formattable
>>     
>> 
>> 功能：为 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend UInt16 <: Formattable
>>     
>>     extend UInt16 <: Formattable
>>     
>> 
>> 功能：为 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 实例转换为格式化字符串。 父类型：
>>                        * Formattable接口 interface Formattable
>>     
>>     public interface Formattable {
>>         func format(fmt: String): String
>>     }
>>     
>> 
>> 功能：该接口定义了格式化函数，即根据格式化参数将指定类型实例转换为对应格式的字符串。 格式化参数相关的说明请参见 convert 包中的[功能介绍](./../convert_package_overview.html#%E5%8A%9F%E8%83%BD%E4%BB%8B%E7%BB%8D)。 其他类型可通过实现该接口提供格式化功能。 func format(String)
>>     
>>     func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前实例格式化后得到的字符串。
>> extend Float16 <: Formattable
>>     
>>     extend Float16 <: Formattable
>>     
>> 
>> 功能：为 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend Float32 <: Formattable
>>     
>>     extend Float32 <: Formattable
>>     
>> 
>> 功能：为 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend Float64 <: Formattable
>>     
>>     extend Float64 <: Formattable
>>     
>> 
>> 功能：为 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend Int16 <: Formattable
>>     
>>     extend Int16 <: Formattable
>>     
>> 
>> 功能：为 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend Int32 <: Formattable
>>     
>>     extend Int32 <: Formattable
>>     
>> 
>> 功能：为 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend Int64 <: Formattable
>>     
>>     extend Int64 <: Formattable
>>     
>> 
>> 功能：为 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend Int8 <: Formattable
>>     
>>     extend Int8 <: Formattable
>>     
>> 
>> 功能：为 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend Rune <: Formattable
>>     
>>     extend Rune <: Formattable
>>     
>> 
>> 功能：为 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend UInt16 <: Formattable
>>     
>>     extend UInt16 <: Formattable
>>     
>> 
>> 功能：为 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend UInt32 <: Formattable
>>     
>>     extend UInt32 <: Formattable
>>     
>> 
>> 功能：为 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend UInt64 <: Formattable
>>     
>>     extend UInt64 <: Formattable
>>     
>> 
>> 功能：为 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend UInt8 <: Formattable
>>     
>>     extend UInt8 <: Formattable
>>     
>> 
>> 功能：为 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> interface Parsable<T>
>>     
>>     public interface Parsable<T> {
>>         static func parse(value: String): T
>>         static func tryParse(value: String): Option<T>
>>     }
>>     
>> 
>> 功能：本接口提供了统一的方法，以支持将字符串解析为特定类型。 本接口提供了 parse 和 tryParse 两套方法，parse 方法将在解析失败时抛出异常，tryParse 方法将返回值用 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont) 包裹，解析失败时将返回 None。 本包内已经为 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool)，[Rune](../../core/core_package_api/core_package_intrinsics.html#rune)，[Float16](../../core/core_package_api/core_package_intrinsics.html#float16)，[Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 等基础类型实现该接口，可用于将字符串转换为这些类型。 static func parse(String)
>>     
>>     static func parse(value: String): T
>>     
>> 
>> 功能：从字符串中解析特定类型。 参数：
>>                        * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 待解析的字符串。
>> 返回值：
>>                        * T - 转换后的值。
>> static func tryParse(String)
>>     
>>     static func tryParse(value: String): Option<T>
>>     
>> 
>> 功能：从字符串中解析特定类型。 参数：
>>                        * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 待解析的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<T> \- 转换后值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<T>.None。
>> extend Bool <: Parsable<Bool>
>>     
>>     extend Bool <: Parsable<Bool>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 类型字面量的字符串转换为 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 值的相关操作函数。 父类型：
>>                        * Parsable<[Bool](../../core/core_package_api/core_package_intrinsics.html#bool)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Bool
>>     
>> 
>> 功能：将 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 类型字面量的字符串转换为 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) \- 返回转换后 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空或转换失败时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Bool>
>>     
>> 
>> 功能：将 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Bool](../../core/core_package_api/core_package_intrinsics.html#bool)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Bool](../../core/core_package_api/core_package_intrinsics.html#bool)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Bool](../../core/core_package_api/core_package_intrinsics.html#bool)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Bool](../../core/core_package_api/core_package_intrinsics.html#bool)>.None。
>> extend Float16 <: Parsable<Float16>
>>     
>>     extend Float16 <: Parsable<Float16>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型字面量的字符串转换为 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 值的相关操作函数。 父类型：
>>                        * Parsable<[Float16](../../core/core_package_api/core_package_intrinsics.html#float16)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Float16
>>     
>> 
>> 功能：将 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型字面量的字符串转换为 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) \- 返回转换后 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串不符合浮点数语法时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Float16>
>>     
>> 
>> 功能：将 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float16](../../core/core_package_api/core_package_intrinsics.html#float16)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float16](../../core/core_package_api/core_package_intrinsics.html#float16)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float16](../../core/core_package_api/core_package_intrinsics.html#float16)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float16](../../core/core_package_api/core_package_intrinsics.html#float16)>.None。
>> extend Float32 <: Parsable<Float32>
>>     
>>     extend Float32 <: Parsable<Float32>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型字面量的字符串转换为 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 值的相关操作函数。 父类型：
>>                        * Parsable<[Float32](../../core/core_package_api/core_package_intrinsics.html#float32)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Float32
>>     
>> 
>> 功能：将 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型字面量的字符串转换为 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) \- 返回转换后 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串不符合浮点数语法时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Float32>
>>     
>> 
>> 功能：将 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float32](../../core/core_package_api/core_package_intrinsics.html#float32)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float32](../../core/core_package_api/core_package_intrinsics.html#float32)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float32](../../core/core_package_api/core_package_intrinsics.html#float32)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float32](../../core/core_package_api/core_package_intrinsics.html#float32)>.None。
>> extend Float64 <: Parsable<Float64>
>>     
>>     extend Float64 <: Parsable<Float64>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型字面量的字符串转换为 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 值的相关操作函数。 父类型：
>>                        * Parsable<[Float64](../../core/core_package_api/core_package_intrinsics.html#float64)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Float64
>>     
>> 
>> 功能：将 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型字面量的字符串转换为 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) \- 返回转换后 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串不符合浮点数语法时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Float64>
>>     
>> 
>> 功能：将 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float64](../../core/core_package_api/core_package_intrinsics.html#float64)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float64](../../core/core_package_api/core_package_intrinsics.html#float64)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float64](../../core/core_package_api/core_package_intrinsics.html#float64)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float64](../../core/core_package_api/core_package_intrinsics.html#float64)>.None。
>> extend Int16 <: Parsable<Int16>
>>     
>>     extend Int16 <: Parsable<Int16>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型字面量的字符串转换为 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 值的相关操作函数。 父类型：
>>                        * Parsable<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Int16
>>     
>> 
>> 功能：将 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型字面量的字符串转换为 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) \- 返回转换后 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空，首位为 `+` ，转换失败，或转换后超出 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 范围，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Int16>
>>     
>> 
>> 功能：将 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)>.None。
>> extend Int32 <: Parsable<Int32>
>>     
>>     extend Int32 <: Parsable<Int32>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型字面量的字符串转换为 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 值的相关操作函数。 父类型：
>>                        * Parsable<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Int32
>>     
>> 
>> 功能：将 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型字面量的字符串转换为 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) \- 返回转换后 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空，首位为 `+` ，转换失败，或转换后超出 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 范围，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Int32>
>>     
>> 
>> 功能：将 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)>.None。
>> extend Int64 <: Parsable<Int64>
>>     
>>     extend Int64 <: Parsable<Int64>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型字面量的字符串转换为 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 值的相关操作函数。 父类型：
>>                        * Parsable<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Int64
>>     
>> 
>> 功能：将 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型字面量的字符串转换为 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) \- 返回转换后 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空，首位为 `+` ，转换失败，或转换后超出 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 范围，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Int64>
>>     
>> 
>> 功能：将 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)>.None。
>> extend Int8 <: Parsable<Int8>
>>     
>>     extend Int8 <: Parsable<Int8>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型字面量的字符串转换为 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 值的相关操作函数。 父类型：
>>                        * Parsable<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Int8
>>     
>> 
>> 功能：将 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型字面量的字符串转换为 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) \- 返回转换后 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空，首位为 `+` ，转换失败，或转换后超出 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 范围，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Int8>
>>     
>> 
>> 功能：将 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)>.None。
>> extend Rune <: Parsable<Rune>
>>     
>>     extend Rune <: Parsable<Rune>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 类型字面量的字符串转换为 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 值的相关操作函数。 父类型：
>>                        * Parsable<[Rune](../../core/core_package_api/core_package_intrinsics.html#rune)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Rune
>>     
>> 
>> 功能：将 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 类型字面量的字符串转换为 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) \- 返回转换后 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空，或转换失败时，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Rune>
>>     
>> 
>> 功能：将 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Rune](../../core/core_package_api/core_package_intrinsics.html#rune)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Rune](../../core/core_package_api/core_package_intrinsics.html#rune)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Rune](../../core/core_package_api/core_package_intrinsics.html#rune)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Rune](../../core/core_package_api/core_package_intrinsics.html#rune)>.None。
>> extend UInt16 <: Parsable<UInt16>
>>     
>>     extend UInt16 <: Parsable<UInt16>
>>     
>> 
>> 功能：此扩展主要用于实现将 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型字面量的字符串转换为 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 值的相关操作函数。 父类型：
>>                        * Parsable<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): UInt16
>>     
>> 
>> 功能：将 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型字面量的字符串转换为 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) \- 返回转换后 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空，首位为 `+` 或 `-`，转换失败，或转换后超出 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 范围，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<UInt16>
>>     
>> 
>> 功能：将 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)>.None。
>> extend UInt32 <: Parsable<UInt32>
>>     
>>     extend UInt32 <: Parsable<UInt32>
>>     
>> 
>> 功能：此扩展主要用于实现将 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型字面量的字符串转换为 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 值的相关操作函数。 父类型：
>>                        * Parsable<[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): UInt32
>>     
>> 
>> 功能：将 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型字面量的字符串转换为 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) \- 返回转换后 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空，首位为 `+` 或 `-`，转换失败，或转换后超出 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 范围，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<UInt32>
>>     
>> 
>> 功能：将 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32)>.None。
>> extend UInt64 <: Parsable<UInt64>
>>     
>>     extend UInt64 <: Parsable<UInt64>
>>     
>> 
>> 功能：此扩展主要用于实现将 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型字面量的字符串转换为 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 值的相关操作函数。 父类型：
>>                        * Parsable<[UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64)>接口 interface Formattable
>>     
>>     public interface Formattable {
>>         func format(fmt: String): String
>>     }
>>     
>> 
>> 功能：该接口定义了格式化函数，即根据格式化参数将指定类型实例转换为对应格式的字符串。 格式化参数相关的说明请参见 convert 包中的[功能介绍](./../convert_package_overview.html#%E5%8A%9F%E8%83%BD%E4%BB%8B%E7%BB%8D)。 其他类型可通过实现该接口提供格式化功能。 func format(String)
>>     
>>     func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前实例格式化后得到的字符串。
>> extend Float16 <: Formattable
>>     
>>     extend Float16 <: Formattable
>>     
>> 
>> 功能：为 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend Float32 <: Formattable
>>     
>>     extend Float32 <: Formattable
>>     
>> 
>> 功能：为 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend Float64 <: Formattable
>>     
>>     extend Float64 <: Formattable
>>     
>> 
>> 功能：为 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend Int16 <: Formattable
>>     
>>     extend Int16 <: Formattable
>>     
>> 
>> 功能：为 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend Int32 <: Formattable
>>     
>>     extend Int32 <: Formattable
>>     
>> 
>> 功能：为 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend Int64 <: Formattable
>>     
>>     extend Int64 <: Formattable
>>     
>> 
>> 功能：为 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend Int8 <: Formattable
>>     
>>     extend Int8 <: Formattable
>>     
>> 
>> 功能：为 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend Rune <: Formattable
>>     
>>     extend Rune <: Formattable
>>     
>> 
>> 功能：为 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend UInt16 <: Formattable
>>     
>>     extend UInt16 <: Formattable
>>     
>> 
>> 功能：为 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend UInt32 <: Formattable
>>     
>>     extend UInt32 <: Formattable
>>     
>> 
>> 功能：为 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend UInt64 <: Formattable
>>     
>>     extend UInt64 <: Formattable
>>     
>> 
>> 功能：为 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend UInt8 <: Formattable
>>     
>>     extend UInt8 <: Formattable
>>     
>> 
>> 功能：为 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> interface Parsable<T>
>>     
>>     public interface Parsable<T> {
>>         static func parse(value: String): T
>>         static func tryParse(value: String): Option<T>
>>     }
>>     
>> 
>> 功能：本接口提供了统一的方法，以支持将字符串解析为特定类型。 本接口提供了 parse 和 tryParse 两套方法，parse 方法将在解析失败时抛出异常，tryParse 方法将返回值用 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont) 包裹，解析失败时将返回 None。 本包内已经为 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool)，[Rune](../../core/core_package_api/core_package_intrinsics.html#rune)，[Float16](../../core/core_package_api/core_package_intrinsics.html#float16)，[Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 等基础类型实现该接口，可用于将字符串转换为这些类型。 static func parse(String)
>>     
>>     static func parse(value: String): T
>>     
>> 
>> 功能：从字符串中解析特定类型。 参数：
>>                        * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 待解析的字符串。
>> 返回值：
>>                        * T - 转换后的值。
>> static func tryParse(String)
>>     
>>     static func tryParse(value: String): Option<T>
>>     
>> 
>> 功能：从字符串中解析特定类型。 参数：
>>                        * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 待解析的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<T> \- 转换后值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<T>.None。
>> extend Bool <: Parsable<Bool>
>>     
>>     extend Bool <: Parsable<Bool>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 类型字面量的字符串转换为 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 值的相关操作函数。 父类型：
>>                        * Parsable<[Bool](../../core/core_package_api/core_package_intrinsics.html#bool)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Bool
>>     
>> 
>> 功能：将 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 类型字面量的字符串转换为 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) \- 返回转换后 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空或转换失败时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Bool>
>>     
>> 
>> 功能：将 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Bool](../../core/core_package_api/core_package_intrinsics.html#bool)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Bool](../../core/core_package_api/core_package_intrinsics.html#bool)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Bool](../../core/core_package_api/core_package_intrinsics.html#bool)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Bool](../../core/core_package_api/core_package_intrinsics.html#bool)>.None。
>> extend Float16 <: Parsable<Float16>
>>     
>>     extend Float16 <: Parsable<Float16>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型字面量的字符串转换为 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 值的相关操作函数。 父类型：
>>                        * Parsable<[Float16](../../core/core_package_api/core_package_intrinsics.html#float16)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Float16
>>     
>> 
>> 功能：将 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型字面量的字符串转换为 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) \- 返回转换后 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串不符合浮点数语法时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Float16>
>>     
>> 
>> 功能：将 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float16](../../core/core_package_api/core_package_intrinsics.html#float16)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float16](../../core/core_package_api/core_package_intrinsics.html#float16)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float16](../../core/core_package_api/core_package_intrinsics.html#float16)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float16](../../core/core_package_api/core_package_intrinsics.html#float16)>.None。
>> extend Float32 <: Parsable<Float32>
>>     
>>     extend Float32 <: Parsable<Float32>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型字面量的字符串转换为 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 值的相关操作函数。 父类型：
>>                        * Parsable<[Float32](../../core/core_package_api/core_package_intrinsics.html#float32)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Float32
>>     
>> 
>> 功能：将 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型字面量的字符串转换为 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) \- 返回转换后 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串不符合浮点数语法时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Float32>
>>     
>> 
>> 功能：将 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float32](../../core/core_package_api/core_package_intrinsics.html#float32)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float32](../../core/core_package_api/core_package_intrinsics.html#float32)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float32](../../core/core_package_api/core_package_intrinsics.html#float32)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float32](../../core/core_package_api/core_package_intrinsics.html#float32)>.None。
>> extend Float64 <: Parsable<Float64>
>>     
>>     extend Float64 <: Parsable父类型：
>>     
>>     
>>                                                   * Formattable
>>     
>>     
>>     func format(String)
>>     
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend Float32 <: Formattable
>>     
>>     extend Float32 <: Formattable
>>     
>> 
>> 功能：为 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend Float64 <: Formattable
>>     
>>     extend Float64 <: Formattable
>>     
>> 
>> 功能：为 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend Int16 <: Formattable
>>     
>>     extend Int16 <: Formattable
>>     
>> 
>> 功能：为 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend Int32 <: Formattable
>>     
>>     extend Int32 <: Formattable
>>     
>> 
>> 功能：为 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend Int64 <: Formattable
>>     
>>     extend Int64 <: Formattable
>>     
>> 
>> 功能：为 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend Int8 <: Formattable
>>     
>>     extend Int8 <: Formattable
>>     
>> 
>> 功能：为 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend Rune <: Formattable
>>     
>>     extend Rune <: Formattable
>>     
>> 
>> 功能：为 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend UInt16 <: Formattable
>>     
>>     extend UInt16 <: Formattable
>>     
>> 
>> 功能：为 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend UInt32 <: Formattable
>>     
>>     extend UInt32 <: Formattable
>>     
>> 
>> 功能：为 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend UInt64 <: Formattable
>>     
>>     extend UInt64 <: Formattable
>>     
>> 
>> 功能：为 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> extend UInt8 <: Formattable
>>     
>>     extend UInt8 <: Formattable
>>     
>> 
>> 功能：为 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 将当前 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 fmt 不合法时抛出异常。
>> interface Parsable<T>
>>     
>>     public interface Parsable<T> {
>>         static func parse(value: String): T
>>         static func tryParse(value: String): Option<T>
>>     }
>>     
>> 
>> 功能：本接口提供了统一的方法，以支持将字符串解析为特定类型。 本接口提供了 parse 和 tryParse 两套方法，parse 方法将在解析失败时抛出异常，tryParse 方法将返回值用 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont) 包裹，解析失败时将返回 None。 本包内已经为 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool)，[Rune](../../core/core_package_api/core_package_intrinsics.html#rune)，[Float16](../../core/core_package_api/core_package_intrinsics.html#float16)，[Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 等基础类型实现该接口，可用于将字符串转换为这些类型。 static func parse(String)
>>     
>>     static func parse(value: String): T
>>     
>> 
>> 功能：从字符串中解析特定类型。 参数：
>>                        * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 待解析的字符串。
>> 返回值：
>>                        * T - 转换后的值。
>> static func tryParse(String)
>>     
>>     static func tryParse(value: String): Option<T>
>>     
>> 
>> 功能：从字符串中解析特定类型。 参数：
>>                        * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 待解析的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<T> \- 转换后值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<T>.None。
>> extend Bool <: Parsable<Bool>
>>     
>>     extend Bool <: Parsable<Bool>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 类型字面量的字符串转换为 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 值的相关操作函数。 父类型：
>>                        * Parsable<[Bool](../../core/core_package_api/core_package_intrinsics.html#bool)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Bool
>>     
>> 
>> 功能：将 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 类型字面量的字符串转换为 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) \- 返回转换后 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空或转换失败时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Bool>
>>     
>> 
>> 功能：将 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Bool](../../core/core_package_api/core_package_intrinsics.html#bool)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Bool](../../core/core_package_api/core_package_intrinsics.html#bool)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Bool](../../core/core_package_api/core_package_intrinsics.html#bool)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Bool](../../core/core_package_api/core_package_intrinsics.html#bool)>.None。
>> extend Float16 <: Parsable<Float16>
>>     
>>     extend Float16 <: Parsable<Float16>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型字面量的字符串转换为 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 值的相关操作函数。 父类型：
>>                        * Parsable<[Float16](../../core/core_package_api/core_package_intrinsics.html#float16)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Float16
>>     
>> 
>> 功能：将 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型字面量的字符串转换为 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) \- 返回转换后 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串不符合浮点数语法时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Float16>
>>     
>> 
>> 功能：将 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float16](../../core/core_package_api/core_package_intrinsics.html#float16)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float16](../../core/core_package_api/core_package_intrinsics.html#float16)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float16](../../core/core_package_api/core_package_intrinsics.html#float16)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float16](../../core/core_package_api/core_package_intrinsics.html#float16)>.None。
>> extend Float32 <: Parsable<Float32>
>>     
>>     extend Float32 <: Parsable<Float32>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型字面量的字符串转换为 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 值的相关操作函数。 父类型：
>>                        * Parsable<[Float32](../../core/core_package_api/core_package_intrinsics.html#float32)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Float32
>>     
>> 
>> 功能：将 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型字面量的字符串转换为 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) \- 返回转换后 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串不符合浮点数语法时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Float32>
>>     
>> 
>> 功能：将 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float32](../../core/core_package_api/core_package_intrinsics.html#float32)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float32](../../core/core_package_api/core_package_intrinsics.html#float32)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float32](../../core/core_package_api/core_package_intrinsics.html#float32)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float32](../../core/core_package_api/core_package_intrinsics.html#float32)>.None。
>> extend Float64 <: Parsable<Float64>
>>     
>>     extend Float64 <: Parsable<Float64>
>>     
>>     
>>     <Float64> `
>> 
>> 功能：此扩展主要用于实现将 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型字面量的字符串转换为 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 值的相关操作函数。 父类型：
>>                        * Parsable<[Float64](../../core/core_package_api/core_package_intrinsics.html#float64)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Float64
>>     
>> 
>> 功能：将 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型字面量的字符串转换为 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) - 返回转换后 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) - 当字符串不符合浮点数语法时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Float64>
>>     
>> 
>> 功能：将 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float64](../../core/core_package_api/core_package_intrinsics.html#float64)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float64](../../core/core_package_api/core_package_intrinsics.html#float64)> - 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float64](../../core/core_package_api/core_package_intrinsics.html#float64)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float64](../../core/core_package_api/core_package_intrinsics.html#float64)>.None。
>> extend Int16 <: Parsable<Int16>
>>     
>>     extend Int16 <: Parsable<Int16>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型字面量的字符串转换为 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 值的相关操作函数。 父类型：
>>                        * Parsable<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Int16
>>     
>> 
>> 功能：将 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型字面量的字符串转换为 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) - 返回转换后 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) - 当字符串为空，首位为 `+` ，转换失败，或转换后超出 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 范围，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Int16>
>>     
>> 
>> 功能：将 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)> - 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)>.None。
>> extend Int32 <: Parsable<Int32>
>>     
>>     extend Int32 <: Parsable<Int32>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型字面量的字符串转换为 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 值的相关操作函数。 父类型：
>>                        * Parsable<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Int32
>>     
>> 
>> 功能：将 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型字面量的字符串转换为 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) - 返回转换后 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) - 当字符串为空，首位为 `+` ，转换失败，或转换后超出 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 范围，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Int32>
>>     
>> 
>> 功能：将 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)> - 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)>.None。
>> extend Int64 <: Parsable<Int64>
>>     
>>     extend Int64 <: Parsable<Int64>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型字面量的字符串转换为 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 值的相关操作函数。 父类型：
>>                        * Parsable<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Int64
>>     
>> 
>> 功能：将 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型字面量的字符串转换为 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 返回转换后 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) - 当字符串为空，首位为 `+` ，转换失败，或转换后超出 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 范围，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Int64>
>>     
>> 
>> 功能：将 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)> - 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)>.None。
>> extend Int8 <: Parsable<Int8>
>>     
>>     extend Int8 <: Parsable<Int8>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型字面量的字符串转换为 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 值的相关操作函数。 父类型：
>>                        * Parsable<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Int8
>>     
>> 
>> 功能：将 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型字面量的字符串转换为 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) - 返回转换后 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) - 当字符串为空，首位为 `+` ，转换失败，或转换后超出 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 范围，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Int8>
>>     
>> 
>> 功能：将 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)> - 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)>.None。
>> extend Rune <: Parsable<Rune>
>>     
>>     extend Rune <: Parsable<Rune>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 类型字面量的字符串转换为 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 值的相关操作函数。 父类型：
>>                        * Parsable<[Rune](../../core/core_package_api/core_package_intrinsics.html#rune)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Rune
>>     
>> 
>> 功能：将 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 类型字面量的字符串转换为 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) - 返回转换后 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) - 当字符串为空，或转换失败时，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Rune>
>>     
>> 
>> 功能：将 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Rune](../../core/core_package_api/core_package_intrinsics.html#rune)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Rune](../../core/core_package_api/core_package_intrinsics.html#rune)> - 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Rune](../../core/core_package_api/core_package_intrinsics.html#rune)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Rune](../../core/core_package_api/core_package_intrinsics.html#rune)>.None。
>> extend UInt16 <: Parsable<UInt16>
>>     
>>     extend UInt16 <: Parsable<UInt16>
>>     
>> 
>> 功能：此扩展主要用于实现将 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型字面量的字符串转换为 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 值的相关操作函数。 父类型：
>>                        * Parsable<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): UInt16
>>     
>> 
>> 功能：将 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型字面量的字符串转换为 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) - 返回转换后 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) - 当字符串为空，首位为 `+` 或 `-`，转换失败，或转换后超出 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 范围，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<UInt16>
>>     
>> 
>> 功能：将 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)> - 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)>.None。
>> extend UInt32 <: Parsable<UInt32>
>>     
>>     extend UInt32 <: Parsable<UInt32>
>>     
>> 
>> 功能：此扩展主要用于实现将 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型字面量的字符串转换为 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 值的相关操作函数。 父类型：
>>                        * Parsable<[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): UInt32
>>     
>> 
>> 功能：将 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型字面量的字符串转换为 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) - 返回转换后 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) - 当字符串为空，首位为 `+` 或 `-`，转换失败，或转换后超出 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 范围，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<UInt32>
>>     
>> 
>> 功能：将 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32)> - 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32)>.None。
>> extend UInt64 <: Parsable<UInt64>
>>     
>>     extend UInt64 <: Parsable<UInt64>
>>     
>> 
>> 功能：此扩展主要用于实现将 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型字面量的字符串转换为 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 值的相关操作函数。 父类型：
>>                        * Parsable<[UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): UInt64
>>     
>> 
>> 功能：将 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型字面量的字符串转换为 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) - 返回转换后 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) - 当字符串为空，首位为 `+` 或 `-`，转换失败，或转换后超出 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 范围，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<UInt64>
>>     
>> 
>> 功能：将 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64)> - 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64)>.None。
>> extend UInt8 <: Parsable<UInt8>
>>     
>>     extend UInt8 <: Parsable<UInt8>
>>     
>> 
>> 功能：此扩展主要用于实现将 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型字面量的字符串转换为 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 值的相关操作函数。 父类型：
>>                        * Parsable<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): UInt8
>>     
>> 
>> 功能：将 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型字面量的字符串转换为 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) - 返回转换后 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) - 当字符串为空，首位为 `+` 或 `-`，转换失败，或转换后超出 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 范围，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<UInt8>
>>     
>> 
>> 功能：将 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)> - 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)>.None。
>> interface RadixConvertible<T>
>>     
>>     public interface RadixConvertible<T> {
>>     
>>         static func parse(value: String, radix!: Int): T
>>     
>>         static func tryParse(value: String, radix!: Int): Option<T>
>>     
>>         func toString(radix!: Int): String
>>     }
>>     
>> 
>> 功能：本接口提供了统一的方法，以支持将指定进制的字符串解析为特定类型。 进制将以参数指定，不按字符串前缀指定，进制表示范围必须在 2-36 之间，否则会抛异常，超过十进制的表示按大或者小写英文字母序表示，即 10 个数字 + 26 个英文字母 = 36 进制，Int 系列的字符串可以以 `+`、`-` 开头，如果不以这两个符号开头则处理成 `+`，UInt 系列的字符串可以以 `+` 开头，如果以 `-` 开头会抛出异常。返回指定进制形式字符串，超过十进制的表示按小写英文字母序表示，即 10 个数字 + 26 个小写英文字母 = 36 进制。 本接口提供了 parse 和 tryParse 两套方法，parse 方法将在解析失败时抛出异常，tryParse 方法将返回值用 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont) 包裹，解析失败时将返回 None。 本包内已经为[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)，[UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 等基础类型实现该接口，可用于将字符串转换为这些类型。 static func parse(String, Int)
>>     
>>     static func parse(value: String, radix!: Int): T
>>     
>> 
>> 功能：从指定进制字符串中解析特定类型。 参数：
>>                        * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 待解析的字符串。
>>                        * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) - 指定的进制。
>> 返回值：
>>                        * T - 转换后的值。
>> static func tryParse(String, Int)
>>     
>>     static func tryParse(value: String, radix!: Int): Option<T>
>>     
>> 
>> 功能：从指定进制字符串中解析特定类型。 参数：
>>                        * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 待解析的字符串。
>>                        * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) - 指定的进制。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<T> - 转换后值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<T>.None。
>> func toString(Int)
>>     
>>     func toString(radix!: Int): String
>>     
>> 
>> 功能：返回指定进制形式字符串。 参数：
>>                        * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) - 指定的进制。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) - 指定进制形式字符串。
>> extend Int8 <: RadixConvertible<Int8>
>>     
>>     extend Int8 <: RadixConvertible<Int8>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型字面量的字符串转换为 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 值的相关操作函数。 父类型：
>>                        * RadixConvertible<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)>
>> static func parse(String, Int)
>>     
>>     public static func parse(value: String, radix!: Int): Int8
>>     
>> 
>> 功能：将 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型字面量的字符串转换为 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 值。 参数：
>>                        * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>>                        * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) - 指定的进制。
>> 返回值：
>>                        * [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) - 返回转换后 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) - 当字符串为空，进制超出范围，转换后超出 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 范围或字符串中含有无效的 UTF-8 字符，转换失败时，抛出异常。
>> static func tryParse(String, Int)
>>     
>>     public static func tryParse(value: String, radix!: Int): Option<Int8>func format(String)
>>     
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) - 将当前 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) - 当 fmt 不合法时抛出异常。
>> extend UInt32 <: Formattable
>>     
>>     extend UInt32 <: Formattable
>>     
>> 
>> 功能：为 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) - 将当前 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) - 当 fmt 不合法时抛出异常。
>> extend UInt64 <: Formattable
>>     
>>     extend UInt64 <: Formattable
>>     
>> 
>> 功能：为 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) - 将当前 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) - 当 fmt 不合法时抛出异常。
>> extend UInt8 <: Formattable
>>     
>>     extend UInt8 <: Formattable
>>     
>> 
>> 功能：为 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 扩展 [Formattable](convert_package_interfaces.html#interface-formattable) 接口，以实现将 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 实例转换为格式化字符串。 父类型：
>>                        * Formattable
>> func format(String)
>>     
>>     public func format(fmt: String): String
>>     
>> 
>> 功能：根据格式化参数将当前 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型实例格式化为对应格式的字符串。 参数：
>>                        * fmt: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 格式化参数。
>> 返回值：
>>                        * [String](../../core/core_package_api/core_package_structs.html#struct-string) - 将当前 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型实例格式化后得到的字符串。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) - 当 fmt 不合法时抛出异常。
>> interface Parsable<T>
>>     
>>     public interface Parsable<T> {
>>         static func parse(value: String): T
>>         static func tryParse(value: String): Option<T>
>>     }
>>     
>> 
>> 功能：本接口提供了统一的方法，以支持将字符串解析为特定类型。 本接口提供了 parse 和 tryParse 两套方法，parse 方法将在解析失败时抛出异常，tryParse 方法将返回值用 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont) 包裹，解析失败时将返回 None。 本包内已经为 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool)，[Rune](../../core/core_package_api/core_package_intrinsics.html#rune)，[Float16](../../core/core_package_api/core_package_intrinsics.html#float16)，[Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 等基础类型实现该接口，可用于将字符串转换为这些类型。 static func parse(String)
>>     
>>     static func parse(value: String): T
>>     
>> 
>> 功能：从字符串中解析特定类型。 参数：
>>                        * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 待解析的字符串。
>> 返回值：
>>                        * T - 转换后的值。
>> static func tryParse(String)
>>     
>>     static func tryParse(value: String): Option<T>
>>     
>> 
>> 功能：从字符串中解析特定类型。 参数：
>>                        * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 待解析的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<T> - 转换后值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<T>.None。
>> extend Bool <: Parsable<Bool>
>>     
>>     extend Bool <: Parsable<Bool>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 类型字面量的字符串转换为 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 值的相关操作函数。 父类型：
>>                        * Parsable<[Bool](../../core/core_package_api/core_package_intrinsics.html#bool)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Bool
>>     
>> 
>> 功能：将 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 类型字面量的字符串转换为 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 返回转换后 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) - 当字符串为空或转换失败时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Bool>
>>     
>> 
>> 功能：将 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Bool](../../core/core_package_api/core_package_intrinsics.html#bool)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Bool](../../core/core_package_api/core_package_intrinsics.html#bool)> - 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Bool](../../core/core_package_api/core_package_intrinsics.html#bool)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Bool](../../core/core_package_api/core_package_intrinsics.html#bool)>.None。
>> extend Float16 <: Parsable<Float16>
>>     
>>     extend Float16 <: Parsable<Float16>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型字面量的字符串转换为 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 值的相关操作函数。 父类型：
>>                        * Parsable<[Float16](../../core/core_package_api/core_package_intrinsics.html#float16)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Float16
>>     
>> 
>> 功能：将 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型字面量的字符串转换为 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) - 返回转换后 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) - 当字符串不符合浮点数语法时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Float16>
>>     
>> 
>> 功能：将 [Float16](../../core/core_package_api/core_package_intrinsics.html#float16) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float16](../../core/core_package_api/core_package_intrinsics.html#float16)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float16](../../core/core_package_api/core_package_intrinsics.html#float16)> - 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float16](../../core/core_package_api/core_package_intrinsics.html#float16)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float16](../../core/core_package_api/core_package_intrinsics.html#float16)>.None。
>> extend Float32 <: Parsable<Float32>
>>     
>>     extend Float32 <: Parsable<Float32>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型字面量的字符串转换为 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 值的相关操作函数。 父类型：
>>                        * Parsable<[Float32](../../core/core_package_api/core_package_intrinsics.html#float32)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Float32
>>     
>> 
>> 功能：将 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型字面量的字符串转换为 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) - 返回转换后 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) - 当字符串不符合浮点数语法时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Float32>
>>     
>> 
>> 功能：将 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float32](../../core/core_package_api/core_package_intrinsics.html#float32)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float32](../../core/core_package_api/core_package_intrinsics.html#float32)> - 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float32](../../core/core_package_api/core_package_intrinsics.html#float32)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float32](../../core/core_package_api/core_package_intrinsics.html#float32)>.None。
>> extend Float64 <: Parsable<Float64>
>>     
>>     extend Float64 <: Parsable<Float64>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型字面量的字符串转换为 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 值的相关操作函数。 父类型：
>>                        * Parsable<[Float64](../../core/core_package_api/core_package_intrinsics.html#float64)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Float64
>>     
>> 
>> 功能：将 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型字面量的字符串转换为 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) - 返回转换后 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) - 当字符串不符合浮点数语法时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Float64>
>>     
>> 
>> 功能：将 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float64](../../core/core_package_api/core_package_intrinsics.html#float64)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float64](../../core/core_package_api/core_package_intrinsics.html#float64)> - 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float64](../../core/core_package_api/core_package_intrinsics.html#float64)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float64](../../core/core_package_api/core_package_intrinsics.html#float64)>.None。
>> extend Int16 <: Parsable<Int16>
>>     
>>     extend Int16 <: Parsable<Int16>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型字面量的字符串转换为 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 值的相关操作函数。 父类型：
>>                        * Parsable<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Int16
>>     
>> 
>> 功能：将 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型字面量的字符串转换为 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) - 返回转换后 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) - 当字符串为空，首位为 `+` ，转换失败，或转换后超出 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 范围，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Int16>
>>     
>> 
>> 功能：将 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)> - 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)>.None。
>> extend Int32 <: Parsable<Int32>
>>     
>>     extend Int32 <: Parsable<Int32>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型字面量的字符串转换为 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 值的相关操作函数。 父类型：
>>                        * Parsable<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Int32
>>     
>> 
>> 功能：将 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型字面量的字符串转换为 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) - 返回转换后 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) - 当字符串为空，首位为 `+` ，转换失败，或转换后超出 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 范围，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Int32>
>>     
>> 
>> 功能：将 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)> - 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)>.None。
>> extend Int64 <: Parsable<Int64>
>>     
>>     extend Int64 <: Parsable<Int64>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型字面量的字符串转换为 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 值的相关操作函数。 父类型：
>>                        * Parsable<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Int64
>>     
>> 
>> 功能：将 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型字面量的字符串转换为 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 返回转换后 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) - 当字符串为空，首位为 `+` ，转换失败，或转换后超出 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 范围，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Int64>
>>     
>> 
>> 功能：将 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)> - 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)>.None。
>> extend Int8 <: Parsable<Int8>
>>     
>>     extend Int8 <: Parsable<Int8>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型字面量的字符串转换为 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 值的相关操作函数。 父类型：
>>                        * Parsable<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Int8
>>     
>> 
>> 功能：将 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型字面量的字符串转换为 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) - 返回转换后 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) - 当字符串为空，首位为 `+` ，转换失败，或转换后超出 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 范围，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Int8>
>>     
>> 
>> 功能：将 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)> - 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)>.None。
>> extend Rune <: Parsable<Rune>
>>     
>>     extend Rune <: Parsable<Rune>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 类型字面量的字符串转换为 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 值的相关操作函数。 父类型：
>>                        * Parsable<[Rune](../../core/core_package_api/core_package_intrinsics.html#rune)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Rune
>>     
>> 
>> 功能：将 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 类型字面量的字符串转换为 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) - 返回转换后 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) - 当字符串为空，或转换失败时，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Rune>
>>     
>> 
>> 功能：将 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Rune](../../core/core_package_api/core_package_intrinsics.html#rune)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Rune](../../core/core_package_api/core_package_intrinsics.html#rune)> - 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Rune](../../core/core_package_api/core_package_intrinsics.html#rune)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Rune](../../core/core_package_api/core_package_intrinsics.html#rune)>.None。
>> extend UInt16 <: Parsable<UInt16>
>>     
>>     extend UInt16 <: Parsable<UInt16>
>>     
>> 
>> 功能：此扩展主要用于实现将 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型字面量的字符串转换为 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 值的相关操作函数。 父类型：
>>                        * Parsable<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): UInt16
>>     
>> 
>> 功能：将 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型字面量的字符串转换为 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) - 返回转换后 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 值。
>> 异常：
>>                        * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) - 当字符串为空，首位为 `+` 或 `-`，转换失败，或转换后超出 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 范围，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<UInt16>
>>     
>> 
>> 功能：将 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)> 值。 参数：
>>                        * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要转换的字符串。
>> 返回值：
>>                        * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)> - 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)>.None。
>> extend UInt32 <: Parsable<UInt32>
>>     
>>     extend UInt32 <: Parsable<UInt32>
>>     
>> 
>> 功能：此扩展主要用于实现将 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型字面量的字符串转换为 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 值的相关操作函数。 父类型：
>>                        * Parsable<[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): UInt32
>>     
>> 
>> 功能：将 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型字面量的字符串转换为 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 值。 参数：
>>                        * data:  `
>> 
>> 功能：将 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)> 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)>.None。
>> func toString(Int)
>>     
>>     public func toString(radix!: Int): String
>>     
>> 
>> 功能：返回指定进制形式字符串。 参数：
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 指定进制形式字符串。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当进制不合规时，抛出异常。
>> extend Int16 <: RadixConvertible<Int16>
>>     
>>     extend Int16 <: RadixConvertible<Int16>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型字面量的字符串转换为 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 值的相关操作函数。 父类型：
>>                          * RadixConvertible<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)>
>> static func parse(String, Int)
>>     
>>     public static func parse(value: String, radix!: Int): Int16
>>     
>> 
>> 功能：将 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型字面量的字符串转换为 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) \- 返回转换后 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 值。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空、进制超出范围、转换后超出 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 范围、字符串中含有无效的 UTF-8 字符、转换失败时，抛出异常。
>> static func tryParse(String, Int)
>>     
>>     public static func tryParse(value: String, radix!: Int): Option<Int16>
>>     
>> 
>> 功能：将 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)> 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)>.None。
>> func toString(Int)
>>     
>>     public func toString(radix!: Int): String
>>     
>> 
>> 功能：返回指定进制形式字符串。 参数：
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 指定进制形式字符串。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当进制不合规时，抛出异常。
>> extend Int32 <: RadixConvertible<Int32>
>>     
>>     extend Int32 <: RadixConvertible<Int32>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型字面量的字符串转换为 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 值的相关操作函数。 父类型：
>>                          * RadixConvertible<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)>
>> static func parse(String, Int)
>>     
>>     public static func parse(value: String, radix!: Int): Int32
>>     
>> 
>> 功能：将 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型字面量的字符串转换为 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) \- 返回转换后 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 值。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空、进制超出范围、转换后超出 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 范围、字符串中含有无效的 UTF-8 字符、转换失败时，抛出异常。
>> static func tryParse(String, Int)
>>     
>>     public static func tryParse(value: String, radix!: Int): Option<Int32>
>>     
>> 
>> 功能：将 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)> 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)>.None。
>> func toString(Int)
>>     
>>     public func toString(radix!: Int): String
>>     
>> 
>> 功能：返回指定进制形式字符串。 参数：
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 指定进制形式字符串。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当进制不合规时，抛出异常。
>> extend Int64 <: RadixConvertible<Int64>
>>     
>>     extend Int64 <: RadixConvertible<Int64>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型字面量的字符串转换为 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 值的相关操作函数。 父类型：
>>                          * RadixConvertible<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)>
>> static func parse(String, Int)
>>     
>>     public static func parse(value: String, radix!: Int): Int64
>>     
>> 
>> 功能：将 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型字面量的字符串转换为 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) \- 返回转换后 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 值。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空、进制超出范围、转换后超出 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 范围、字符串中含有无效的 UTF-8 字符、转换失败时，抛出异常。
>> static func tryParse(String, Int)
>>     
>>     public static func tryParse(value: String, radix!: Int): Option<Int64>
>>     
>> 
>> 功能：将 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)> 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)>.None。
>> func toString(Int)
>>     
>>     public func toString(radix!: Int): String
>>     
>> 
>> 功能：返回指定进制形式字符串。 参数：
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 指定进制形式字符串。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当进制不合规时，抛出异常。
>> extend UInt8 <: RadixConvertible<UInt8>
>>     
>>     extend UInt8 <: RadixConvertible<UInt8>
>>     
>> 
>> 功能：此扩展主要用于实现将 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型字面量的字符串转换为 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 值的相关操作函数。 父类型：
>>                          * RadixConvertible<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)>
>> static func parse(String, Int)
>>     
>>     public static func parse(value: String, radix!: Int): UInt8
>>     
>> 
>> 功能：将 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型字面量的字符串转换为 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) \- 返回转换后 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 值。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空、进制超出范围、首位为 `-`、转换后超出 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 范围、字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String, Int)
>>     
>>     public static func tryParse(value: String, radix!: Int): Option<UInt8>
>>     
>> 
>> 功能：将 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)> 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)>.None。
>> func toString(Int)
>>     
>>     public func toString(radix!: Int): String
>>     
>> 
>> 功能：返回指定进制形式字符串。 参数：
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 指定进制形式字符串。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当进制不合规时，抛出异常。
>> extend UInt16 <: RadixConvertible<UInt16>
>>     
>>     extend UInt16 <: RadixConvertible<UInt16>
>>     
>> 
>> 功能：此扩展主要用于实现将 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型字面量的字符串转换为 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 值的相关操作函数。 父类型：
>>                          * RadixConvertible<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)>
>> static func parse(String, Int)
>>     
>>     public static func parse(value: String, radix!: Int): UInt16
>>     
>> 
>> 功能：将 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型字面量的字符串转换为 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) \- 返回转换后 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 值。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空、进制超出范围、首位为 `-`、转换后超出 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 范围、字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String, Int)
>>     
>>     public static func tryParse(value: String, radix!: Int): Option<UInt16>
>>     
>> 
>> 功能：将 [功能：此扩展主要用于实现将 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型字面量的字符串转换为 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 值的相关操作函数。 父类型：
>>                          * Parsable<[Float64](../../core/core_package_api/core_package_intrinsics.html#float64)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Float64
>>     
>> 
>> 功能：将 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型字面量的字符串转换为 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 值。 参数：
>>                          * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                          * [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) \- 返回转换后 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 值。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串不符合浮点数语法时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Float64>
>>     
>> 
>> 功能：将 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float64](../../core/core_package_api/core_package_intrinsics.html#float64)> 值。 参数：
>>                          * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float64](../../core/core_package_api/core_package_intrinsics.html#float64)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float64](../../core/core_package_api/core_package_intrinsics.html#float64)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Float64](../../core/core_package_api/core_package_intrinsics.html#float64)>.None。
>> extend Int16 <: Parsable<Int16>
>>     
>>     extend Int16 <: Parsable<Int16>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型字面量的字符串转换为 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 值的相关操作函数。 父类型：
>>                          * Parsable<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Int16
>>     
>> 
>> 功能：将 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型字面量的字符串转换为 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 值。 参数：
>>                          * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                          * [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) \- 返回转换后 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 值。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空，首位为 `+` ，转换失败，或转换后超出 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 范围，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Int16>
>>     
>> 
>> 功能：将 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)> 值。 参数：
>>                          * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)>.None。
>> extend Int32 <: Parsable<Int32>
>>     
>>     extend Int32 <: Parsable<Int32>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型字面量的字符串转换为 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 值的相关操作函数。 父类型：
>>                          * Parsable<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Int32
>>     
>> 
>> 功能：将 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型字面量的字符串转换为 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 值。 参数：
>>                          * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                          * [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) \- 返回转换后 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 值。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空，首位为 `+` ，转换失败，或转换后超出 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 范围，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Int32>
>>     
>> 
>> 功能：将 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)> 值。 参数：
>>                          * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)>.None。
>> extend Int64 <: Parsable<Int64>
>>     
>>     extend Int64 <: Parsable<Int64>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型字面量的字符串转换为 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 值的相关操作函数。 父类型：
>>                          * Parsable<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Int64
>>     
>> 
>> 功能：将 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型字面量的字符串转换为 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 值。 参数：
>>                          * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                          * [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) \- 返回转换后 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 值。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空，首位为 `+` ，转换失败，或转换后超出 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 范围，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Int64>
>>     
>> 
>> 功能：将 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)> 值。 参数：
>>                          * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)>.None。
>> extend Int8 <: Parsable<Int8>
>>     
>>     extend Int8 <: Parsable<Int8>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型字面量的字符串转换为 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 值的相关操作函数。 父类型：
>>                          * Parsable<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Int8
>>     
>> 
>> 功能：将 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型字面量的字符串转换为 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 值。 参数：
>>                          * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                          * [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) \- 返回转换后 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 值。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空，首位为 `+` ，转换失败，或转换后超出 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 范围，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Int8>
>>     
>> 
>> 功能：将 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)> 值。 参数：
>>                          * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)>.None。
>> extend Rune <: Parsable<Rune>
>>     
>>     extend Rune <: Parsable<Rune>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 类型字面量的字符串转换为 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 值的相关操作函数。 父类型：
>>                          * Parsable<[Rune](../../core/core_package_api/core_package_intrinsics.html#rune)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): Rune
>>     
>> 
>> 功能：将 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 类型字面量的字符串转换为 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 值。 参数：
>>                          * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                          * [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) \- 返回转换后 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 值。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空，或转换失败时，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<Rune>
>>     
>> 
>> 功能：将 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Rune](../../core/core_package_api/core_package_intrinsics.html#rune)> 值。 参数：
>>                          * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Rune](../../core/core_package_api/core_package_intrinsics.html#rune)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Rune](../../core/core_package_api/core_package_intrinsics.html#rune)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Rune](../../core/core_package_api/core_package_intrinsics.html#rune)>.None。
>> extend UInt16 <: Parsable<UInt16>
>>     
>>     extend UInt16 <: Parsable<UInt16>
>>     
>> 
>> 功能：此扩展主要用于实现将 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型字面量的字符串转换为 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 值的相关操作函数。 父类型：
>>                          * Parsable<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): UInt16
>>     
>> 
>> 功能：将 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型字面量的字符串转换为 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 值。 参数：
>>                          * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                          * [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) \- 返回转换后 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 值。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空，首位为 `+` 或 `-`，转换失败，或转换后超出 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 范围，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<UInt16>
>>     
>> 
>> 功能：将 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)> 值。 参数：
>>                          * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)>.None。
>> extend UInt32 <: Parsable<UInt32>
>>     
>>     extend UInt32 <: Parsable<UInt32>
>>     
>> 
>> 功能：此扩展主要用于实现将 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型字面量的字符串转换为 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 值的相关操作函数。 父类型：
>>                          * Parsable<[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): UInt32
>>     
>> 
>> 功能：将 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型字面量的字符串转换为 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 值。 参数：
>>                          * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                          * [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) \- 返回转换后 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 值。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空，首位为 `+` 或 `-`，转换失败，或转换后超出 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 范围，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<UInt32>
>>     
>> 
>> 功能：将 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32)> 值。 参数：
>>                          * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32)>.None。
>> extend UInt64 <: Parsable<UInt64>
>>     
>>     extend UInt64 <: Parsable<UInt64>
>>     
>> 
>> 功能：此扩展主要用于实现将 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型字面量的字符串转换为 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 值的相关操作函数。 父类型：
>>                          * Parsable<[UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): UInt64
>>     
>> 
>> 功能：将 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型字面量的字符串转换为 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 值。 参数：
>>                          * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                          * [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) \- 返回转换后 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 值。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空，首位为 `+` 或 `-`，转换失败，或转换后超出 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 范围，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<UInt64>
>>     
>> 
>> 功能：将 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64)> 值。 参数：
>>                          * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64)>.None。
>> extend UInt8 <: Parsable<UInt8>
>>     
>>     extend UInt8 <: Parsable<UInt8>
>>     
>> 
>> 功能：此扩展主要用于实现将 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型字面量的字符串转换为 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 值的相关操作函数。 父类型：
>>                          * Parsable<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): UInt8
>>     
>> 
>> 功能：将 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型字面量的字符串转换为 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 值。 参数：
>>                          * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                          * [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) \- 返回转换后 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 值。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空，首位为 `+` 或 `-`，转换失败，或转换后超出 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 范围，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<UInt8>
>>     
>> 
>> 功能：将 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)> 值。 参数：
>>                          * data: UInt16[](../../core/core_package_api/core_package_structs.html#struct-string) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)> 值。 参数：
>>                            * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                            * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                            * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)>.None。
>> func toString(Int)
>>     
>>     public func toString(radix!: Int): String
>>     
>> 
>> 功能：返回指定进制形式字符串。 参数：
>>                            * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                            * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 指定进制形式字符串。
>> 异常：
>>                            * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当进制不合规时，抛出异常。
>> extend UInt32 <: RadixConvertible<UInt32>
>>     
>>     extend UInt32 <: RadixConvertible<UInt32>
>>     
>> 
>> 功能：此扩展主要用于实现将 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型字面量的字符串转换为 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 值的相关操作函数。 父类型：
>>                            * RadixConvertible<[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32)>
>> static func parse(String, Int)
>>     
>>     public static func parse(value: String, radix!: Int): UInt32
>>     
>> 
>> 功能：将 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型字面量的字符串转换为 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 值。 参数：
>>                            * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                            * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                            * [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) \- 返回转换后 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 值。
>> 异常：
>>                            * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空、进制超出范围、首位为 `-`、转换后超出 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 范围、字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String, Int)
>>     
>>     public static func tryParse(value: String, radix!: Int): Option<UInt32>
>>     
>> 
>> 功能：将 [UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32)> 值。 参数：
>>                            * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                            * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                            * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt32](../../core/core_package_api/core_package_intrinsics.html#uint32)>.None。
>> func toString(Int)
>>     
>>     public func toString(radix!: Int): String
>>     
>> 
>> 功能：返回指定进制形式字符串。 参数：
>>                            * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                            * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 指定进制形式字符串。
>> 异常：
>>                            * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当进制不合规时，抛出异常。
>> extend UInt64 <: RadixConvertible<UInt64>
>>     
>>     extend UInt64 <: RadixConvertible<UInt64>
>>     
>> 
>> 功能：此扩展主要用于实现将 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型字面量的字符串转换为 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 值的相关操作函数。 父类型：
>>                            * RadixConvertible<[UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64)>
>> static func parse(String, Int)
>>     
>>     public static func parse(value: String, radix!: Int): UInt64
>>     
>> 
>> 功能：将 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型字面量的字符串转换为 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 值。 参数：
>>                            * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                            * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                            * [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) \- 返回转换后 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 值。
>> 异常：
>>                            * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空、进制超出范围、首位为 `-`、转换后超出 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 范围、字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String, Int)
>>     
>>     public static func tryParse(value: String, radix!: Int): Option<UInt64>
>>     
>> 
>> 功能：将 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64)> 值。 参数：
>>                            * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                            * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                            * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64)>.None。
>> func toString(Int)
>>     
>>     public func toString(radix!: Int): String
>>     
>> 
>> 功能：返回指定进制形式字符串。 参数：
>>                            * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                            * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 指定进制形式字符串。
>> 异常：
>>                            * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当进制不合规时，抛出异常。
>> 异常类 class SqlException
>>     
>>     public open class SqlException <: Exception {
>>         public init()
>>         public init(message: String)
>>         public init(message: String, sqlState: String, errorCode: Int64)
>>     }
>>     
>> 
>> 功能：用于处理 sql 相关的异常。 父类型：
>>                            * [Exception](../../core/core_package_api/core_package_exceptions.html#class-exception)
>> prop errorCode
>>     
>>     public prop errorCode: Int64
>>     
>> 
>> 功能：数据库供应商返回的整数错误代码。 类型：[Int64](../../core/core_package_api/core_package_intrinsics.html#int64) prop message
>>     
>>     public override prop message: String
>>     
>> 
>> 功能：获取异常信息字符串。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop sqlState
>>     
>>     public prop sqlState: String
>>     
>> 
>> 功能：长度为五个字符的字符串，是数据库系统返回的最后执行的 sql 语句状态。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) init()
>>     
>>     public init()
>>     
>> 
>> 功能：无参构造函数。 init(String)
>>     
>>     public init(message: String)
>>     
>> 
>> 功能：根据异常信息创建 [SqlException](database_sql_package_exceptions.html#class-sqlexception) 实例。 参数：
>>                            * message: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 异常信息。
>> init(String, String, Int64)
>>     
>>     public init(message: String, sqlState: String, errorCode: Int64)
>>     
>> 
>> 功能：根据异常信息、SQL语句状态、错误码信息，创建 [SqlException](database_sql_package_exceptions.html#class-sqlexception) 实例。 参数：
>>                            * message: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 异常信息。
>>                            * sqlState: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 长度为五个字符的字符串，是数据库系统返回的最后执行的 sql 语句状态。
>>                            * errorCode: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) \- 数据库供应商返回的整数错误代码。
>> 接口 interface ColumnInfo
>>     
>>     public interface ColumnInfo {
>>         prop displaySize: Int64
>>         prop length: Int64
>>         prop name: String
>>         prop nullable: Bool
>>         prop scale: Int64
>>         prop typeName: String
>>     }
>>     
>> 
>> 功能：执行 Select/Query 语句返回结果的列信息。 prop displaySize
>>     
>>     prop displaySize: Int64
>>     
>> 
>> 功能：获取列值的最大显示长度，如果无限制，则应该返回 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64).Max （仍然受数据库的限制）。 类型：[Int64](../../core/core_package_api/core_package_intrinsics.html#int64) prop length
>>     
>>     prop length: Int64
>>     
>> 
>> 功能：获取列值大小。
>>
>>> **说明：**
>>>                            * 对于数值数据，表示最大精度。
>>>                            * 对于字符数据，表示以字符为单位的长度。
>>>                            * 对于日期时间数据类型，表示字符串表示形式的最大字符长度。
>>>                            * 对于二进制数据，表示以字节为单位的长度。
>>>                            * 对于 RowID 数据类型，表示以字节为单位的长度。
>>>                            * 对于列大小不适用的数据类型，返回 0。
>> 
>> 类型：[Int64](../../core/core_package_api/core_package_intrinsics.html#int64) prop name
>>     
>>     prop name: String
>>     
>> 
>> 功能：列名或者别名。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop nullable
>>     
>>     prop nullable: Bool
>>     
>> 
>> 功能：表示列值是否允许数据库 `Null` 值。 类型：[Bool](../../core/core_package_api/core_package_intrinsics.html#bool) prop scale
>>     
>>     prop scale: Int64
>>     
>> 
>> 功能：获取列值的小数长度，如果无小数部分，返回 0。 类型：[Int64](../../core/core_package_api/core_package_intrinsics.html#int64) prop typeName
>>     
>>     prop typeName: String
>>     
>> 
>> 功能：获取列类型名称，如果在仓颉中有对应数据类型的定义，返回对应类型的 `toString` 函数的返回值；如果在仓颉中无对应数据类型的定义，由数据库驱动定义。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) interface Connection
>>     
>>     public interface Connection <: Resource {
>>         prop state: ConnectionState
>>         func createTransaction(): Transaction
>>         func getMetaData(): Map<String, String>
>>         func prepareStatement(sql: String): Statement
>>     }
>>     
>> 
>> 功能：数据库连接接口。 继承该接口的 class、interface、struct 也需要遵守该接口中函数的入参及返回值定义。 父类型：
>>                            * [Resource](../../core/core_package_api/core_package_interfaces.html#interface-resource)
>> prop state
>>     
>>     prop state: ConnectionState
>>     
>> 
>> 功能：描述与数据源连接的当前状态。 类型：[ConnectionState](database_sql_package_enums.html#enum-connectionstate) func createTransaction()
>>     
>>     func createTransaction(): Transaction
>>     
>> 
>> 功能：创建事务对象。 返回值：
>>                            * [Transaction](database_sql_package_interfaces.html#interface-transaction) \- 事务对象。
>> 异常：
>>                            * [SqlException](database_sql_package_exceptions.html#class-sqlexception) \- 当已经处于事务状态，不支持并行事务时，抛出异常。
>> func getMetaData()
>>     
>>     func getMetaData(): Map<String, String>
>>     
>> 
>> 功能：返回连接到的数据源元数据。 返回值：
>>                            * [Map](../../collection/collection_package_api/collection_package_interface.html#interface-mapk-v)<[String](../../core/core_package_api/core_package_structs.html#struct-string), [String](../../core/core_package_api/core_package_structs.html#struct-string)> \- 数据源元数据。
>> func prepareStatement(String)
>>     
>>     func prepareStatement(sql: String): Statement
>>     
>> 
>> 功能：通过传入的 sql 语句，返回一个预执行的 [Statement](database_sql_package_interfaces.html#interface-statement) 对象实例。 参数：
>>                            * sql: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 预执行的 sql 语句，sql 语句的参数只支持 `?` 符号占位符。
>> 返回值：
>>                            * [Statement](database_sql_package_interfaces.html#interface-statement) \- 一个可以执行 sql 语句的实例对象。
>> 异常：
>>                            * [SqlException](database_sql_package_exceptions.html#class-sqlexception) \- 当 sql 语句包含不认识的字符时，抛出异常。
>> interface Datasource
>>     
>>     public interface Datasource <: Resource {
>>         func connect(): Connection
>>         func setOption(key: String, value: String): Unit
>>     }
>>     
>> 
>> 功能：数据源接口。 继承该接口的 class、interface、struct 也需要遵守该接口中函数的入参及返回值定义。 父类型：
>>                            * [Resource](../../core/core_package_api/core_package_interfaces.html#interface-resource)
>> func connect()
>>     
>>     func connect(): Connection
>>     
>> 
>> 功能：返回一个可用的连接。 返回值：
>>                            * [Connection](database_sql_package_interfaces.html#interface-connection) \- 数据库连接实例。
>> func setOption(String, String)
>>     
>>     func setOption(key: String, value: String): Unit
>>     
>> 
>> 功能：设置连接选项。 参数：
>>                            * key: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 连接选项名称。
>>                            * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 连接选项的值。
>> interface Driver
>>     
>>     public interface Driver {
>>         prop name: String
>>         prop preferredPooling: Bool
>>         prop version: String
>>         func open(connectionString: String, opts: Array<(String, String)>): Datasource
>>     }
>>     
>> 
>> 功能：数据库驱动接口。 继承该接口的 class、interface、struct 也需要遵守该接口中函数的入参及返回值定义。 prop name
>>     
>>     prop name: String
>>     
>> 
>> 功能：驱动名称。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop preferredPooling
>>     
>>     prop preferredPooling: Bool
>>     
>> 
>> 功能：指示驱动程序是否与连接池亲和。 当该属性为 `false` 时，不建议使用连接池进行管理。例如，对于某些数据库驱动（如 SQLite），连接池化的收益不明显，因此不建议使用连接池。 类型：[Bool](../../core/core_package_api/core_package_intrinsics.html#bool) prop version
>>     
>>     prop version: String
>>     
>> 
>> 功能：驱动版本。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) func open(String, Array<(String, String)>)
>>     
>>     func open(connectionString: String, opts: Array<(String, String)>): Datasource
>>     
>> 
>> 功能：通过 `connectionString` 和选项打开数据源。 参数：
>>                            * connectionString: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 数据库连接字符串。
>>                            * opts: [Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<([String](../../core/core_package_api/core_package_structs.html#struct-string), [String](../../core/core_package_api/core_package_structs.html#struct-string))> \- key，value 的 tuple 数组，打开数据源的选项。
>> 返回值：
>>                            * [Datasource](database_sql_package_interfaces.html#interface-datasource) \- 数据源实例。
>> interface QueryResult
>>     
>>     public interface QueryResult <: Resource {
>>         prop columnInfos: Array<ColumnInfo>
>>         func next(values: Array<SqlDbType>): Bool
>>         func next(): Bool
>>         func get<T>(index: Int): T
>>         func getOrNull<T>(index: Int): ?T
>>     }
>>     
>> 
>> 功能：执行 Select 语句产生的结果接口。 继承该接口的 class、interface、struct 也需要遵守该接口中函数的入参及返回值定义。 父类型：
>>                            * [Resource](../../core/core_package_api/core_package_interfaces.html#interface-resource)
>> prop columnInfos
>>     
>>     prop columnInfos: Array<ColumnInfo>
>>     
>> 
>> 功能：返回结果集的列信息，比如列名，列类型，列长度，是否允许数据库 Null 值等。 类型：[Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[ColumnInfo](database_sql_package_interfaces.html#interface-columninfo)> func get<T>(Int)
>>     
>>     func get<T>(index: Int): T
>>     
>> 
>> 功能：从结果集的当前行检索指定列的值。 返回值：
>>                            * T - `T` 类型的实例。
>> func getOrNull<T>(Int)
>>     
>>     func getOrNull<T>(index: Int): ?T
>>     
>> 
>> 功能：从结果集的当前行检索指定列的值，数据库列允许 SQL NULL。 返回值：
>>                            * ?T - `T` 类型的实例，如果为空，返回 None。
>> 异常：
>>                            * [SqlException](database_sql_package_exceptions.html#class-sqlexception) \- 索引超出列范围，或者行数据未准备好时，抛出异常。
>> func next()
>>     
>>     func next(): Bool
>>     
>> 
>> 功能：向后移动一行，必须先调用一次 `next()` 才能移动到第一行，第二次调用移动到第二行，依此类推。当返回 `true` 时，驱动会在结果集的当前行填入数据，当返回 `false` 时结束，且不会修改结果集当前行的内容。 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) \- 下一行存在数据则返回 `true`，否则返回 `false`。
>> func next(Array<SqlDbType>) (deprecated)
>>     
>>     func next(values: Array<SqlDbType>): Bool
>>     
>> 
>> 功能：向后移动一行，必须先调用一次 `next` 才能移动到第一行，第二次调用移动到第二行，依此类推。当返回 `true` 时，驱动会在 `values` 中填入行数据；当返回 `false` 时结束，且不会修改 `values` 的内容。
>>
>>> **注意：** 未来版本即将废弃不再使用，可使用 [next()](database_sql_package_interfaces.html#func-next) 替代。
>> 
>> 参数：
>>                            * values: [Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)> \- sql 数据类型的数据列表。
>> 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) \- 下一行存在数据则返回 `true`，否则返回 `false`。
>> interface SqlDbType (deprecated)
>>     
>>     public interface SqlDbType {
>>         prop name: String
>>     }
>>     
>> 
>> 功能：所有 sql 数据类型的父类。
>>
>>> **注意：** 未来版本即将废弃不再使用。
>> 
>> 要扩展用户定义的类型，请继承 [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated) 或 [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)。
>>
>>> **说明：** [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated) 接口所有实现类型都必须具有公共 `value` 属性。每种 sql 数据类型实现类，同时满足以下条件：
>>>                            * 只有一个参数的构造函数，参数类型为 `T`（`T` 为仓颉语言支持的类型）。
>>>                            * `public` 修饰的 `value` 属性，其类型必须上一条中使用的参数类型一致，其值为对应仓颉类型的值。
>>>                            * 如果数据类型允许 `null` 值，继承 [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)，`null` 值时，`value` 字段的值为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<T>.None。
>> 
>> prop name
>>     
>>     prop name: String
>>     
>> 
>> 功能：获取类型名称。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) interface SqlNullableDbType (deprecated)
>>     
>>     public interface SqlNullableDbType <: SqlDbType
>>     
>> 
>> 功能：允许 `null` 值的 sql 数据类型父类。
>>
>>> **注意：** 未来版本即将废弃不再使用。
>> 
>> 如果为 `null` 值，`value` 属性值为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont).None。 父类型：
>>                            * SqlDbType (deprecated)
>> interface Statement
>>     
>>     public interface Statement <: Resource {
>>         prop parameterColumnInfos: Array<ColumnInfo>
>>         func query(params: Array<SqlDbType>): QueryResult
>>         func setOption(key: String, value: String): Unit
>>         func update(params: Array<SqlDbType>): UpdateResult
>>         func set<T>(index: Int, value: T): Unit
>>         func setNull(index: Int): Unit
>>         func update(): UpdateResult
>>         func query(): QueryResult
>>     }
>>     
>> 
>> 功能：sql 语句预执行接口。 [String](database_sql_package_interfaces.html#interface-statement) \- 要转换的字符串。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)>.None。
>> interface RadixConvertible<T>
>>     
>>     public interface RadixConvertible<T> {
>>     
>>         static func parse(value: String, radix!: Int): T
>>     
>>         static func tryParse(value: String, radix!: Int): Option<T>
>>     
>>         func toString(radix!: Int): String
>>     }
>>     
>> 
>> 功能：本接口提供了统一的方法，以支持将指定进制的字符串解析为特定类型。 进制将以参数指定，不按字符串前缀指定，进制表示范围必须在 2-36 之间，否则会抛异常，超过十进制的表示按大或者小写英文字母序表示，即 10 个数字 + 26 个英文字母 = 36 进制，Int 系列的字符串可以以 `+`、`-` 开头，如果不以这两个符号开头则处理成 `+`，UInt 系列的字符串可以以 `+` 开头，如果以 `-` 开头会抛出异常。返回指定进制形式字符串，超过十进制的表示按小写英文字母序表示，即 10 个数字 + 26 个小写英文字母 = 36 进制。 本接口提供了 parse 和 tryParse 两套方法，parse 方法将在解析失败时抛出异常，tryParse 方法将返回值用 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont) 包裹，解析失败时将返回 None。 本包内已经为[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)，[UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 等基础类型实现该接口，可用于将字符串转换为这些类型。 static func parse(String, Int)
>>     
>>     static func parse(value: String, radix!: Int): T
>>     
>> 
>> 功能：从指定进制字符串中解析特定类型。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 待解析的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * T - 转换后的值。
>> static func tryParse(String, Int)
>>     
>>     static func tryParse(value: String, radix!: Int): Option<T>
>>     
>> 
>> 功能：从指定进制字符串中解析特定类型。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 待解析的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<T> \- 转换后值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<T>.None。
>> func toString(Int)
>>     
>>     func toString(radix!: Int): String
>>     
>> 
>> 功能：返回指定进制形式字符串。 参数：
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 指定进制形式字符串。
>> extend Int8 <: RadixConvertible<Int8>
>>     
>>     extend Int8 <: RadixConvertible<Int8>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型字面量的字符串转换为 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 值的相关操作函数。 父类型：
>>                          * RadixConvertible<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)>
>> static func parse(String, Int)
>>     
>>     public static func parse(value: String, radix!: Int): Int8
>>     
>> 
>> 功能：将 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型字面量的字符串转换为 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) \- 返回转换后 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 值。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空，进制超出范围，转换后超出 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 范围或字符串中含有无效的 UTF-8 字符，转换失败时，抛出异常。
>> static func tryParse(String, Int)
>>     
>>     public static func tryParse(value: String, radix!: Int): Option<Int8>
>>     
>> 
>> 功能：将 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)> 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)>.None。
>> func toString(Int)
>>     
>>     public func toString(radix!: Int): String
>>     
>> 
>> 功能：返回指定进制形式字符串。 参数：
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 指定进制形式字符串。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当进制不合规时，抛出异常。
>> extend Int16 <: RadixConvertible<Int16>
>>     
>>     extend Int16 <: RadixConvertible<Int16>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型字面量的字符串转换为 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 值的相关操作函数。 父类型：
>>                          * RadixConvertible<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)>
>> static func parse(String, Int)
>>     
>>     public static func parse(value: String, radix!: Int): Int16
>>     
>> 
>> 功能：将 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型字面量的字符串转换为 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) \- 返回转换后 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 值。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空、进制超出范围、转换后超出 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 范围、字符串中含有无效的 UTF-8 字符、转换失败时，抛出异常。
>> static func tryParse(String, Int)
>>     
>>     public static func tryParse(value: String, radix!: Int): Option<Int16>
>>     
>> 
>> 功能：将 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)> 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)>.None。
>> func toString(Int)
>>     
>>     public func toString(radix!: Int): String
>>     
>> 
>> 功能：返回指定进制形式字符串。 参数：
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 指定进制形式字符串。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当进制不合规时，抛出异常。
>> extend Int32 <: RadixConvertible<Int32>
>>     
>>     extend Int32 <: RadixConvertible<Int32>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型字面量的字符串转换为 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 值的相关操作函数。 父类型：
>>                          * RadixConvertible<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)>
>> static func parse(String, Int)
>>     
>>     public static func parse(value: String, radix!: Int): Int32
>>     
>> 
>> 功能：将 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型字面量的字符串转换为 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) \- 返回转换后 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 值。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空、进制超出范围、转换后超出 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 范围、字符串中含有无效的 UTF-8 字符、转换失败时，抛出异常。
>> static func tryParse(String, Int)
>>     
>>     public static func tryParse(value: String, radix!: Int): Option<Int32>
>>     
>> 
>> 功能：将 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)> 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)>.None。
>> func toString(Int)
>>     
>>     public func toString(radix!: Int): String
>>     
>> 
>> 功能：返回指定进制形式字符串。 参数：
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 指定进制形式字符串。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当进制不合规时，抛出异常。
>> extend Int64 <: RadixConvertible<Int64>
>>     
>>     extend Int64 <: RadixConvertible<Int64>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型字面量的字符串转换为 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 值的相关操作函数。 父类型：
>>                          * RadixConvertible<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)>
>> static func parse(String, Int)
>>     
>>     public static func parse(value: String, radix!: Int): Int64
>>     
>> 
>> 功能：将 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型字面量的字符串转换为 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) \- 返回转换后 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 值。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空、进制超出范围、转换后超出 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 范围、字符串中含有无效的 UTF-8 字符、转换失败时，抛出异常。
>> static func tryParse(String, Int)
>>     
>>     public static func tryParse(value: String, radix!: Int): Option<Int64>
>>     
>> 
>> 功能：将 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)> 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)>.None。
>> func toString(Int)
>>     
>>     public func toString(radix!: Int): String
>>     
>> 
>> 功能：返回指定进制形式字符串。 参数：
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 指定进制形式字符串。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当进制不合规时，抛出异常。
>> extend UInt8 <: RadixConvertible<UInt8>
>>     
>>     extend UInt8 <: RadixConvertible<UInt8>
>>     
>> 
>> 功能：此扩展主要用于实现将 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型字面量的字符串转换为 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 值的相关操作函数。 父类型：
>>                          * RadixConvertible<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)>
>> static func parse(String, Int)
>>     
>>     public static func parse(value: String, radix!: Int): UInt8
>>     
>> 
>> 功能：将 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型字面量的字符串转换为 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) \- 返回转换后 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 值。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空、进制超出范围、首位为 `-`、转换后超出 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 范围、字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String, Int)
>>     
>>     public static func tryParse(value: String, radix!: Int): Option<UInt8>
>>     
>> 
>> 功能：将 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)> 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)>.None。
>> func toString(Int)
>>     
>>     public func toString(radix!: Int): String
>>     
>> 
>> 功能：返回指定进制形式字符串。 参数：
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 指定进制形式字符串。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当进制不合规时，抛出异常。
>> extend UInt16 <: RadixConvertible<UInt16>
>>     
>>     extend UInt16 <: RadixConvertible<UInt16>
>>     
>> 
>> 功能：此扩展主要用于实现将 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型字面量的字符串转换为 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 值的相关操作函数。 父类型：
>>                          * RadixConvertible<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)>
>> static func parse(String, Int)
>>     
>>     public static func parse(value: String, radix!: Int): UInt16
>>     
>> 
>> 功能：将 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型字面量的字符串转换为 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) \- 返回转换后 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 值。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空、进制超出范围、首位为 `-`、转换后超出 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 范围、字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String, Int)
>>     
>>     public static func tryParse(value: String, radix!: Int): Option<UInt16>
>>     
>> 
>> 功能：将 [UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)> 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt16](../../core/core_package_api/core_package_intrinsics.html#uint16)>.None。
>> func toString(Int)
>>     
>>     public func toString(radix!: Int): String
>>     
>> 
>> 功能：返回指定进制形式字符串。 参数：
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 指定进制形式字符串。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当进制不合规时，抛出异常。
>> extend UInt32 <: RadixConvertible<UInt32>
>>     
>>     extend UInt32 <static func parse(String)
>>     
>>     
>>     public static func parse(data: String): UInt64
>>     
>> 
>> 功能：将 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型字面量的字符串转换为 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 值。 参数：
>>                          * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                          * [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) \- 返回转换后 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 值。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空，首位为 `+` 或 `-`，转换失败，或转换后超出 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 范围，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<UInt64>
>>     
>> 
>> 功能：将 [UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64)> 值。 参数：
>>                          * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64)>.None。
>> extend UInt8 <: Parsable<UInt8>
>>     
>>     extend UInt8 <: Parsable<UInt8>
>>     
>> 
>> 功能：此扩展主要用于实现将 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型字面量的字符串转换为 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 值的相关操作函数。 父类型：
>>                          * Parsable<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)>
>> static func parse(String)
>>     
>>     public static func parse(data: String): UInt8
>>     
>> 
>> 功能：将 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型字面量的字符串转换为 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 值。 参数：
>>                          * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                          * [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) \- 返回转换后 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 值。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空，首位为 `+` 或 `-`，转换失败，或转换后超出 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 范围，或字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String)
>>     
>>     public static func tryParse(data: String): Option<UInt8>
>>     
>> 
>> 功能：将 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)> 值。 参数：
>>                          * data: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)>.None。
>> interface RadixConvertible<T>
>>     
>>     public interface RadixConvertible<T> {
>>     
>>         static func parse(value: String, radix!: Int): T
>>     
>>         static func tryParse(value: String, radix!: Int): Option<T>
>>     
>>         func toString(radix!: Int): String
>>     }
>>     
>> 
>> 功能：本接口提供了统一的方法，以支持将指定进制的字符串解析为特定类型。 进制将以参数指定，不按字符串前缀指定，进制表示范围必须在 2-36 之间，否则会抛异常，超过十进制的表示按大或者小写英文字母序表示，即 10 个数字 + 26 个英文字母 = 36 进制，Int 系列的字符串可以以 `+`、`-` 开头，如果不以这两个符号开头则处理成 `+`，UInt 系列的字符串可以以 `+` 开头，如果以 `-` 开头会抛出异常。返回指定进制形式字符串，超过十进制的表示按小写英文字母序表示，即 10 个数字 + 26 个小写英文字母 = 36 进制。 本接口提供了 parse 和 tryParse 两套方法，parse 方法将在解析失败时抛出异常，tryParse 方法将返回值用 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont) 包裹，解析失败时将返回 None。 本包内已经为[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)，[UInt64](../../core/core_package_api/core_package_intrinsics.html#uint64) 等基础类型实现该接口，可用于将字符串转换为这些类型。 static func parse(String, Int)
>>     
>>     static func parse(value: String, radix!: Int): T
>>     
>> 
>> 功能：从指定进制字符串中解析特定类型。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 待解析的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * T - 转换后的值。
>> static func tryParse(String, Int)
>>     
>>     static func tryParse(value: String, radix!: Int): Option<T>
>>     
>> 
>> 功能：从指定进制字符串中解析特定类型。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 待解析的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<T> \- 转换后值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<T>.None。
>> func toString(Int)
>>     
>>     func toString(radix!: Int): String
>>     
>> 
>> 功能：返回指定进制形式字符串。 参数：
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 指定进制形式字符串。
>> extend Int8 <: RadixConvertible<Int8>
>>     
>>     extend Int8 <: RadixConvertible<Int8>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型字面量的字符串转换为 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 值的相关操作函数。 父类型：
>>                          * RadixConvertible<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)>
>> static func parse(String, Int)
>>     
>>     public static func parse(value: String, radix!: Int): Int8
>>     
>> 
>> 功能：将 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型字面量的字符串转换为 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) \- 返回转换后 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 值。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空，进制超出范围，转换后超出 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 范围或字符串中含有无效的 UTF-8 字符，转换失败时，抛出异常。
>> static func tryParse(String, Int)
>>     
>>     public static func tryParse(value: String, radix!: Int): Option<Int8>
>>     
>> 
>> 功能：将 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)> 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int8](../../core/core_package_api/core_package_intrinsics.html#int8)>.None。
>> func toString(Int)
>>     
>>     public func toString(radix!: Int): String
>>     
>> 
>> 功能：返回指定进制形式字符串。 参数：
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 指定进制形式字符串。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当进制不合规时，抛出异常。
>> extend Int16 <: RadixConvertible<Int16>
>>     
>>     extend Int16 <: RadixConvertible<Int16>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型字面量的字符串转换为 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 值的相关操作函数。 父类型：
>>                          * RadixConvertible<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)>
>> static func parse(String, Int)
>>     
>>     public static func parse(value: String, radix!: Int): Int16
>>     
>> 
>> 功能：将 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型字面量的字符串转换为 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) \- 返回转换后 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 值。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空、进制超出范围、转换后超出 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 范围、字符串中含有无效的 UTF-8 字符、转换失败时，抛出异常。
>> static func tryParse(String, Int)
>>     
>>     public static func tryParse(value: String, radix!: Int): Option<Int16>
>>     
>> 
>> 功能：将 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)> 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int16](../../core/core_package_api/core_package_intrinsics.html#int16)>.None。
>> func toString(Int)
>>     
>>     public func toString(radix!: Int): String
>>     
>> 
>> 功能：返回指定进制形式字符串。 参数：
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 指定进制形式字符串。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当进制不合规时，抛出异常。
>> extend Int32 <: RadixConvertible<Int32>
>>     
>>     extend Int32 <: RadixConvertible<Int32>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型字面量的字符串转换为 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 值的相关操作函数。 父类型：
>>                          * RadixConvertible<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)>
>> static func parse(String, Int)
>>     
>>     public static func parse(value: String, radix!: Int): Int32
>>     
>> 
>> 功能：将 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型字面量的字符串转换为 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) \- 返回转换后 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 值。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空、进制超出范围、转换后超出 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 范围、字符串中含有无效的 UTF-8 字符、转换失败时，抛出异常。
>> static func tryParse(String, Int)
>>     
>>     public static func tryParse(value: String, radix!: Int): Option<Int32>
>>     
>> 
>> 功能：将 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)> 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int32](../../core/core_package_api/core_package_intrinsics.html#int32)>.None。
>> func toString(Int)
>>     
>>     public func toString(radix!: Int): String
>>     
>> 
>> 功能：返回指定进制形式字符串。 参数：
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 指定进制形式字符串。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当进制不合规时，抛出异常。
>> extend Int64 <: RadixConvertible<Int64>
>>     
>>     extend Int64 <: RadixConvertible<Int64>
>>     
>> 
>> 功能：此扩展主要用于实现将 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型字面量的字符串转换为 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 值的相关操作函数。 父类型：
>>                          * RadixConvertible<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)>
>> static func parse(String, Int)
>>     
>>     public static func parse(value: String, radix!: Int): Int64
>>     
>> 
>> 功能：将 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型字面量的字符串转换为 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) \- 返回转换后 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 值。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空、进制超出范围、转换后超出 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 范围、字符串中含有无效的 UTF-8 字符、转换失败时，抛出异常。
>> static func tryParse(String, Int)
>>     
>>     public static func tryParse(value: String, radix!: Int): Option<Int64>
>>     
>> 
>> 功能：将 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)> 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)>.None。
>> func toString(Int)
>>     
>>     public func toString(radix!: Int): String
>>     
>> 
>> 功能：返回指定进制形式字符串。 参数：
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 指定进制形式字符串。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当进制不合规时，抛出异常。
>> extend UInt8 <: RadixConvertible<UInt8>
>>     
>>     extend UInt8 <: RadixConvertible<UInt8>
>>     
>> 
>> 功能：此扩展主要用于实现将 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型字面量的字符串转换为 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 值的相关操作函数。 父类型：
>>                          * RadixConvertible<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)>
>> static func parse(String, Int)
>>     
>>     public static func parse(value: String, radix!: Int): UInt8
>>     
>> 
>> 功能：将 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型字面量的字符串转换为 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) \- 返回转换后 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 值。
>> 异常：
>>                          * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当字符串为空、进制超出范围、首位为 `-`、转换后超出 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 范围、字符串中含有无效的 UTF-8 字符时，抛出异常。
>> static func tryParse(String, Int)
>>     
>>     public static func tryParse(value: String, radix!: Int): Option<UInt8>
>>     
>> 
>> 功能：将 [UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8) 类型字面量的字符串转换为 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)> 值。 参数：
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 要转换的字符串。
>>                          * radix!: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 指定的进制。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)> \- 返回转换后 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)> 值，转换失败返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[UInt8](../../core/core_package_api/core_package_intrinsics.html#uint8)>.None。
>> func toString(Int)
>>     
>>     public func toString(radix!: Int): String
>>     Statement](../../core/core_package_api/core_package_intrinsics.html#uint16) 绑定了一个 [Connection](database_sql_package_interfaces.html#interface-connection) ，继承该接口的 class、interface、struct 也需要遵守该接口中函数的入参及返回值定义。
>>     父类型：
>>     
>>     
>>                                                       * [Resource](../../core/core_package_api/core_package_interfaces.html#interface-resource)
>>     
>>     
>>     prop parameterColumnInfos
>>     
>>     
>>     prop parameterColumnInfos: Array<ColumnInfo>
>>     
>> 
>> 功能：预执行 sql 语句中，占位参数的列信息，比如列名，列类型，列长度，是否允许数据库 `Null` 值等。 类型：[Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[ColumnInfo](database_sql_package_interfaces.html#interface-columninfo)> func query()
>>     
>>     func query(): QueryResult
>>     
>> 
>> 功能：执行 sql 语句，得到查询结果。 返回值：
>>                          * [QueryResult](database_sql_package_interfaces.html#interface-queryresult) \- 查询结果。
>> 异常：
>>                          * [SqlException](database_sql_package_exceptions.html#class-sqlexception) \- 当执行过程中发生了异常情况，比如网络中断，服务器超时，参数个数不正确时，抛出异常。
>> func query(Array<SqlDbType>) (deprecated)
>>     
>>     func query(params: Array<SqlDbType>): QueryResult
>>     
>> 
>> 功能：执行 sql 语句，得到查询结果。
>>
>>> **注意：** 未来版本即将废弃不再使用，可使用 query() 替代。
>> 
>> 参数：
>>                          * params: [Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)> \- sql 数据类型的数据列表，用于替换 sql 语句中的 `?` 占位符。
>> 返回值：
>>                          * [QueryResult](database_sql_package_interfaces.html#interface-queryresult) \- 查询结果。
>> 异常：
>>                          * [SqlException](database_sql_package_exceptions.html#class-sqlexception) \- 当执行过程中发生了异常情况，比如网络中断，服务器超时，参数个数不正确时，抛出异常。
>> func set<T>(Int, T)
>>     
>>     func set<T>(index: Int, value: T): Unit
>>     
>> 
>> 功能：设置 sql 参数，将仓颉的数据类型转成数据库的数据类型。 参数：
>>                          * index: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 参数所在序列。
>>                          * value: T - 参数值。
>> func setNull(Int)
>>     
>>     func setNull(index: Int): Unit
>>     
>> 
>> 功能：将指定位置处的语句参数设置为 SQL NULL。 参数：
>>                          * index: [Int](../../core/core_package_api/core_package_types.html#type-int) \- 参数所在序列。
>> func setOption(String, String)
>>     
>>     func setOption(key: String, value: String): Unit
>>     
>> 
>> 功能：设置预执行 sql 语句选项。 参数：
>>                          * key: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 连接选项名称。
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 连接选项的值。
>> func update(Array<SqlDbType>) (deprecated)
>>     
>>     func update(params: Array<SqlDbType>): UpdateResult
>>     
>> 
>> 功能：执行 sql 语句，得到更新结果。
>>
>>> **注意：** 未来版本即将废弃不再使用，可使用 update() 替代。
>> 
>> 参数：
>>                          * params: [Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)> \- sql 数据类型的数据列表，用于替换 sql 语句中的 `?` 占位符。
>> 返回值：
>>                          * [UpdateResult](database_sql_package_interfaces.html#interface-updateresult) \- 更新结果。
>> 异常：
>>                          * [SqlException](database_sql_package_exceptions.html#class-sqlexception) \- 当执行过程中发生了异常情况，比如网络中断、服务器超时，参数个数不正确时，抛出异常。
>> func update()
>>     
>>     func update(): UpdateResult
>>     
>> 
>> 功能：执行 sql 语句，得到更新结果。 返回值：
>>                          * [UpdateResult](database_sql_package_interfaces.html#interface-updateresult) \- 更新结果。
>> 异常：
>>                          * [SqlException](database_sql_package_exceptions.html#class-sqlexception) \- 当执行过程中发生了异常情况，比如网络中断，服务器超时，参数个数不正确时，抛出异常。
>> interface Transaction
>>     
>>     public interface Transaction {
>>         mut prop accessMode: TransactionAccessMode
>>         mut prop deferrableMode: TransactionDeferrableMode
>>         mut prop isoLevel: TransactionIsoLevel
>>         func begin(): Unit
>>         func commit(): Unit
>>         func release(savePointName: String): Unit
>>         func rollback(): Unit
>>         func rollback(savePointName: String): Unit
>>         func save(savePointName: String): Unit
>>     }
>>     
>> 
>> 功能：定义数据库事务的核心行为。 继承该接口的 class、interface、struct 也需要遵守该接口中函数的入参及返回值定义。 prop accessMode
>>     
>>     mut prop accessMode: TransactionAccessMode
>>     
>> 
>> 功能：获取数据库事务访问模式。 类型：[TransactionAccessMode](database_sql_package_enums.html#enum-transactionaccessmode) prop deferrableMode
>>     
>>     mut prop deferrableMode: TransactionDeferrableMode
>>     
>> 
>> 功能：获取数据库事务延迟模式。 类型：[TransactionDeferrableMode](database_sql_package_enums.html#enum-transactiondeferrablemode) prop isoLevel
>>     
>>     mut prop isoLevel: TransactionIsoLevel
>>     
>> 
>> 功能：获取数据库事务隔离级别。 类型：[TransactionIsoLevel](database_sql_package_enums.html#enum-transactionisolevel) func begin()
>>     
>>     func begin(): Unit
>>     
>> 
>> 功能：开始数据库事务。 异常：
>>                          * [SqlException](database_sql_package_exceptions.html#class-sqlexception) \- 当提交事务时服务器端发生错误，以及当事务已提交或回滚或连接已断开时，抛出异常。
>> func commit()
>>     
>>     func commit(): Unit
>>     
>> 
>> 功能：提交数据库事务。 异常：
>>                          * [SqlException](database_sql_package_exceptions.html#class-sqlexception) \- 当提交事务时服务器端发生错误，以及当事务已提交或回滚或连接已断开时，抛出异常。
>> func release(String)
>>     
>>     func release(savePointName: String): Unit
>>     
>> 
>> 功能：销毁先前在当前事务中定义的保存点。这允许系统在事务结束之前回收一些资源。 参数：
>>                          * savePointName: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 保存点名称。
>> 异常：
>>                          * [SqlException](database_sql_package_exceptions.html#class-sqlexception) \- 当提交事务时服务器端发生错误，以及当事务已提交或回滚或连接已断开时，抛出异常。
>> func rollback()
>>     
>>     func rollback(): Unit
>>     
>> 
>> 功能：从挂起状态回滚事务。 异常：
>>                          * [SqlException](database_sql_package_exceptions.html#class-sqlexception) \- 当提交事务时服务器端发生错误，以及当事务已提交或回滚或连接已断开时，抛出异常。
>> func rollback(String)
>>     
>>     func rollback(savePointName: String): Unit
>>     
>> 
>> 功能：回滚事务至指定保存点名称。 参数：
>>                          * savePointName: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 保存点名称。
>> 异常：
>>                          * [SqlException](database_sql_package_exceptions.html#class-sqlexception) \- 当提交事务时服务器端发生错误，以及当事务已提交或回滚或连接已断开时，抛出异常。
>> func save(String)
>>     
>>     func save(savePointName: String): Unit
>>     
>> 
>> 功能：在事务中创建一个指定名称的保存点，可用于回滚此保存点之后的事务。 参数：
>>                          * savePointName: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 保存点名称。
>> 异常：
>>                          * [SqlException](database_sql_package_exceptions.html#class-sqlexception) \- 当提交事务时服务器端发生错误，以及当事务已提交或回滚或连接已断开时，抛出异常。
>> interface UpdateResult
>>     
>>     public interface UpdateResult {
>>         prop lastInsertId: Int64
>>         prop rowCount: Int64
>>     }
>>     
>> 
>> 功能：执行 Insert、Update、Delete 语句产生的结果接口。 继承该接口的 class、interface、struct 也需要遵守该接口中函数的入参及返回值定义。 prop lastInsertId
>>     
>>     prop lastInsertId: Int64
>>     
>> 
>> 功能：执行 Insert 语句自动生成的最后 row ID ，如果不支持则 row ID 为 0。 类型：[Int64](../../core/core_package_api/core_package_intrinsics.html#int64) prop rowCount
>>     
>>     prop rowCount: Int64
>>     
>> 
>> 功能：执行 Insert、Update、Delete 语句影响的行数。 类型：[Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 删除表、创建表示例
>>     
>>     import std.database.sql.*
>>     
>>     main() {
>>         // 获取数据库链接示例
>>         let drv = DriverManager.getDriver("opengauss") ?? return
>>         let opts = [
>>             ("cachePrepStmts", "true"),
>>             ("prepStmtCacheSize", "250"),
>>             ("prepStmtCacheSqlLimit", "2048")
>>         ]
>>     
>>         let ds = drv.open("opengauss://testuser:testpwd@localhost:5432/testdb", opts)
>>     
>>         let conn = ds.connect()
>>     
>>         // 删除和创建表
>>         var stmt = conn.prepareStatement("DROP TABLE IF EXISTS test")
>>         var ur = stmt.update()
>>         println("Update Result: ${ur.rowCount} ${ur.lastInsertId}")
>>         stmt.close()
>>         stmt = conn.prepareStatement("CREATE TABLE test(id SERIAL PRIMARY KEY, name VARCHAR(20) NOT NULL, age INT)")
>>         ur = stmt.update()
>>         println("Update Result: ${ur.rowCount} ${ur.lastInsertId}")
>>         stmt.close()
>>     }
>>     
