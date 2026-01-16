测试结果显示函数可用，但还是不能确认是否适用于所有大小的数组。 接下来测试参数化数组的大小。异常类 class AssertException
>>>>     
>>>>     public class AssertException <: Exception {
>>>>         public init()
>>>>         public init(message: String)
>>>>     }
>>>>     
>>>> 
>>>> 功能：[@Expect](../../unittest_testmacro/unittest_testmacro_package_api/unittest_testmacro_package_macros.html#expect-%E5%AE%8F) / [@Assert](../../unittest_testmacro/unittest_testmacro_package_api/unittest_testmacro_package_macros.html#assert-%E5%AE%8F) 检查失败时所抛出的异常。 父类型：
>>>>                                    * [Exception](../../core/core_package_api/core_package_exceptions.html#class-exception)
>>>> init()
>>>>     
>>>>     public init(message: String)
>>>>     
>>>> 
>>>> 功能：构造函数。 init(String)
>>>>     
>>>>     public init(message: String)
>>>>     
>>>> 
>>>> 功能：构造函数。 参数：
>>>>                                    * message: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 指定的异常信息。
>>>> class AssertIntermediateException
>>>>     
>>>>     public class AssertIntermediateException <: Exception {
>>>>         public let expression: String
>>>>         public let originalException: Exception
>>>>     }
>>>>     
>>>> 
>>>> 功能：[@PowerAssert](../../unittest_testmacro/unittest_testmacro_package_api/unittest_testmacro_package_macros.html#powerassert-%E5%AE%8F) 检查失败时所抛出的异常。 父类型：
>>>>                                    * [Exception](../../core/core_package_api/core_package_exceptions.html#class-exception)
>>>> let expression
>>>>     
>>>>     public let expression: String
>>>>     
>>>> 
>>>> 功能：检查的表达式。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string)。 let originalException
>>>>     
>>>>     public let originalException: Exception
>>>>     
>>>> 
>>>> 功能：原始的类型信息。 类型：[Exception](../../core/core_package_api/core_package_exceptions.html#class-exception)。 func getOriginalStackTrace
>>>>     
>>>>     public func getOriginalStackTrace(): String
>>>>     
>>>> 
>>>> 功能：获取原始的栈信息。 返回值：
>>>>                                    * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 栈信息。
>>>> class UnittestCliOptionsFormatException
>>>>     
>>>>     public class UnittestCliOptionsFormatException <: UnittestException
>>>>     
>>>> 
>>>> 功能：控制台选项格式错误抛出的异常。 父类型：
>>>>                                    * UnittestException
>>>> class UnittestException
>>>>     
>>>>     public open class UnittestException <: Exception
>>>>     
>>>> 
>>>> 功能：框架通用异常。 父类型：
>>>>                                    * [Exception](../../core/core_package_api/core_package_exceptions.html#class-exception)
