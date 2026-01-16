接口 interface BenchInputProvider
>>>>     
>>>>     public interface BenchInputProvider<T> <: BenchmarkInputMarker  {
>>>>         mut func get(idx: Int64): T
>>>>         mut func reset(max: Int64)
>>>>     }
>>>>     
>>>> 
>>>> 功能：当某些代码需要在性能测试执行前执行，或当输入变化就需要重新执行一段代码时，可实现本接口。同时 [DataStrategy](../../unittest_common/unittest_common_package_api/unittest_common_package_interfaces.html#interface-datastrategy) 的实现类型应返回此接口的实现类型。 用户一般不需要自行实现该接口，可直接使用 [@Strategy](../../unittest_testmacro/unittest_testmacro_package_api/unittest_testmacro_package_macros.html#strategy-%E5%AE%8F) 宏。 父类型：
>>>>                                  * BenchmarkInputMarker
>>>> mut func get(Int64)
>>>>     
>>>>     mut func get(idx: Int64): T
>>>>     
>>>> 
>>>> 功能：获取元素。该函数的执行时间包含在基准测量中，然后作为框架开销计算的一部分从结果中排除。 参数：
>>>>                                  * idx : [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 元素索引值。
>>>> 返回值：
>>>>                                  * T - 元素值。
>>>> mut func reset(Int64)
>>>>     
>>>>     mut func reset(max: Int64)
>>>>     
>>>> 
>>>> 功能：在基准测量之前调用。调用此函数后，后续的 `get(i)` 调用必须成功获取 [0, max) 中的 `i` 。 参数：
>>>>                                  * max : [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 最大值。
>>>> interface BenchmarkConfig
>>>>     
>>>>     public interface BenchmarkConfig {
>>>>         func batchSize(b: Int64): Unit
>>>>         func batchSize(x: Range<Int64>): Unit
>>>>         func warmup(x: Int64): Unit
>>>>         func warmup(x: Duration): Unit
>>>>         func minDuration(x: Duration): Unit
>>>>         func explicitGC(x: ExplicitGcType): Unit
>>>>         func minBatches(x: Int64): Unit
>>>>     }
>>>>     
>>>> 
>>>> 功能：该接口提供为 [Configuration](../../unittest_common/unittest_common_package_api/unittest_common_package_classes.html#class-configuration) 宏配置性能测试相关信息的函数签名。 func batchSize(Int64)
>>>>     
>>>>     func batchSize(b: Int64): Unit
>>>>     
>>>> 
>>>> 功能：可实现该函数，为 `@Configuration` 宏配置批次的大小。 参数：
>>>>                                  * b: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 需配置的批次大小值。
>>>> func batchSize(Range<Int64>): Unit
>>>>     
>>>>     func batchSize(x: Range<Int64>): Unit
>>>>     
>>>> 
>>>> 功能：可实现该函数，为 `@Configuration` 宏配置批次的大小。 参数：
>>>>                                  * x: [Range](../../core/core_package_api/core_package_structs.html#struct-ranget-where-t--countablet--comparablet--equatablet)<[Int64](../../core/core_package_api/core_package_intrinsics.html#int64)> - 需配置的批次大小范围值。
>>>> func explicitGC(ExplicitGcType)
>>>>     
>>>>     func explicitGC(x: ExplicitGcType): Unit
>>>>     
>>>> 
>>>> 功能：可实现该函数，为 `@Configuration` 宏配置 GC 的类型。 参数：
>>>>                                  * x: [ExplicitGcType](../unittest_package_api/unittest_package_enums.html#enum-explicitgctype) - 需配置的 GC 类型值。
>>>> func minBatches(Int64)
>>>>     
>>>>     func minBatches(x: Int64): Unit
>>>>     
>>>> 
>>>> 功能：可实现该函数，为 `@Configuration` 宏配置最小批次个数。 参数：
>>>>                                  * [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 需配置的最小批次个数。
>>>> func minDuration(Duration)
>>>>     
>>>>     func minDuration(x: Duration): Unit
>>>>     
>>>> 
>>>> 功能：可实现该函数，为 `@Configuration` 宏配置性能测试最小执行时间。 参数：
>>>>                                  * x: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 需配置的性能测试最小执行时间。
>>>> func warmup(Int64)
>>>>     
>>>>     func warmup(x: Int64): Unit
>>>>     
>>>> 
>>>> 功能：可实现该函数，为 `@Configuration` 宏配置预热期的执行次数。 参数：
>>>>                                  * x: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 需配置的预热期的执行次数。
>>>> func warmup(Duration)
>>>>     
>>>>     func warmup(x: Duration): Unit
>>>>     
>>>> 
>>>> 功能：可实现该函数，为 `@Configuration` 宏配置预热期的执行时间。 参数：
>>>>                                  * x: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 需配置的预热期的执行时间。
>>>> interface BenchmarkInputMarker
>>>>     
>>>>     public interface BenchmarkInputMarker
>>>>     
>>>> 
>>>> 功能：当我们不知道 `T` 时，该接口能够检测 `BenchInputProvider<T>` 。 interface Generator<T>
>>>>     
>>>>     public interface Generator<T> {
>>>>         func next(): T
>>>>     }
>>>>     
>>>> 
>>>> 功能：生成器生成 T 类型的值。 func next()
>>>>     
>>>>     func next(): T
>>>>     
>>>> 
>>>> 功能：获取生成出来的 T 类型的值。 返回值：
>>>>                                  * T - 生成的 T 类型的值。
>>>> interface Measurement
>>>>     
>>>>     public interface Measurement {
>>>>         prop conversionTable: MeasurementUnitTable
>>>>         prop name: String
>>>>         prop textDescription: String
>>>>         func setup(): Unit
>>>>         func measure(): Float64
>>>>     }
>>>>     
>>>> 
>>>> 功能：该接口指定如何在性能测试期间测量数据以及如何在报告中显示数据。 实现接口的实例可以作为宏 `@Measure` 的属性传递。 prop conversionTable
>>>>     
>>>>     prop conversionTable: MeasurementUnitTable
>>>>     
>>>> 
>>>> 功能：用于在性能测试报告中构建测量值的表示。 包含测量单位的边界对。 根据值的边界，使用最合适的单位。 对于 CSV 格式报告，始终选择下限以简化结果处理。 默认值为 `[(1.0, "")]`。 类型：[MeasurementUnitTable](../unittest_package_api/unittest_package_types.html#type-measurementunittable)。 prop name
>>>>     
>>>>     prop name: String
>>>>     
>>>> 
>>>> 功能：当前 `Measurement` 类型的唯一显示名称。 有助于区分报告表中的不同测量类型。 默认值为 `Measurement`。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string)。 prop textDescription
>>>>     
>>>>     prop textDescription: String
>>>>     
>>>> 
>>>> 功能：描述此测量的简单文本将显示在某些报告中。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string)。 func measure()
>>>>     
>>>>     func measure(): Float64
>>>>     
>>>> 
>>>> 功能：将用于统计分析的测量运行时间的方法。 返回值：
>>>>                                  * [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) - 测量得到的数据。
>>>> func setup()
>>>>     
>>>>     func setup()
>>>>     
>>>> 
>>>> 功能：此测量的初始化例程。在每个基准步骤之前调用。 interface Reporter
>>>>     
>>>>     sealed interface Reporter <TReport, TReturn>
>>>>     
>>>> 
>>>> 功能：报告器基础接口。 interface TestClass
>>>>     
>>>>     public interface TestClass {
>>>>         func asTestSuite(): TestSuite
>>>>     }
>>>>     
>>>> 
>>>> 功能：提供创建 [TestSuite](./unittest_package_classes.html#class-testsuite) 的方法。 func asTestSuite()
>>>>     
>>>>     func asTestSuite(): TestSuite
>>>>     
>>>> 
>>>> 功能：创建 [TestSuite](./unittest_package_classes.html#class-testsuite) 的方法。 返回值：
>>>>                                  * [TestSuite](./unittest_package_classes.html#class-testsuite) - 测试套对象。
