枚举 enum OverflowStrategy  
>>       
>>     public enum OverflowStrategy <: Equatable<OverflowStrategy> & ToString {
>>         | Saturating
>>         | Throwing
>>         | Wrapping
>>     }
>>     
>> 
>> 功能：溢出策略枚举类，共包含 3 种溢出策略。[BigInt](math_numeric_package_structs.html#struct-bigint) 类型、[Decimal](math_numeric_package_structs.html#struct-decimal) 类型转换为整数类型时，允许指定不同的溢出处理策略。 父类型：
>>                            * [Equatable](../../../std/core/core_package_api/core_package_interfaces.html#interface-equatablet)<OverflowStrategy>
>>                            * [ToString](../../../std/core/core_package_api/core_package_interfaces.html#interface-tostring)
>> Saturating
>>     
>>     Saturating
>>     
>> 
>> 功能：出现溢出，当前值大于目标类型的 MAX 值，返回目标类型 MAX 值，当前值小于目标类型的 MIN 值，返回目标类型 MIN 值。 Throwing
>>     
>>     Throwing
>>     
>> 
>> 功能：出现溢出，抛出异常。 Wrapping
>>     
>>     Wrapping
>>     
>> 
>> 功能：出现溢出，高位截断。 func toString()
>>     
>>     public func toString(): String
>>     
>> 
>> 功能：生成溢出策略名称字符串。 返回值：
>>                            * [String](../../../std/core/core_package_api/core_package_structs.html#struct-string) - 溢出策略名称字符串。
>> operator func ==(OverflowStrategy)
>>     
>>     public operator func ==(that: OverflowStrategy): Bool
>>     
>> 
>> 功能：判等。 参数：
>>                            * that: OverflowStrategy - 被比较的溢出策略。
>> 返回值：
>>                            * [Bool](../../../std/core/core_package_api/core_package_intrinsics.html#bool) - 溢出策略相同，返回 true；否则，返回 false。
