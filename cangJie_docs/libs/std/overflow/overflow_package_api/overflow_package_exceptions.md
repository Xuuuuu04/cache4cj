异常类 class OvershiftException
>>     
>>     public class OvershiftException <: Exception {
>>         public init()
>>         public init(message: String)
>>     }
>>     
>> 
>> 功能：移位运算中，当移位位数超过操作数位数时抛出的异常。 父类型：
>>                            * [Exception](../../core/core_package_api/core_package_exceptions.html#class-exception)
>> init()
>>     
>>     public init()
>>     
>> 
>> 功能：创建 [OvershiftException](overflow_package_exceptions.html#class-overshiftexception) 实例。 init(String)
>>     
>>     public init(message: String)
>>     
>> 
>> 功能：创建带有异常信息 message 的 [OvershiftException](overflow_package_exceptions.html#class-overshiftexception) 实例。 参数：
>>                            * message: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 异常信息。
>> class UndershiftException
>>     
>>     public class UndershiftException <: Exception {
>>         public init()
>>         public init(message: String)
>>     }
>>     
>> 
>> 功能：移位运算中，当移位位数小于 0 时抛出的异常。 父类型：
>>                            * [Exception](../../core/core_package_api/core_package_exceptions.html#class-exception)
>> init()
>>     
>>     public init()
>>     
>> 
>> 功能：创建 [UndershiftException](overflow_package_exceptions.html#class-undershiftexception) 实例。 init(String)
>>     
>>     public init(message: String)
>>     
>> 
>> 功能：创建带有异常信息 message 的 [UndershiftException](overflow_package_exceptions.html#class-undershiftexception) 实例。 参数：
>>                            * message: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 异常信息。
