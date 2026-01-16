接口 interface AssertPrintable
>>>>     
>>>>     public interface AssertPrintable<T> {
>>>>         prop hasNestedDiff: Bool
>>>>         func pprintForAssertion(
>>>>             pp: PrettyPrinter, that: T, thisPrefix: String, thatPrefix: String, level: Int64
>>>>         ): PrettyPrinter
>>>>     }
>>>>     
>>>> 
>>>> 功能：提供打印 [@Assert](../../unittest_testmacro/unittest_testmacro_package_api/unittest_testmacro_package_macros.html#assert-%E5%AE%8F)/[@Expect](../../unittest_testmacro/unittest_testmacro_package_api/unittest_testmacro_package_macros.html#expect-%E5%AE%8F) 的检查结果的方法。 prop hasNestedDiff
>>>>     
>>>>     prop hasNestedDiff: Bool
>>>>     
>>>> 
>>>> 功能：获取是否有嵌套 diff 层级。 类型：[Bool](../../core/core_package_api/core_package_intrinsics.html#bool) func pprintForAssertion(PrettyPrinter, T, String, String, Int64)
>>>>     
>>>>     func pprintForAssertion(
>>>>         pp: PrettyPrinter, that: T, thisPrefix: String, thatPrefix: String, level: Int64
>>>>     ): PrettyPrinter
>>>>     
>>>> 
>>>> 功能：打印 [@Assert](../../unittest_testmacro/unittest_testmacro_package_api/unittest_testmacro_package_macros.html#assert-%E5%AE%8F)/[@Expect](../../unittest_testmacro/unittest_testmacro_package_api/unittest_testmacro_package_macros.html#expect-%E5%AE%8F) 的检查结果的方法。 参数：
>>>>                                        * pp: [PrettyPrinter](../../unittest_common/unittest_common_package_api/unittest_common_package_classes.html#class-prettyprinter) \- 打印器。
>>>>                                        * that: T - 待打印的信息。
>>>>                                        * thisPrefix: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 预期内容的前缀。
>>>>                                        * thatPrefix: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 实际内容的前缀。
>>>>                                        * level: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) \- 嵌套层级。
>>>> 返回值：
>>>>                                        * PrettyPrinter - 打印器。
