类 class AssertionCtx
>>>>     
>>>>     public class AssertionCtx
>>>>     
>>>> 
>>>> 功能：存储用户定义的断言的状态。提供用于编写​​用户定义断言的方法。 prop args
>>>>     
>>>>     public prop args: String
>>>>     
>>>> 
>>>> 功能：返回以逗号分隔的未解析的用户定义断言参数的字符串。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string)。 prop caller
>>>>     
>>>>     public prop caller: String
>>>>     
>>>> 
>>>> 功能：获取用户定义的断言函数的标识符。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string)。 prop hasErrors
>>>>     
>>>>     public prop hasErrors: Bool
>>>>     
>>>> 
>>>> 功能：如果用户定义内的任何断言失败，则为 `true` 。否则为 `false`。 类型：[Bool](../../core/core_package_api/core_package_intrinsics.html#bool) func arg(String)
>>>>     
>>>>     public func arg(key: String): String
>>>>     
>>>> 
>>>> 功能：返回表示原始传递的标识符的参数值的字符串表达，与参数列表中的标识符匹配。 参数：
>>>>                                    * key: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 函数参数列表中的标识符。
>>>> 返回值：
>>>>                                    * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 对应标识符的参数值字符串表达。
>>>> func fail(String)
>>>>     
>>>>     public func fail(message: String): Nothing
>>>>     
>>>> 
>>>> 功能：存储失败信息，在用户定义的断言函数中提供并抛出 [`AssertExpection`](./unittest_package_exceptions.html#class-assertexception)。 参数：
>>>>                                    * message: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 失败信息。
>>>> func fail<PP>(PP)
>>>>     
>>>>     public func fail<PP>(pt: PP): Nothing where PP <: PrettyPrintable
>>>>     
>>>> 
>>>> 功能：存储失败信息，在用户定义的断言函数中提供并抛出 [`AssertExpection`](./unittest_package_exceptions.html#class-assertexception)。 参数：
>>>>                                    * pt: PP <: [PrettyPrintable](../../unittest_common/unittest_common_package_api/unittest_common_package_interfaces.html#interface-prettyprintable) \- 失败信息。
>>>> func failExpect(String)
>>>>     
>>>>     public func failExpect(message: String): Unit
>>>>     
>>>> 
>>>> 功能：存储失败信息，在用户定义的断言函数内提供并继续函数执行。 参数：
>>>>                                    * message: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 失败信息。
>>>> func failExpect<PP>(PP)
>>>>     
>>>>     public func failExpect<PP>(pt: PP): Unit where PP <: PrettyPrintable
>>>>     
>>>> 
>>>> 功能：存储失败信息，在用户定义的断言函数内提供并继续函数执行。 参数：
>>>>                                    * pt: PP <: [PrettyPrintable](../../unittest_common/unittest_common_package_api/unittest_common_package_interfaces.html#interface-prettyprintable) \- 失败信息。
>>>> func setArgsAliases(Array<String>)
>>>>     
>>>>     public func setArgsAliases(aliases: Array<String>): Unit
>>>>     
>>>> 
>>>> 功能：设置别名以通过函数 `arg` 访问未解析的用户定义的断言函数参数。框架内部使用，用户无需使用该函数。 参数：
>>>>                                    * aliases: [Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[String](../../core/core_package_api/core_package_structs.html#struct-string)> \- 标识符数组。数组的大小应与参数列表匹配(除 `AssertionCtx` 外)。
>>>> class Benchmark
>>>>     
>>>>     public class Benchmark {}
>>>>     
>>>> 
>>>> 功能：该类提供创建和运行单个性能测试用例的方法。 prop name
>>>>     
>>>>     public prop name: String
>>>>     
>>>> 
>>>> 功能：获取用例名称。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string)。 func run()
>>>>     
>>>>     public func run(): BenchReport
>>>>     
>>>> 
>>>> 功能：运行该性能用例。 返回值：
>>>>                                    * BenchReport \- 运行结果报告。
>>>> static func create(String, Configuration, () -> Unit)
>>>>     
>>>>     public static func create(name: String, configuration!: Configuration = Configuration(), body!: () -> Unit): Benchmark
>>>>     
>>>> 
>>>> 功能：创建一个性能测试用例对象。 参数：
>>>>                                    * name : [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 用例名称。
>>>>                                    * configuration!: [Configuration](../../unittest_common/unittest_common_package_api/unittest_common_package_classes.html#class-configuration) \- 用例配置信息。
>>>>                                    * body!: () -> Unit - 用例执行体。
>>>> 返回值：
>>>>                                    * Benchmark \- 性能测试用例对象。
>>>> static func createParameterized<T>(String, DataStrategy<T>, Configuration, (T) -> Unit)
>>>>     
>>>>     public static func createParameterized<T>(name: String, strategy: DataStrategy<T>, configuration!: Configuration = Configuration(), body!: (T) -> Unit): Benchmark
>>>>     
>>>> 
>>>> 功能：创建一个参数化的性能测试用例对象。 参数：
>>>>                                    * name : [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 用例名称。
>>>>                                    * strategy : [DataStrategy](../../unittest_common/unittest_common_package_api/unittest_common_package_interfaces.html#interface-datastrategy) \- 参数数据策略。
>>>>                                    * configuration!: [Configuration](../../unittest_common/unittest_common_package_api/unittest_common_package_classes.html#class-configuration) \- 用例配置信息。
>>>>                                    * body!: () -> Unit - 用例执行体。
>>>> 返回值：
>>>>                                    * Benchmark \- 性能测试用例对象。
>>>> static func createParameterized<T>(String, DataStrategyProcessor<T>, Configuration, (T) -> Unit)
>>>>     
>>>>     public static func createParameterized<T>(name: String, strategy: DataStrategyProcessor<T>, configuration!: Configuration = Configuration(), body!: (T) -> Unit): Benchmark
>>>>     
>>>> 
>>>> 功能：创建一个参数化的性能测试用例对象。 参数：
>>>>                                    * name : [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 用例名称。
>>>>                                    * strategy : DataStrategyProcessor \- 参数数据处理器。
>>>>                                    * configuration!: [Configuration](../../unittest_common/unittest_common_package_api/unittest_common_package_classes.html#class-configuration) \- 用例配置信息。
>>>>                                    * body!: () -> Unit - 用例执行体。
>>>> 返回值：
>>>>                                    * Benchmark \- 性能测试用例对象。
>>>> class BenchReport
>>>>     
>>>>     public class BenchReport <: Report {}
>>>>     
>>>> 
>>>> 功能：提供性能用例执行结果报告处理能力。 父类型：
>>>>                                    * Report
>>>> func reportTo<T>(Reporter<BenchReport, T>)
>>>>     
>>>>     public func reportTo<T>(reporter: Reporter<BenchReport, T>): T
>>>>     
>>>> 
>>>> 功能：打印性能用例结果报告。 参数：
>>>>                                    * reporter : Reporter<BenchReport, T> \- 性能用例结果报告。
>>>> 返回值：
>>>>                                    * T : 打印结果返回值。一般为 Unit 类型。
>>>> class CartesianProductProcessor<T0,T1>
>>>>     
>>>>     public class CartesianProductProcessor<T0,T1> <: DataStrategyProcessor<(T0,T1)> {
>>>>         public CartesianProductProcessor(let left: DataStrategyProcessor<T0>, let right: DataStrategyProcessor<T1>)
>>>>     }
>>>>     
>>>> 
>>>> 功能：笛卡尔积处理器。 父类型：
>>>>                                    * DataStrategyProcessor<(T0, T1)>
>>>> CartesianProductProcessor(DataStrategyProcessor<T0>, DataStrategyProcessor<T1>)
>>>>     
>>>>     public CartesianProductProcessor(let left: DataStrategyProcessor<T0>, let right: DataStrategyProcessor<T1>)
>>>>     
>>>> 
>>>> 功能：CartesianProductProcessor主构造函数。 参数：
>>>>                                    * left : DataStrategyProcessor<T0> \- 数据策略处理器。
>>>>                                    * right : DataStrategyProcessor<T1> \- 数据策略处理器。
>>>> class ConsoleReporter
>>>>     
>>>>     public class ConsoleReporter <: Reporter<TestReport, Unit> & Reporter<BenchReport, Unit>{
>>>>         public ConsoleReporter(let colored!: Bool = true)
>>>>     }
>>>>     
>>>> 
>>>> 功能：打印单元测试用例结果或者性能测试用例结果到控制台。 父类型：
>>>>                                    * [Reporter](unittest_package_interfaces.html#interface-reporter)<TestReport, [Unit](../../core/core_package_api/core_package_intrinsics.html#unit)>
>>>>                                    * [Reporter](unittest_package_interfaces.html#interface-reporter)<BenchReport, [Unit](../../core/core_package_api/core_package_intrinsics.html#unit)>
>>>> ConsoleReporter(Bool)
>>>>     
>>>>     public ConsoleReporter(let colored!: Bool = true)
>>>>     
>>>> 
>>>> 功能：ConsoleReporter构造函数。 参数：
>>>>                                    * colored!: [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) \- 是否使用带颜色的打印，默认带颜色。
>>>> class TextReporter<PP>
>>>>     
>>>>     public class TextReporter<PP> <: Reporter<TestReport, PP> & Reporter<BenchReport, PP>
>>>>             where PP <: PrettyPrinter {
>>>>         public TextReporter(let into!: PP)
>>>>     }
>>>>     
>>>> 
>>>> 功能：将单元测试用例结果或性能测试结果打印到 [PrettyPrinter](../../unittest_common/unittest_common_package_api/unittest_common_package_classes.html#class-prettyprinter) 的子类。格式与 ConsoleReporter 相同。 父类型：
>>>>                                    * [Reporter](unittest_package_interfaces.html#interface-reporter)<TestReport, PP>
>>>>                                    * [Reporter](unittest_package_interfaces.html#interface-reporter)<BenchReport, PP>
>>>> TextReporter(PP)
>>>>     
>>>>     public TextReporter(let into!: PP)
>>>>     
>>>> 
>>>> 功能：TextReporter构造函数。 参数：
>>>>                                    * into!: PP - [PrettyPrinter](../../unittest_common/unittest_common_package_api/unittest_common_package_classes.html#class-prettyprinter) 的子类。打印报告。
>>>> class CsvReporter
>>>>     
>>>>     public class CsvReporter <: Reporter<BenchReport, Unit> {
>>>>         public CsvReporter(let directory: Path)
>>>>     }
>>>>     
>>>> 
>>>> 功能：打印性能测试用例结果数据到 Csv 文件上。 父类型：
>>>>                                    * [Reporter](unittest_package_interfaces.html#interface-reporter)<BenchReport, [Unit](../../core/core_package_api/core_package_intrinsics.html#unit)>
>>>> CsvReporter(Path)
>>>>     
>>>>     public CsvReporter(let directory: Path)
>>>>     
>>>> 
>>>> 功能：CsvReporter构造函数。 参数：
>>>>                                    * directory: [Path](../../fs/fs_package_api/fs_package_structs.html#struct-path) \- 打印文件生成地址。
>>>> class CsvRawReporter
>>>>     
>>>>     public class CsvRawReporter <: Reporter<BenchReport, Unit> {
>>>>         public CsvRawReporter(let directory: Path)
>>>>     }
>>>>     
>>>> 
>>>> 功能：打印性能测试用例结果数据，该数据只有批次的原始测量值，到 Csv 文件上。 父类型：
>>>>                                    * [Reporter](unittest_package_interfaces.html#interface-reporter)<BenchReport, [Unit](../../core/core_package_api/core_package_intrinsics.html#unit)>
>>>> CsvRawReporter(Path)
>>>>     
>>>>     public CsvRawReporter(let directory: Path)
>>>>     
>>>> 
>>>> 功能：CsvRawReporter构造函数。 参数：
>>>>                                    * directory: [Path](../../fs/fs_package_api/fs_package_structs.html#struct-path) \- 打印文件生成地址。
>>>> class CsvStrategy<T>
>>>>     
>>>>     public class CsvStrategy<T> <: DataStrategy<T> where T <: Serializable<T> {}
>>>>     
>>>> 
>>>> 功能：[DataStrategy](../../unittest_common/unittest_common_package_api/unittest_common_package_interfaces.html#interface-datastrategy) 对 CSV 数据格式的序列化实现。 父类型：
>>>>                                    * [DataStrategy](../../unittest_common/unittest_common_package_api/unittest_common_package_interfaces.html#interface-datastrategy)<T>
>>>> func provider(Configuration)
>>>>     
>>>>     public override func provider(configuration: Configuration): SerializableProvider<T>
>>>>     
>>>> 
>>>> 功能：生成序列化数据迭代器。 参数：
>>>>                                    * configuration: [Configuration](../../unittest_common/unittest_common_package_api/unittest_common_package_classes.html#class-configuration) \- 数据配置信息。
>>>> 返回值：
>>>>                                    * SerializableProvider<T> \- 序列化迭代器对象。
>>>> class DataStrategyProcessor<T>
>>>>     
>>>>     abstract sealed class DataStrategyProcessor<T> {}
>>>>     
>>>> 
>>>> 功能：所有 [DataStrategy](../../unittest_common/unittest_common_package_api/unittest_common_package_interfaces.html#interface-datastrategy) 组件的基类。该类的实例由 [@Strategy](../../unittest_testmacro/unittest_testmacro_package_api/unittest_testmacro_package_macros.html#strategy-%E5%AE%8F) 宏或成员函数创建。 prop isInfinite
>>>>     
>>>>     protected prop isInfinite: Bool
>>>>     
>>>> 
>>>> 功能：获取该策略是否为无限。 类型：[Bool](../../core/core_package_api/core_package_intrinsics.html#bool)。 func intoBenchmark(String, Configuration, (T, Int64, Int64) -> Float64)
>>>>     
>>>>     public func intoBenchmark(
>>>>         caseName!: String,
>>>>         configuration!: Configuration,
>>>>         doRun!: (T, Int64, Int64) -> Float64
>>>>     ): Benchmark
>>>>     
>>>> 
>>>> 功能：宏生成的代码使用的辅助函数。用于创建使用该策略的性能测试用例。 参数：
>>>>                                    * caseName!: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 用例名称。
>>>>                                    * configuration!: [Configuration](../../unittest_common/unittest_common_package_api/unittest_common_package_classes.html#class-configuration) \- 配置信息。
>>>>                                    * doRun!: (T, Int64, Int64) -> Float64 - 性能测试用例执行体。
>>>> 返回值：
>>>>                                    * Benchmark \- 性能测试用例对象。
>>>> func intoUnitTestCase(String, Configuration, (T) -> Unit)
>>>>     
>>>>     public func intoUnitTestCase(
>>>>         caseName!: String,
>>>>         configuration!: Configuration,
>>>>         doRun!: (T) -> Unit
>>>>     ): UnitTestCase
>>>>     
>>>> 
>>>> 功能：宏生成的代码使用的辅助函数。用于创建使用该策略的测试用例。 参数：
>>>>                                    * caseName!: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 用例名称。
>>>>                                    * configuration!: [Configuration](../../unittest_common/unittest_common_package_api/unittest_common_package_classes.html#class-configuration) \- 配置信息。
>>>>                                    * doRun!: (T) -> Unit - 性能测试用例执行体。
>>>> 返回值：
>>>>                                    * UnitTestCase \- 测试用例对象。
>>>> func lastItemInfo()
>>>>     
>>>>     protected func lastItemInfo(): Array<InputParameter>
>>>>     
>>>> 
>>>> 功能：获取上一个处理条目的信息。 返回值：
>>>>                                    * Array<[InputParameter](./unittest_package_classes.html#class-inputparameter)> \- 上一个处理条目的信息。
>>>> func lastItem(Configuration)
>>>>     
>>>>     protected func lastItem(configuration: Configuration): T
>>>>     
>>>> 
>>>> 功能：获取上一个处理条目。 参数：
>>>>                                    * configuration : [Configuration](./../../unittest_common/unittest_common_package_api/unittest_common_package_classes.html#class-configuration) \- 处理策略配置信息。
>>>> 返回值：
>>>>                                    * T - 上一个处理条目。
>>>> func provide(Configuration)
>>>>     
>>>>     protected func provide(configuration: Configuration): Iterable<T>
>>>>     
>>>> 
>>>> 功能：生成依据配置信息和数据策略生成的数据迭代器。 参数：
>>>>                                    * configuration : [Configuration](./../../unittest_common/unittest_common_package_api/unittest_common_package_classes.html#class-configuration) \- 处理策略配置信息。
>>>> 返回值：
>>>>                                    * [Iterable](../../core/core_package_api/core_package_interfaces.html#interface-iterablee)<T> \- 数据迭代器。
>>>> func shrinkLastItem(Configuration, LazyCyclicNode)
>>>>     
>>>>     protected func shrinkLastItem(configuration: Configuration, engine: LazyCyclicNode): Iterable<T>
>>>>     
>>>> 
>>>> 功能：收缩上一个条目。 参数：
>>>>                                    * configuration:[Configuration](./../../unittest_common/unittest_common_package_api/unittest_common_package_classes.html#class-configuration) \- 配置信息。
>>>>                                    * engine : [LazyCyclicNode](./unittest_package_classes.html#class-lazycyclicnode) \- 惰性节点。
>>>> 返回值：
>>>>                                    * [Iterable](../../core/core_package_api/core_package_interfaces.html#interface-iterablee)<T> \- 收缩后的数据迭代器。
>>>> static func start(DataStrategy<T>, String)
>>>>     
>>>>     public static func start(s: DataStrategy<T>, name: String): SimpleProcessor<T>
>>>>     
>>>> 
>>>> 功能：[DataStrategy](../../unittest_common/unittest_common_package_api/unittest_common_package_interfaces.html#interface-datastrategy) 的组合和映射的起点。 参数：
>>>>                                    * s: [DataStrategy](../../unittest_common/unittest_common_package_api/unittest_common_package_interfaces.html#interface-datastrategy)<T> \- 数据策略。
>>>>                                    * name: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 用例名称。
>>>> 返回值：
>>>>                                    * SimpleProcessor<T> \- 测试用例处理器。
>>>> static func start<U>(() -> DataStrategy<U>, String)
>>>>     
>>>>     public static func start<U>(f: () -> DataStrategy<U>, name: String): DataStrategyProcessor<U> where U <: BenchInputProvider < T >
>>>>     
>>>> 
>>>> 功能：[DataStrategy](../../unittest_common/unittest_common_package_api/unittest_common_package_interfaces.html#interface-datastrategy) 的组合和映射的起点。 参数：
>>>>                                    * s: () -> [DataStrategy](../../unittest_common/unittest_common_package_api/unittest_common_package_interfaces.html#interface-datastrategy)<U> \- 生成数据策略的闭包。
>>>>                                    * name: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 用例名称。
>>>> 返回值：
>>>>                                    * DataStrategyProcessor<T> \- 数据策略处理器。
>>>> static func start(() -> DataStrategy<T>, String, Int64)
>>>>     
>>>>     public static func start(f: () -> DataStrategy<T>, name: String, x!: Int64 = 0): SimpleProcessor<T>
>>>>     
>>>> 
>>>> 功能：[DataStrategy](../../unittest_common/unittest_common_package_api/unittest_common_package_interfaces.html#interface-datastrategy) 的组合和映射的起点。 参数：
>>>>                                    * s: () -> [DataStrategy](../../unittest_common/unittest_common_package_api/unittest_common_package_interfaces.html#interface-datastrategy)<T> \- 生成数据策略的闭包。
>>>>                                    * name: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 用例名称。
>>>>                                    * x!: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) \- 为实现不同返回值的重构增加的参数。
>>>> 返回值：
>>>>                                    * SimpleProcessor<T> \- 测试用例处理器。
>>>> static func start(() -> DataStrategyProcessor<T>, String)
>>>>     
>>>>     public static func start(f: () -> DataStrategyProcessor<T>, name: String): DataStrategyProcessor<T>
>>>>     
>>>> 
>>>> 功能：[DataStrategy](../../unittest_common/unittest_common_package_api/unittest_common_package_interfaces.html#interface-datastrategy) 的组合和映射的起点。 参数：
>>>>                                    * s: () -> DataStrategyProcessor<T> \- 生成数据策略处理器的闭包。
>>>>                                    * name: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 用例名称。
>>>> 返回值：
>>>>                                    * DataStrategyProcessor<T> \- 数据策略处理器。
>>>> static func start<U>(() -> DataStrategyProcessor<U>, String, Int64)
>>>>     
>>>>     public static func start<U>(f: () -> DataStrategyProcessor<U>, name: String, x!: Int64 = 0):
>>>>         DataStrategyProcessor<U> where U <: BenchInputProvider<T>
>>>>     
>>>> 
>>>> 功能：[DataStrategy](../../unittest_common/unittest_common_package_api/unittest_common_package_interfaces.html#interface-datastrategy) 的组合和映射的起点。 参数：
>>>>                                    * s: () -> DataStrategyProcessor<U> \- 生成数据策略处理器的闭包。
>>>>                                    * name: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 用例名称。
>>>>                                    * x!: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) \- 为实现不同返回值的重构增加的参数。
>>>> 返回值：
>>>>                                    * DataStrategyProcessor<U> where U <: [BenchInputProvider](./unittest_package_interfaces.html#interface-benchinputprovider)<T> \- 数据策略处理器。
>>>> extend <T> DataStrategyProcessor<T>
>>>>     
>>>>     extend <T> DataStrategyProcessor<T> {}
>>>>     
>>>> 
>>>> func map<R>((T) -> R)
>>>>     
>>>>     public func map<R>(f: (T) -> R): MapProcessor<T, R>
>>>>     
>>>> 
>>>> 功能：简单地将 `f` 应用于原始数据策略的每个项目。 [Shrink](../../unittest_prop_test/unittest_prop_test_package_api/unittest_prop_test_package_interfaces.html#interface-shrinkt) 也会发生在原始输入上，然后进行映射。 参数：
>>>>                                    * f: (T) -> R - 需要增加的处理逻辑函数。
>>>> 返回值：
>>>>                                    * MapProcessor<T, R> \- 应用 `f` 后的处理器。
>>>> func mapWithConfig<R>((T, Configuration) -> R)
>>>>     
>>>>     public func mapWithConfig<R>(f: (T, Configuration) -> R): MapProcessor<T, R>
>>>>     
>>>> 
>>>> 功能：可以访问当前的 [Configuration](./../../unittest_common/unittest_common_package_api/unittest_common_package_classes.html#class-configuration) ，只需将 `f` 应用于原始数据策略的每个项目。 [Shrink](../../unittest_prop_test/unittest_prop_test_package_api/unittest_prop_test_package_interfaces.html#interface-shrinkt) 也会发生在原始输入上，然后进行映射。 参数：
>>>>                                    * f: (T, Configuration) -> R - 需要增加的处理逻辑函数。
>>>> 返回值：
>>>>                                    * MapProcessor<T, R> \- 应用 `f` 后的处理器。
>>>> func flatMap<R>((T) -> DataProvider<R>)
>>>>     
>>>>     public func flatMap<R>(f: (T) -> DataProvider<R>): FlatMapProcessor<T, R>
>>>>     
>>>> 
>>>> 功能：简单地将 `f` 应用于原始数据策略的每个项目，然后展平结果。 [Shrink](../../unittest_prop_test/unittest_prop_test_package_api/unittest_prop_test_package_interfaces.html#interface-shrinkt) 也会发生在原始输入上，然后进行 [flatMap](../../collection/collection_package_api/collection_package_function.html#func-flatmapt-r-t---iterabler) 。 参数：
>>>>                                    * f: (T) -> [DataProvider](../../unittest_common/unittest_common_package_api/unittest_common_package_interfaces.html#interface-datastrategy)<R> \- 需要增加的处理逻辑函数。
>>>> 返回值：
>>>>                                    * FlatMapProcessor<T, R> \- 应用 `f` 后的处理器。
>>>> func flatMapStrategy((T) -> DataStrategy<R>)
>>>>     
>>>>     public func flatMapStrategy<R>(f: (T) -> DataStrategy<R>): FlatMapStrategyProcessor<T, R>
>>>>     
>>>> 
>>>> 功能：简单地将 `f` 应用于原始数据策略的每个项目，然后展平结果。 [Shrink](../../unittest_prop_test/unittest_prop_test_package_api/unittest_prop_test_package_interfaces.html#interface-shrinkt) 是通过返回的策略而不是原始输入来完成的。 参数：
>>>>                                    * f: (T) -> [DataStrategy](../../unittest_common/unittest_common_package_api/unittest_common_package_interfaces.html#interface-datastrategy)<R> \- 需要增加的处理逻辑函数。
>>>> 返回值：
>>>>                                    * FlatMapStrategyProcessor<T, R> \- 应用 `f` 后的处理器。
>>>> func product(DataStrategyProcessor<R>)
>>>>     
>>>>     public func product<R>(p: DataStrategyProcessor<R>): CartesianProductProcessor<T, R>
>>>>     
>>>> 
>>>> 功能：笛卡尔积组合器创建包含原始策略中元素的所有可能排列的数据策略。 对于无限策略，它首先迭代所有有限的子策略，然后才推进无限的子策略。 [Shrink](../../unittest_prop_test/unittest_prop_test_package_api/unittest_prop_test_package_interfaces.html#interface-shrinkt) 独立且统一地发生在原始策略的每个元素上。 参数：
>>>>                                    * p: DataStrategyProcessor<R> \- 数据策略处理器。
>>>> 返回值：
>>>>                                    * CartesianProductProcessor<T, R> \- 笛卡尔积处理器。
>>>> class FlatMapProcessor<T,R>
>>>>     
>>>>     public class FlatMapProcessor<T,R> <: DataStrategyProcessor<R> {}
>>>>     
>>>> 
>>>> 功能：对参数数据进行 [FlatMap](../../collection/collection_package_api/collection_package_function.html#func-flatmapt-r-t---iterabler) 的处理器。 父类型：
>>>>                                    * DataStrategyProcessor<R>
>>>> class FlatMapStrategyProcessor<T,R>
>>>>     
>>>>     public class FlatMapStrategyProcessor<T,R> <: DataStrategyProcessor<R> {}
>>>>     
>>>> 
>>>> 功能：对参数数据进行 [FlatMap](../../collection/collection_package_api/collection_package_function.html#func-flatmapt-r-t---iterabler) 的处理器。 父类型：
>>>>                                    * DataStrategyProcessor<R>
>>>> class InputParameter
>>>>     
>>>>     public class InputParameter {}
>>>>     
>>>> 
>>>> 功能：入参对象类型。 class JsonStrategy<T>
>>>>     
>>>>     public class JsonStrategy<T> <: DataStrategy<T> where T <: Serializable<T> {}
>>>>     
>>>> 
>>>> 功能：[DataStrategy](../../unittest_common/unittest_common_package_api/unittest_common_package_interfaces.html#interface-datastrategy) 对 JSON 数据格式的序列化实现。 父类型：
>>>>                                    * [DataStrategy](../../unittest_common/unittest_common_package_api/unittest_common_package_interfaces.html#interface-datastrategy)<T>
>>>> func provider(Configuration)
>>>>     
>>>>     public override func provider(configuration: Configuration): SerializableProvider<T>
>>>>     
>>>> 
>>>> 功能：生成序列化数据迭代器。 参数：
>>>>                                    * configuration: [Configuration](../../unittest_common/unittest_common_package_api/unittest_common_package_classes.html#class-configuration) \- 数据配置信息。
>>>> 返回值：
>>>>                                    * SerializableProvider<T> \- 序列化迭代器对象。
>>>> class LazyCyclicNode
>>>>     
>>>>     public open class LazyCyclicNode {}
>>>>     
>>>> 
>>>> 功能：用于在一个循环中一个接一个地推进类型擦除的内部惰性迭代器。 func advance()
>>>>     
>>>>     protected open func advance(): ?Unit
>>>>     
>>>> 
>>>> 功能：前进一个值。 返回值：
>>>>                                    * ?Unit - 当无法前进时返回 None ，否则返回 Unit 。
>>>> func recover()
>>>>     
>>>>     protected open func recover(): Unit
>>>>     
>>>> 
>>>> 功能：恢复或后退一个值。 class MapProcessor<T,R>
>>>>     
>>>>     public class MapProcessor<T,R> <: DataStrategyProcessor<R> {}
>>>>     
>>>> 
>>>> 功能：对参数数据进行 [Map](../../collection/collection_package_api/collection_package_function.html#func-mapt-rt---r) 的处理器。 父类型：
>>>>                                    * DataStrategyProcessor<R>
>>>> class PowerAssertDiagramBuilder
>>>>     
>>>>     public class PowerAssertDiagramBuilder {
>>>>         public init(expression: String)
>>>>     }
>>>>     
>>>> 
>>>> 功能：[PowerAssert](../../unittest_testmacro/unittest_testmacro_package_api/unittest_testmacro_package_macros.html#powerassert-%E5%AE%8F) 输出结果构造器。 init(String)
>>>>     
>>>>     public init(expression: String)
>>>>     
>>>> 
>>>> 功能：构造函数。 参数：
>>>>                                    * expression: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 表达式字符串。
>>>> func r<T>(T, String, Int64)
>>>>     
>>>>     public func r<T>(value: T, exprAsText: String, position: Int64): T
>>>>     
>>>> 
>>>> 功能：记录对比数据。 参数：
>>>>                                    * value: T - 被记录的数据。
>>>>                                    * exprAsText: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 表达式字符串。
>>>>                                    * position: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) \- 位置信息。
>>>> 返回值：
>>>>                                    * T - 被记录的数据。
>>>> func r(String, String, Int64)
>>>>     
>>>>     public func r(value: String, exprAsText: String, position: Int64): String
>>>>     
>>>> 
>>>> 功能：记录对比数据。 参数：
>>>>                                    * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 被记录的数据。
>>>>                                    * exprAsText: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 表达式字符串。
>>>>                                    * position: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) \- 位置信息。
>>>> 返回值：
>>>>                                    * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 被记录的数据。
>>>> func r(Rune, String, Int64)
>>>>     
>>>>     public func r(value: Rune, exprAsText: String, position: Int64): Rune
>>>>     
>>>> 
>>>> 功能：记录对比数据。 参数：
>>>>                                    * value: [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) \- 被记录的数据。
>>>>                                    * exprAsText: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 表达式字符串。
>>>>                                    * position: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) \- 位置信息。
>>>> 返回值：
>>>>                                    * [Rune](../../core/core_package_api/core_package_structs.html#struct-string) \- 被记录的数据。
>>>> func h(Exception, String, Int64)
>>>>     
>>>>     public func h(exception: Exception, exprAsText: String, position: Int64): Nothing
>>>>     
>>>> 
>>>> 功能：处理异常。 参数：
>>>>                                    * exception: Exception - 需要被处理的异常。
>>>>                                    * exprAsText: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 表达式字符串。
>>>>                                    * position: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) \- 位置信息。
>>>> func w(Bool)
>>>>     
>>>>     public func w(passed: Bool): Unit
>>>>     
>>>> 
>>>> 功能：当用例通过时返回成功结果，失败时抛出异常并打印对比结果。 参数：
>>>>                                    * passed: [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) \- 用例是否通过。
>>>> class RandomDataProvider<T>
>>>>     
>>>>     public class RandomDataProvider<T> <: DataProvider<T> where T <: Arbitrary<T> {
>>>>         public RandomDataProvider(private let configuration: Configuration)
>>>>     }
>>>>     
>>>> 
>>>> 功能：使用随机数据生成的 [DataProvider](../../unittest_common/unittest_common_package_api/unittest_common_package_interfaces.html#interface-dataprovider) 接口的实现。 父类型：
>>>>                                    * [DataProvider](../../unittest_common/unittest_common_package_api/unittest_common_package_interfaces.html#interface-dataprovider)<T>
>>>> RandomDataProvider(Configuration)
>>>>     
>>>>     public RandomDataProvider(private let configuration: Configuration)
>>>>     
>>>> 
>>>> 功能：构造一个随机数据提供者RandomDataProvider的对象。 参数：
>>>>                                    * configuration: [Configuration](../../unittest_common/unittest_common_package_api/unittest_common_package_classes.html#class-configuration) \- 配置对象，必须包含一个随机生成器，名称为 `random` ，类型为 random.[Random](../../random/random_package_api/random_package_classes.html#class-random)。
>>>> 异常：
>>>>                                    * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 当 configuration 不包含 random 实例时，抛出异常。
>>>> prop isInfinite
>>>>     
>>>>     public override prop isInfinite: Bool
>>>>     
>>>> 
>>>> 功能：是否生成无限的数据。 类型：[Bool](../../core/core_package_api/core_package_intrinsics.html#bool)。 func provide()
>>>>     
>>>>     public override func provide(): Iterable<T>
>>>>     
>>>> 
>>>> 功能：提供随机化生成的数据。 返回值：
>>>>                                    * [Iterable](../../core/core_package_api/core_package_interfaces.html#interface-iterablee)<T> \- 从 T 的任意实例创建的无限迭代器。
>>>> class RandomDataShrinker<T>
>>>>     
>>>>     public class RandomDataShrinker<T> <: DataShrinker<T> {}
>>>>     
>>>> 
>>>> 功能：使用随机数据生成的 [DataShrinker](../../unittest_common/unittest_common_package_api/unittest_common_package_interfaces.html#interface-datashrinkert) 接口的实现。 父类型：
>>>>                                    * [DataShrinker](../../unittest_common/unittest_common_package_api/unittest_common_package_interfaces.html#interface-datashrinkert)<T>
>>>> func shrinker(T)
>>>>     
>>>>     public override func shrink(value: T): Iterable<T>
>>>>     
>>>> 
>>>> 功能：获取值的缩减器。 参数：
>>>>                                    * value: T - 参数值。
>>>> 返回值：
>>>>                                    * [Iterable](../../core/core_package_api/core_package_interfaces.html#interface-iterablee)<T> \- 如果参数实现了 [Shrink](../../unittest_prop_test/unittest_prop_test_package_api/unittest_prop_test_package_interfaces.html#interface-shrinkt) 接口，则返回缩减后的迭代器，如果未实现，则返回空的数组。
>>>> class RandomDataStrategy<T>
>>>>     
>>>>     public class RandomDataStrategy<T> <: DataStrategy<T> where T <: Arbitrary<T>{}
>>>>     
>>>> 
>>>> 功能：使用随机数据生成的 [DataStrategy](../../unittest_common/unittest_common_package_api/unittest_common_package_interfaces.html#interface-datastrategy) 接口的实现。 父类型：
>>>>                                    * [DataStrategy](../../unittest_common/unittest_common_package_api/unittest_common_package_interfaces.html#interface-datastrategy)<T>
>>>> func provider(Configuration)
>>>>     
>>>>     public override func provider(configuration: Configuration): RandomDataProvider<T>
>>>>     
>>>> 
>>>> 功能：获取随机数据的提供者。 参数：
>>>>                                    * configuration: [Configuration](../../unittest_common/unittest_common_package_api/unittest_common_package_classes.html#class-configuration) \- 参数配置信息。
>>>> 返回值：
>>>>                                    * [RandomDataProvider](unittest_package_classes.html#class-randomdataprovidert) \- 随机数提供者。
>>>> func shrinker(Configuration)
>>>>     
>>>>     public override func shrinker(_: Configuration): RandomDataShrinker<T>
>>>>     
>>>> 
>>>> 功能：获取随机数据的缩减器。 参数：
>>>>                                    * _: [Configuration](../../unittest_common/unittest_common_package_api/unittest_common_package_classes.html#class-configuration) \- 参数配置信息。
>>>> 返回值：
>>>>                                    * [RandomDataShrinker](unittest_package_classes.html#class-randomdatashrinkert) \- 随机数据的缩减器。
>>>> class Report
>>>>     
>>>>     sealed abstract class Report {}
>>>>     
>>>> 
>>>> 功能：打印测试用例结果报告的基类。 prop errorCount
>>>>     
>>>>     public prop errorCount: Int64
>>>>     
>>>> 
>>>> 功能：获取错误的用例个数。 类型：[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)。 prop caseCount
>>>>     
>>>>     public prop caseCount: Int64
>>>>     
>>>> 
>>>> 功能：获取用例个数。 类型：[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)。 prop passedCount
>>>>     
>>>>     public prop passedCount:   Int64
>>>>     
>>>> 
>>>> 功能：获取通过的用例个数。 类型：[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)。 prop failedCount
>>>>     
>>>>     public prop failedCount:   Int64
>>>>     
>>>> 
>>>> 功能：获取失败的用例个数。 类型：[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)。 prop skippedCount
>>>>     
>>>>     public prop skippedCount:   Int64
>>>>     
>>>> 
>>>> 功能：获取跳过的用例个数。 类型：[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)。 class RawStatsReporter
>>>>     
>>>>     public class RawStatsReporter <: Reporter<BenchReport, HashMap<String, (Float64, Float64)>> {
>>>>         public RawStatsReporter()
>>>>     }
>>>>     
>>>> 
>>>> 功能：未处理的性能测试数据报告器。仅给框架内部使用。 父类型：
>>>>                                    * [Reporter](unittest_package_interfaces.html#interface-reporter)<BenchReport, [HashMap](../../collection/collection_package_api/collection_package_class.html#class-hashmapk-v-where-k--hashable--equatablek)<[String](../../core/core_package_api/core_package_structs.html#struct-string), ([Float64](../../core/core_package_api/core_package_intrinsics.html#float64), [Float64](../../core/core_package_api/core_package_intrinsics.html#float64))>>
>>>> RawStatsReporter()
>>>>     
>>>>     public RawStatsReporter()
>>>>     
>>>> 
>>>> 功能：RawStatsReporter构造函数。 class SerializableProvider<T>
>>>>     
>>>>     public class SerializableProvider<T> <: DataProvider<T> where T <: Serializable<T> {}
>>>>     
>>>> 
>>>> 功能：获取序列化数据 [DataProvider](../../unittest_common/unittest_common_package_api/unittest_common_package_interfaces.html#interface-dataprovider) 接口的实现。 父类型：
>>>>                                    * [DataProvider](../../unittest_common/unittest_common_package_api/unittest_common_package_interfaces.html#interface-dataprovider)<T>
>>>> prop isInfinite
>>>>     
>>>>     public prop isInfinite: Bool
>>>>     
>>>> 
>>>> 功能：是否生成无限的数据。 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool)。 func provide()
>>>>     
>>>>     public override func provide(): Iterable<T>
>>>>     
>>>> 
>>>> 功能：获取数据迭代器。 返回值：
>>>>                                    * [Iterable](../../core/core_package_api/core_package_interfaces.html#interface-iterablee)<T> \- 数据迭代器。
>>>> class SimpleProcessor<T>
>>>>     
>>>>     public class SimpleProcessor<T> <: DataStrategyProcessor<T> {
>>>>         public SimpleProcessor(let buildDelegate:() -> DataStrategy<T>, let name: String)
>>>>     }
>>>>     
>>>> 
>>>> 功能：简单的数据策略处理器。对 DataStrategyProcessor 的一种实现。 父类型：
>>>>                                    * DataStrategyProcessor<T>
>>>> SimpleProcessor(() -> DataStrategy<T>, String)
>>>>     
>>>>     public SimpleProcessor(let buildDelegate:() -> DataStrategy<T>, let name: String)
>>>>     
>>>> 
>>>> 功能：SimpleProcessor构造函数。 参数：
>>>>                                    * buildDelegate : () -> [DataStrategy](../../unittest_common/unittest_common_package_api/unittest_common_package_interfaces.html#interface-datastrategy)<T> \- 生成数据策略的闭包。
>>>>                                    * name : [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 处理器名称。
>>>> class TestGroup
>>>>     
>>>>     public class TestGroup {}
>>>>     
>>>> 
>>>> 功能：提供构建和运行测试组合方法的类。 prop name
>>>>     
>>>>     public prop name: String
>>>>     
>>>> 
>>>> 功能：获取测试组合名称。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string)。 func runBenchmarks()
>>>>     
>>>>     public func runBenchmarks(): BenchReport
>>>>     
>>>> 
>>>> 功能：运行所有性能测试用例。 返回值：
>>>>                                    * BenchReport \- 性能测试用例报告。
>>>> func runBenchmarks(Configuration)
>>>>     
>>>>     public func runBenchmarks(Configuration): BenchReport
>>>>     
>>>> 
>>>> 功能：带运行配置得执行所有性能测试用例。 参数：
>>>>                                    * configuration: [Configuration](../../unittest_common/unittest_common_package_api/unittest_common_package_classes.html#class-configuration) \- 运行配置。
>>>> 返回值：
>>>>                                    * BenchReport \- 性能测试用例报告。
>>>> func runTests()
>>>>     
>>>>     public func runTests(): TestReport
>>>>     
>>>> 
>>>> 功能：执行所有单元测试用例。 返回值：
>>>>                                    * TestReport \- 单元测试用例报告。
>>>> func runTests(Configuration)
>>>>     
>>>>     public func runTests(configuration: Configuration): TestReport
>>>>     
>>>> 
>>>> 功能：带运行配置得执行所有单元测试用例。 参数：
>>>>                                    * configuration: [Configuration](../../unittest_common/unittest_common_package_api/unittest_common_package_classes.html#class-configuration) \- 运行配置。
>>>> 返回值：
>>>>                                    * TestReport \- 单元测试用例报告。
>>>> static func builder(String)
>>>>     
>>>>     public static func builder(name: String): TestGroupBuilder
>>>>     
>>>> 
>>>> 功能：创建测试组合构造器。 参数：
>>>>                                    * name : [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 测试组合名称。
>>>> 返回值：
>>>>                                    * TestGroupBuilder \- 测试组合构造器。
>>>> static func builder(TestGroup)
>>>>     
>>>>     public static func builder(group: TestGroup): TestGroupBuilder
>>>>     
>>>> 
>>>> 功能：创建测试组合构造器。 参数：
>>>>                                    * group : 类 class AssertionCtx
>>>>                                          
>>>>                                          public class AssertionCtx
>>>>                                          
>>>> 
>>>> 功能：存储用户定义的断言的状态。提供用于编写​​用户定义断言的方法。 prop args
>>>>                                          
>>>>                                          public prop args: String
>>>>                                          
>>>> 
>>>> 功能：返回以逗号分隔的未解析的用户定义断言参数的字符串。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string)。 prop caller
>>>>                                          
>>>>                                          public prop caller: String
>>>>                                          
>>>> 
>>>> 功能：获取用户定义的断言函数的标识符。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string)。 prop hasErrors
>>>>                                          
>>>>                                          public prop hasErrors: Bool
>>>>                                          
>>>> 
>>>> 功能：如果用户定义内的任何断言失败，则为 `true` 。否则为 `false`。 类型：[Bool](../../core/core_package_api/core_package_intrinsics.html#bool) func arg(String)
>>>>                                          
>>>>                                          public func arg(key: String): String
>>>>                                          
>>>> 
>>>> 功能：返回表示原始传递的标识符的参数值的字符串表达，与参数列表中的标识符匹配。 参数：
>>>>                                      * key: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 函数参数列表中的标识符。
>>>> 返回值：
>>>>                                      * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 对应标识符的参数值字符串表达。
>>>> TestGroup \- 测试组合。
>>>> 返回值：
>>>>                                    * TestGroupBuilder \- 测试组合构造器。
>>>> class TestGroupBuilder
>>>>     
>>>>     public class TestGroupBuilder {}
>>>>     
>>>> 
>>>> 功能：提供配置测试组合的方法的构造器。 func add(Benchmark)
>>>>     
>>>>     public func add(benchmark: Benchmark): TestGroupBuilder
>>>>     
>>>> 
>>>> 功能：为测试组合增加性能测试用例。 参数：
>>>>                                    * benchmark : Benchmark \- 性能测试用例。
>>>> 返回值：
>>>>                                    * TestGroupBuilder \- 测试组合构造器。
>>>> func add(TestSuite)
>>>>     
>>>>     public func add(suite: TestSuite): TestGroupBuilder
>>>>     
>>>> 
>>>> 功能：为测试组合增加单元测试套。 参数：
>>>>                                    * suite : TestSuite \- 单元测试套。
>>>> 返回值：
>>>>                                    * TestGroupBuilder \- 测试组合构造器。
>>>> func add(UnitTestCase)
>>>>     
>>>>     public func add(test: UnitTestCase): TestGroupBuilder
>>>>     
>>>> 
>>>> 功能：为测试组合增加单元测试用例。 参数：
>>>>                                    * test : UnitTestCase \- 单元测试用例。
>>>> 返回值：
>>>>                                    * TestGroupBuilder \- 测试组合构造器。
>>>> func build()
>>>>     
>>>>     public func build(): TestGroup
>>>>     
>>>> 
>>>> 功能：配置完成后，构建测试组合对象。 返回值：
>>>>                                    * TestGroup \- 测试组合。
>>>> func configure(Configuration)
>>>>     
>>>>     public func configure(configuration: Configuration): TestGroupBuilder
>>>>     
>>>> 
>>>> 功能：为测试组合配置配置信息。 参数：
>>>>                                    * configuration : [Configuration](../../unittest_common/unittest_common_package_api/unittest_common_package_classes.html#class-configuration) \- 配置信息。
>>>> 返回值：
>>>>                                    * TestGroupBuilder \- 测试组合构造器。
>>>> func setName(String)
>>>>     
>>>>     public func setName(name: String): TestGroupBuilder
>>>>     
>>>> 
>>>> 功能：为测试组合设置名称。 参数：
>>>>                                    * name : [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 名称。
>>>> 返回值：
>>>>                                    * TestGroupBuilder \- 测试组合构造器。
>>>> class TestPackage
>>>>     
>>>>     public class TestPackage {
>>>>         public TestPackage(let name: String)
>>>>     }
>>>>     
>>>> 
>>>> 功能：用例包对象。 TestPackage(String)
>>>>     
>>>>     public TestPackage(let name: String)
>>>>     
>>>> 
>>>> 功能：TestPackage构造函数。 参数：
>>>>                                    * name: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 用例包名称。
>>>> func registerCase(() -> UnitTestCase)
>>>>     
>>>>     public func registerCase(testCase: () -> UnitTestCase): Unit
>>>>     
>>>> 
>>>> 功能：注册单元测试用例。 参数：
>>>>                                    * testCase: () -> UnitTestCase \- 单元测试用例生成闭包。
>>>> func registerSuite(() -> TestSuite)
>>>>     
>>>>     public func registerSuite(suite: () -> TestSuite): Unit
>>>>     
>>>> 
>>>> 功能：注册测试套。 参数：
>>>>                                    * suite: () -> TestSuite \- 测试套生成闭包。
>>>> func registerBench(() -> Benchmark)
>>>>     
>>>>     public func registerBench(bench: () -> Benchmark): Unit
>>>>     
>>>> 
>>>> 功能：注册性能用例。 参数：
>>>>                                    * bench: () -> Benchmark \- 性能用例生成闭包。
>>>> class TestReport
>>>>     
>>>>     public class TestReport <: Report {}
>>>>     
>>>> 
>>>> 功能：单元测试执行结果报告。 父类型：
>>>>                                    * Report
>>>> func reportTo<T>(Reporter<TestReport, T>)
>>>>     
>>>>     public func reportTo<T>(reporter: Reporter<TestReport, T>): T
>>>>     
>>>> 
>>>> 功能：打印单元测试执行报告。 参数：
>>>>                                    * reporter : Reporter<TestReport, T> \- 单元测试报告打印器。
>>>> 返回值：
>>>>                                    * T : 打印返回值，一般为 Unit 。
>>>> class TestSuite
>>>>     
>>>>     public class TestSuite {}
>>>>     
>>>> 
>>>> 功能：提供构建和执行测试套方法的类。 prop name
>>>>     
>>>>     public prop name: String
>>>>     
>>>> 
>>>> 功能：获取测试套名称。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string)。 func runBenchmarks()
>>>>     
>>>>     public func runBenchmarks(): BenchReport
>>>>     
>>>> 
>>>> 功能：运行所有性能测试用例。 返回值：
>>>>                                    * BenchReport \- 性能测试运行结果。
>>>> func runBenchmarks(Configuration)
>>>>     
>>>>     public func runBenchmarks(configuration: Configuration): BenchReport
>>>>     
>>>> 
>>>> 功能：带配置信息得运行所有性能测试用例。 参数：
>>>>                                    * configuration : [Configuration](../../unittest_common/unittest_common_package_api/unittest_common_package_classes.html#class-configuration) \- 运行配置信息。
>>>> 返回值：
>>>>                                    * BenchReport \- 性能测试用例运行结果。
>>>> func runTests()
>>>>     
>>>>     public func runTests(): TestReport
>>>>     
>>>> 
>>>> 功能：运行测试套。 返回值：
>>>>                                    * TestReport \- 测试套运行结果。
>>>> func runTests(Configuration)
>>>>     
>>>>     public func runTests(configuration: Configuration): TestReport
>>>>     
>>>> 
>>>> 功能：带配置信息得运行测试套。 参数：
>>>>                                    * configuration : [Configuration](../../unittest_common/unittest_common_package_api/unittest_common_package_classes.html#class-configuration) \- 运行配置信息。
>>>> 返回值：
>>>>                                    * TestReport \- 测试套运行结果。
>>>> static func builder(String)
>>>>     
>>>>     public static func builder(name: String): TestSuiteBuilder
>>>>     
>>>> 
>>>> 功能：创建测试套构建器。 参数：
>>>>                                    * name : [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 测试套名称。
>>>> 返回值：
>>>>                                    * TestSuiteBuilder \- 测试套构造器。
>>>> static func builder(TestSuite)
>>>>     
>>>>     public static func builder(suite: TestSuite): TestSuiteBuilder
>>>>     
>>>> 
>>>> 功能：创建测试套构建器。 参数：
>>>>                                    * suite : TestSuite \- 测试套。
>>>> 返回值：
>>>>                                    * TestSuiteBuilder \- 测试套构造器。
>>>> class TestSuiteBuilder
>>>>     
>>>>     public class TestSuiteBuilder {}
>>>>     
>>>> 
>>>> 功能：提供配置测试套方法的测试套构造器。 func add(Benchmark)
>>>>     
>>>>     public func add(benchmark: Benchmark): TestSuiteBuilder
>>>>     
>>>> 
>>>> 功能：为测试套添加性能用例。 参数：
>>>>                                    * benchmark : Benchmark \- 性能测试用例。
>>>> 返回值：
>>>>                                    * TestGroupBuilder \- 测试组合构造器。
>>>> func add(UnitTestCase)
>>>>     
>>>>     public func add(test: UnitTestCase): TestSuiteBuilder
>>>>     
>>>> 
>>>> 功能：为测试套添加单元测试用例。 参数：
>>>>                                    * test : UnitTestCase \- 单元测试用例。
>>>> 返回值：
>>>>                                    * TestGroupBuilder \- 测试组合构造器。
>>>> func afterAll(() -> Unit)
>>>>     
>>>>     public func afterAll(body: () -> Unit): TestSuiteBuilder
>>>>     
>>>> 
>>>> 功能：为测试套添加在所有用例执行完成后执行的生命周期管理闭包。 参数：
>>>>                                    * body : () -> Unit - 执行体。
>>>> 返回值：
>>>>                                    * TestGroupBuilder \- 测试组合构造器。
>>>> func afterEach(() -> Unit)
>>>>     
>>>>     public func afterEach(body: () -> Unit): TestSuiteBuilder
>>>>     
>>>> 
>>>> 功能：为测试套添加在每个用例执行完成后执行的生命周期管理闭包。 参数：
>>>>                                    * body : () -> Unit - 执行体。
>>>> 返回值：
>>>>                                    * TestGroupBuilder \- 测试组合构造器。
>>>> func afterEach((String) -> Unit)
>>>>     
>>>>     public func afterEach(body: (String) -> Unit): TestSuiteBuilder
>>>>     
>>>> 
>>>> 功能：为测试套添加在每个用例执行完成后执行的生命周期管理闭包。 参数：
>>>>                                    * body : (String) -> Unit - 执行体。
>>>> 返回值：
>>>>                                    * TestGroupBuilder \- 测试组合构造器。
>>>> func beforeAll(() -> Unit)
>>>>     
>>>>     public func beforeAll(body: () -> Unit): TestSuiteBuilder
>>>>     
>>>> 
>>>> 功能：为测试套添加在所有用例执行前执行的生命周期管理闭包。 参数：
>>>>                                    * body : () -> Unit - 执行体。
>>>> 返回值：
>>>>                                    * TestGroupBuilder \- 测试组合构造器。
>>>> func beforeEach(() -> Unit)
>>>>     
>>>>     public func beforeEach(body: () -> Unit): TestSuiteBuilder
>>>>     
>>>> 
>>>> 功能：为测试套添加在每个用例执行前执行的生命周期管理闭包。 参数：
>>>>                                    * body : () -> Unit - 执行体。
>>>> 返回值：
>>>>                                    * TestGroupBuilder \- 测试组合构造器。
>>>> func beforeEach((String) -> Unit)
>>>>     
>>>>     public func beforeEach(body: (String) -> Unit): TestSuiteBuilder
>>>>     
>>>> 
>>>> 功能：为测试套添加在每个用例执行前执行的生命周期管理闭包。 参数：
>>>>                                    * body : (String) -> Unit - 执行体。
>>>> 返回值：
>>>>                                    * TestGroupBuilder \- 测试组合构造器。
>>>> func template(TestSuite)
>>>>     
>>>>     public func template(template: TestSuite): TestSuiteBuilder
>>>>     
>>>> 
>>>> 功能：执行此方法可为测试套件设置模板。 参数
>>>>                                    * template : TestSuite - 将作为模板的测试套件。
>>>> 返回值：
>>>>                                    * TestGroupBuilder \- 测试组合构造器。
>>>> func build()
>>>>     
>>>>     public func build(): TestSuite
>>>>     
>>>> 
>>>> 功能：配置完成后构造测试套。 返回值：
>>>>                                    * TestSuite \- 测试套。
>>>> func configure(Configuration)
>>>>     
>>>>     public func configure(configuration: Configuration): TestSuiteBuilder
>>>>     
>>>> 
>>>> 功能：为测试套添加配置信息。 参数：
>>>>                                    * configuration : [Configuration](../../unittest_common/unittest_common_package_api/unittest_common_package_classes.html#class-configuration) \- 测试配置信息。
>>>> 返回值：
>>>>                                    * TestGroupBuilder \- 测试组合构造器。
>>>> func setName(String)
>>>>     
>>>>     public func setName(name: String): TestSuiteBuilder
>>>>     
>>>> 
>>>> 功能：为测试套设置名称。 参数：
>>>>                                    * name : [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 测试套名称。
>>>> 返回值：
>>>>                                    * TestGroupBuilder \- 测试组合构造器。
>>>> class UnitTestCase
>>>>     
>>>>     public class UnitTestCase {}
>>>>     
>>>> 
>>>> 功能：提供创建和执行单元测试用例的方法的类。 prop name
>>>>     
>>>>     public prop name: String
>>>>     
>>>> 
>>>> 功能：获取单元测试名称。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string)。 func run()
>>>>     
>>>>     public func run(): TestReport
>>>>     
>>>> 
>>>> 功能：运行单元测试用例。 返回值：
>>>>                                    * TestReport \- 单元测试执行结果报告。
>>>> static func create(String, Configuration, () -> Unit)
>>>>     
>>>>     public static func create(name: String, configuration!: Configuration = Configuration(), body!: () -> Unit): UnitTestCase
>>>>     
>>>> 
>>>> 功能：创建单元测试用例。 参数：
>>>>                                    * name : [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 用例名称。
>>>>                                    * configuration!: [Configuration](../../unittest_common/unittest_common_package_api/unittest_common_package_classes.html#class-configuration) \- 用例配置信息。
>>>>                                    * body!: () -> Unit - 用例执行体。
>>>> 返回值：
>>>>                                    * UnitTestCase \- 单元测试用例对象。
>>>> static func createParameterized<T>(String, DataStrategy<T>, Configuration, (T) -> Unit)
>>>>     
>>>>     public static func createParameterized<T>(name: String, strategy: DataStrategy<T>, configuration!: Configuration = Configuration(), body!: (T) -> Unit): UnitTestCase
>>>>     
>>>> 
>>>> 功能：创建参数化的单元测试用例。 参数：
>>>>                                    * name : [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 用例名称。
>>>>                                    * strategy : [DataStrategy](../../unittest_common/unittest_common_package_api/unittest_common_package_interfaces.html#interface-datastrategy) \- 参数数据策略。
>>>>                                    * configuration!: [Configuration](../../unittest_common/unittest_common_package_api/unittest_common_package_classes.html#class-configuration) \- 用例配置信息。
>>>>                                    * body!: () -> Unit - 用例执行体。
>>>> 返回值：
>>>>                                    * UnitTestCase \- 单元测试用例对象。
>>>> static func createParameterized<T>(String, DataStrategyProcessor<T>, Configuration, (T) -> Unit)
>>>>     
>>>>     public static func createParameterized<T>(name: String, strategy: DataStrategyProcessor<T>, configuration!: Configuration = Configuration(), body!: (T) -> Unit): UnitTestCase
>>>>     
>>>> 
>>>> 功能：创建参数化的单元测试用例。 参数：
>>>>                                    * name : [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 用例名称。
>>>>                                    * strategy : DataStrategyProcessor \- 参数数据处理器。
>>>>                                    * configuration!: [Configuration](../../unittest_common/unittest_common_package_api/unittest_common_package_classes.html#class-configuration) \- 用例配置信息。
>>>>                                    * body!: () -> Unit - 用例执行体。
>>>> 返回值：
>>>>                                    * UnitTestCase \- 单元测试用例对象。
>>>> class XmlReporter
>>>>     
>>>>     public class XmlReporter <: Reporter<TestReport, Unit> {
>>>>         public XmlReporter(let directory: Path)
>>>>     }
>>>>     
>>>> 
>>>> 功能：打印单元测试用例结果数据到 Xml 文件上。 父类型：
>>>>                                    * [Reporter](unittest_package_interfaces.html#interface-reporter)<TestReport, [Unit](../../core/core_package_api/core_package_intrinsics.html#unit)>
>>>> XmlReporter(Path)
>>>>     
>>>>     public XmlReporter(let directory: Path)
>>>>     
>>>> 
>>>> 功能：XmlReporter构造函数。 参数：
>>>>                                    * directory: [Path](../../fs/fs_package_api/fs_package_structs.html#struct-path) \- 打印文件生成地址。
