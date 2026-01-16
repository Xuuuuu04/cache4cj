std.unittest.mock 功能介绍 unittest.mock 包提供仓颉单元测试的**mock 框架** ，提供 API 用于创建和配置**mock 对象** （以及独立声明，例如顶层或静态函数和顶层或静态变量），这些 mock 对象与真实对象拥有签名一致的 API 。mock 测试技术支持隔离测试代码，测试用例使用 mock 对象编码，实现外部依赖消除。 **mock 框架** 具有以下特性：
>>>>                                    * 创建 mock 对象和 spy 对象：测试时无需修改生产代码。配置独立声明（例如顶层函数或变量、静态函数或变量）时不需要此步骤。
>>>>                                    * 简单的[配置 API](./unittest_mock_samples/mock_framework_basics.html#%E9%85%8D%E7%BD%AE-api) ：可配置 mock/spy 对象（或独立声明）的行为。
>>>>                                    * 单元测试框架部分：无缝集成单元测试框架的其他特性，错误输出可读。
>>>>                                    * 自动验证配置行为：大多数情况下不需要多余的验证代码。
>>>>                                    * 提供[验证 API](./unittest_mock_samples/mock_framework_verification.html#mock-%E6%A1%86%E6%9E%B6%E9%AA%8C%E8%AF%81-api)：用于测试系统内部的复杂交互。
>>>> 用户使用场景包括：
>>>>                                    * 简化测试设置和代码。
>>>>                                    * 测试异常场景。
>>>>                                    * 用轻量级 mock 对象替换 _代价高的_ 依赖，提高测试性能。
>>>>                                    * 验证测试复杂场景，如调用的顺序/数量。
>>>> 用户可通过[快速入门](./unittest_mock_samples/mock_framework_getting_started.html#mock-%E6%A1%86%E6%9E%B6%E5%85%A5%E9%97%A8)写出第一个带 mock 的测试程序。同时文档对于一些[基础概念及用法](./unittest_mock_samples/mock_framework_basics.html#mock-%E5%9F%BA%E7%A1%80%E6%A6%82%E5%BF%B5%E5%8F%8A%E7%94%A8%E6%B3%95)做了说明并附有示例代码，另外，针对配置 API （[桩](./unittest_mock_samples/mock_framework_stubs.html#%E6%A1%A9%E4%BD%BF%E7%94%A8%E6%8C%87%E5%8D%97)）的高阶用法做了进一步说明。 API 列表 函数 函数名| 功能  
>>>> ---|---  
>>>> [mock<T>()](./unittest_mock_package_api/unittest_mock_package_functions.html#func-mockt)| 创建类型 T 的 [`mock object`](./unittest_mock_samples/mock_framework_basics.html#%E5%88%9B%E5%BB%BA-mock-%E5%AF%B9%E8%B1%A1)， 这个对象默认情况下，所有的成员函数、属性或运算符重载函数没有任何具体实现。  
>>>> [mock<T>(Array<StubMode>)](./unittest_mock_package_api/unittest_mock_package_functions.html#func-mocktarraystubmode)| 创建类型 T 的 [`mock object`](../unittest_mock/unittest_mock_samples/mock_framework_basics.html#%E5%88%9B%E5%BB%BA-mock-%E5%AF%B9%E8%B1%A1) ， 参数指定了[桩的模式](../unittest_mock/unittest_mock_samples/mock_framework_stubs.html#%E6%A1%A9%E7%9A%84%E6%A8%A1%E5%BC%8F)。  
>>>> [spy<T>(T)](./unittest_mock_package_api/unittest_mock_package_functions.html#func-spytt)| 创建类型 T 的 `spy object` ( `mock object` 的扩展，对象的成员拥有默认实现的“骨架”对象)。 这个对象包装了所传入的对象，并且默认情况下成员函数、属性或运算符重载函数实现为对这个传入的实例对象的对应成员函数、属性或运算符重载函数的调用。  
>>>> 接口 接口名| 功能  
>>>> ---|---  
>>>> [ValueListener<T>](./unittest_mock_package_api/unittest_mock_package_interfaces.html#interface-valuelistenert)| 此接口提供了多个成员函数以支持“监听”传入给桩签名的参数。  
>>>> 类 类名| 功能  
>>>> ---|---  
>>>> [ActionSelector](./unittest_mock_package_api/unittest_mock_package_classes.html#class-actionselector)| 此抽象类提供了为成员函数指定一个[操作 API](../unittest_mock/unittest_mock_samples/mock_framework_basics.html#%E6%93%8D%E4%BD%9C-api) ，并允许链式调用的方法。  
>>>> [AnyMatcher](./unittest_mock_package_api/unittest_mock_package_classes.html#class-anymatcher)| 任意参数匹配器，即桩签名允许任意的参数。  
>>>> [ArgumentMatcher](./unittest_mock_package_api/unittest_mock_package_classes.html#class-argumentmatcher)| 参数匹配器抽象类，该类与其子类可作为桩签名的入参类型。  
>>>> [CardinalitySelector<A>](./unittest_mock_package_api/unittest_mock_package_classes.html#class-cardinalityselectora)| 此接口提供了可定义桩签名的最近一次行为的执行次数的 API 。  
>>>> [ConfigureMock](./unittest_mock_package_api/unittest_mock_package_classes.html#class-configuremock)| 配置 `mock object` 。  
>>>> [Continuation<A>](./unittest_mock_package_api/unittest_mock_package_classes.html#class-continuationa)| 此类提供了可继续定义桩签名的行为的 API 。  
>>>> [GetterActionSelector<TRet>](./unittest_mock_package_api/unittest_mock_package_classes.html#class-getteractionselectortret)| 此类提供了为属性 `Getter` 函数指定一个[操作 API](../unittest_mock/unittest_mock_samples/mock_framework_basics.html#%E6%93%8D%E4%BD%9C-api) ，并允许链式调用的方法。  
>>>> [Matchers](./unittest_mock_package_api/unittest_mock_package_classes.html#class-matchers)| 该类提供生成[匹配器](./unittest_mock_samples/mock_framework_basics.html#%E5%8F%82%E6%95%B0%E5%8C%B9%E9%85%8D%E5%99%A8)的静态函数。匹配器对象仅可通过此处的静态函数生成。匹配器可在[桩链](./unittest_mock_samples/mock_framework_basics.html#%E6%A1%A9%E9%93%BE)中使用。  
>>>> [MethodActionSelector<TRet>](./unittest_mock_package_api/unittest_mock_package_classes.html#class-methodactionselectortret)| 此类提供了为成员函数指定一个[操作 API](../unittest_mock/unittest_mock_samples/mock_framework_basics.html#%E6%93%8D%E4%BD%9C-api) ，并允许链式调用。  
>>>> [MockFramework](./unittest_mock_package_api/unittest_mock_package_classes.html#class-mockframework)| 提供用例执行所需的框架准备与结束回收阶段的函数。  
>>>> [NoneMatcher](./unittest_mock_package_api/unittest_mock_package_classes.html#class-nonematcher)| 参数值为 `None` 的匹配器。  
>>>> [OrderedVerifier](./unittest_mock_package_api/unittest_mock_package_classes.html#class-orderedverifier)| 此类型用于收集 “验证语句”， 可在 ordered 函数中动态传入验证行为。  
>>>> [SetterActionSelector<TRet>](./unittest_mock_package_api/unittest_mock_package_classes.html#class-setteractionselectortret)| 此类提供了为属性 `Setter` 函数指定一个[操作 API](../unittest_mock/unittest_mock_samples/mock_framework_basics.html#%E6%93%8D%E4%BD%9C-api) ，并允许链式调用的方法。  
>>>> [SyntheticField<T>](./unittest_mock_package_api/unittest_mock_package_classes.html#class-syntheticfieldt)| 合成字段。  
>>>> [TypedMatcher<T>](./unittest_mock_package_api/unittest_mock_package_classes.html#class-typedmatchert)| 参数类型匹配器。  
>>>> [UnorderedVerifier](./unittest_mock_package_api/unittest_mock_package_classes.html#class-unorderedverifier)| 此类型用于收集 “验证语句”， 可在 unordered 函数中动态传入验证行为。  
>>>> [Verify](./unittest_mock_package_api/unittest_mock_package_classes.html#class-verify)| `Verify` 提供了一系列静态方法来支持定义所需验证的动作，如 `that` 、 `ordered` 以及 `unorder` 。  
>>>> [VerifyStatement](./unittest_mock_package_api/unittest_mock_package_classes.html#class-verifystatement)| 此类型表示对“桩签名”在验证范围内的单个验证验证语句（即上文中的“验证语句”），提供了成员函数指定“桩签名”的执行次数。  
>>>> 枚举 枚举名| 功能  
>>>> ---|---  
>>>> [Exhaustiveness](./unittest_mock_package_api/unittest_mock_package_enums.html#enum-exhaustiveness)| 此枚举类型用于指定 `unordered` 函数的验证模式，包含两种模式。  
>>>> [MockSessionKind](./unittest_mock_package_api/unittest_mock_package_enums.html#enum-mocksessionkind)| 控制允许在 MockSession 使用的[桩](../unittest_mock/unittest_mock_samples/mock_framework_basics.html#%E9%85%8D%E7%BD%AE-api)的类型。  
>>>> [StubMode](./unittest_mock_package_api/unittest_mock_package_enums.html#enum-stubmode)| 控制[桩的模式](../unittest_mock/unittest_mock_samples/mock_framework_stubs.html#%E6%A1%A9%E7%9A%84%E6%A8%A1%E5%BC%8F)。
