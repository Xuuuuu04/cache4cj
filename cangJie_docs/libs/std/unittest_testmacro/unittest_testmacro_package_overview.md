std.unittest.testmacro 功能介绍 unittest.testmacro 为单元测试框架提供了用户所需的宏。 API 列表 宏 宏名| 功能  
>>>> ---|---  
>>>> [AfterAll](./unittest_testmacro_package_api/unittest_testmacro_package_macros.html#afterall-%E5%AE%8F)| 声明测试类中的函数为[测试生命周期](../unittest/unittest_samples/unittest_basics.html#%E6%B5%8B%E8%AF%95%E7%94%9F%E5%91%BD%E5%91%A8%E6%9C%9F)函数。被该宏修饰的函数在所有测试用例之后运行一次。  
>>>> [AfterEach](./unittest_testmacro_package_api/unittest_testmacro_package_macros.html#aftereach-%E5%AE%8F)| 声明测试类中的函数为[测试生命周期](../unittest/unittest_samples/unittest_basics.html#%E6%B5%8B%E8%AF%95%E7%94%9F%E5%91%BD%E5%91%A8%E6%9C%9F)函数。被该宏修饰的函数在每个测试用例之后运行一次。  
>>>> [Assert](./unittest_testmacro_package_api/unittest_testmacro_package_macros.html#assert-%E5%AE%8F)| 声明 Assert 断言，测试函数内部使用，断言失败停止用例。  
>>>> [AssertThrows](./unittest_testmacro_package_api/unittest_testmacro_package_macros.html#assertthrows-%E5%AE%8F)| 声明[预期异常的断言](../unittest/unittest_samples/unittest_basics.html#%E9%A2%84%E6%9C%9F%E5%BC%82%E5%B8%B8%E7%9A%84%E6%96%AD%E8%A8%80)，测试函数内部使用，断言失败停止用例。  
>>>> [BeforeAll](./unittest_testmacro_package_api/unittest_testmacro_package_macros.html#beforeall-%E5%AE%8F)| 声明测试类中的函数为[测试生命周期](../unittest/unittest_samples/unittest_basics.html#%E6%B5%8B%E8%AF%95%E7%94%9F%E5%91%BD%E5%91%A8%E6%9C%9F)函数。被该宏修饰的函数在所有测试用例之前运行一次。  
>>>> [BeforeEach](./unittest_testmacro_package_api/unittest_testmacro_package_macros.html#beforeeach-%E5%AE%8F)| 声明测试类中的函数为[测试生命周期](../unittest/unittest_samples/unittest_basics.html#%E6%B5%8B%E8%AF%95%E7%94%9F%E5%91%BD%E5%91%A8%E6%9C%9F)函数。被该宏修饰的函数在每个测试用例之前运行一次。  
>>>> [Bench](./unittest_testmacro_package_api/unittest_testmacro_package_macros.html#bench-%E5%AE%8F)| 宏用于标记要执行多次的函数并计算该函数的预期执行时间。  
>>>> [Configure](./unittest_testmacro_package_api/unittest_testmacro_package_macros.html#configure-%E5%AE%8F)| 为测试类或测试函数提供配置参数。它可以放置在测试类或测试函数上。  
>>>> [CustomAssertion](./unittest_testmacro_package_api/unittest_testmacro_package_macros.html#customassertion-%E5%AE%8F)| `@CustomAssertions` 将函数指定为用户自定义断言。  
>>>> [Expect](./unittest_testmacro_package_api/unittest_testmacro_package_macros.html#expect-%E5%AE%8F)| 声明 Expect 断言，测试函数内部使用，断言失败继续执行用例。  
>>>> [ExpectThrows](./unittest_testmacro_package_api/unittest_testmacro_package_macros.html#expectthrows-%E5%AE%8F)| 声明[预期异常的断言](../unittest/unittest_samples/unittest_basics.html#%E9%A2%84%E6%9C%9F%E5%BC%82%E5%B8%B8%E7%9A%84%E6%96%AD%E8%A8%80)，测试函数内部使用，断言失败继续执行用例。  
>>>> [Fail](./unittest_testmacro_package_api/unittest_testmacro_package_macros.html#fail-%E5%AE%8F)| 声明[预期失败的断言](../unittest/unittest_samples/unittest_basics.html#%E5%A4%B1%E8%B4%A5%E6%96%AD%E8%A8%80)，测试函数内部使用，断言失败停止用例。  
>>>> [FailExpect](./unittest_testmacro_package_api/unittest_testmacro_package_macros.html#failexpect-%E5%AE%8F)| 声明[预期失败的断言](../unittest/unittest_samples/unittest_basics.html#%E5%A4%B1%E8%B4%A5%E6%96%AD%E8%A8%80)，测试函数内部使用，断言失败继续执行用例。  
>>>> [Measurement](./unittest_testmacro_package_api/unittest_testmacro_package_macros.html#measure-%E5%AE%8F)| 用于为性能测试指定 [Measurement](../unittest/unittest_package_api/unittest_package_interfaces.html#interface-measurement) 实例。只能应用于标有 `@Test` 宏的类或顶级函数的范围内。  
>>>> [Parallel](./unittest_testmacro_package_api/unittest_testmacro_package_macros.html#parallel-%E5%AE%8F)| 可以修饰测试类。被 `@Parallel` 修饰的测试类中的测试用例可并行执行。  
>>>> [PowerAssert](./unittest_testmacro_package_api/unittest_testmacro_package_macros.html#powerassert-%E5%AE%8F)| 检查传递的表达式是否为真，并显示包含传递表达式的中间值和异常的详细图表。  
>>>> [Skip](./unittest_testmacro_package_api/unittest_testmacro_package_macros.html#skip-%E5%AE%8F)| 修饰已经被 `@TestCase` / `@Bench` 修饰的函数，使该测试用例被跳过。  
>>>> [Strategy](./unittest_testmacro_package_api/unittest_testmacro_package_macros.html#strategy-%E5%AE%8F)| 用于组合、映射和重用各种数据策略。  
>>>> [Tag](./unittest_testmacro_package_api/unittest_testmacro_package_macros.html#tag-%E5%AE%8F)| `@Tag` 宏可以应用于 `@Test` 类和 `@Test` 或 `@TestCase` 函数，提供测试实体的元信息。  
>>>> [Test](./unittest_testmacro_package_api/unittest_testmacro_package_macros.html#test-%E5%AE%8F)| 宏应用于顶级函数或顶级类，使该函数或类转换为单元测试类。  
>>>> [TestBuilder](./unittest_testmacro_package_api/unittest_testmacro_package_macros.html#testbuilder-%E5%AE%8F)| 声明一个[动态测试](../unittest/unittest_samples/unittest_dynamic_tests.html#%E5%8A%A8%E6%80%81%E6%B5%8B%E8%AF%95)套。  
>>>> [TestCase](./unittest_testmacro_package_api/unittest_testmacro_package_macros.html#testcase-%E5%AE%8F)| 宏用于标记单元测试类内的函数，使这些函数成为单元测试的测试用例。  
>>>> [Timeout](./unittest_testmacro_package_api/unittest_testmacro_package_macros.html#timeout-%E5%AE%8F)| 指示测试应在指定时间后终止。它有助于测试可能运行很长时间或陷入无限循环的复杂算法。  
>>>> [Types](./unittest_testmacro_package_api/unittest_testmacro_package_macros.html#types-%E5%AE%8F)| 宏为测试类或测试函数提供类型参数。它可以放置在测试类或测试函数上。
