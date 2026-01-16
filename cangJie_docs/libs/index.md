false功能：TupleWrapper2构造器。结构体 struct Function0Wrapper<R>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public struct Function0Wrapper<R> {
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>         public Function0Wrapper(public let function: () -> R)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     }
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：将闭包封装为结构体。 Function0Wrapper(() -> R)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public Function0Wrapper(public let function: () -> R)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：Function0Wrapper构造器。 参数：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * function: () -> R - 被封装的闭包。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> operator func ()()
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public operator func () (): R
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：调用操作符函数。将闭包转换为结构体的调用操作符函数。 返回值：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * R - 同闭包的返回值。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> extend<R> Function0Wrapper<R> <: Arbitrary<Function0Wrapper<R>> where R <: Arbitrary<R>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     extend<R> Function0Wrapper<R> <: Arbitrary<Function0Wrapper<R>> where R <: Arbitrary<R>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：为 Function0Wrapper 扩展 [Arbitrary](./unittest_prop_test_package_interfaces.html#interface-arbitrary) 实现。 父类型：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * [Arbitrary](unittest_prop_test_package_interfaces.html#interface-arbitrary)<Function0Wrapper<R>>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> static func arbitrary(RandomSource)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public static func arbitrary(random: RandomSource): Generator<Function0Wrapper<R>>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：获取生成 Function0Wrapper<R> 类型随机值生成器。 struct TupleWrapper2<T0, T1>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public struct TupleWrapper2<T0, T1> {
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>         public TupleWrapper2(public let tuple: (T0, T1))
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     }
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：将闭包封装为结构体。闭包带两个参数。 TupleWrapper2((T0, T1))
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public TupleWrapper2(public let tuple: (T0, T1))
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：TupleWrapper2构造器。 参数：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * tuple: (T0, T1) - 闭包的两个入参。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> func apply<R>(f: (T0, T1) -> R)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public func apply<R>(f: (T0, T1) -> R): R
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：执行闭包函数。 参数：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * f: (T0, T1) -> R - 待执行的闭包。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 返回值：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * R - 闭包的执行结果。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> extend<T0, T1> TupleWrapper2<T0, T1> <: ToString
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     extend<T0, T1> TupleWrapper2<T0, T1> <: ToString
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：为 TupleWrapper2 扩展 [ToString](../../core/core_package_api/core_package_interfaces.html#interface-tostring) 实现。 父类型：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * [ToString](../../core/core_package_api/core_package_interfaces.html#interface-tostring)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> func toString()
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public func toString()
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：TupleWrapper2 的字符串表达。 extend<T0, T1> TupleWrapper2<T0, T1> <: Equatable<TupleWrapper2<T0, T1>>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     extend<T0, T1> TupleWrapper2<T0, T1> <: Equatable<TupleWrapper2<T0, T1>>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：为 TupleWrapper2 扩展 [Equatable](../../core/core_package_api/core_package_interfaces.html#interface-equatablet) 实现。 父类型：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * [Equatable](../../core/core_package_api/core_package_interfaces.html#interface-equatablet)<TupleWrapper2<T0, T1>>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> operator func ==(TupleWrapper2<T0, T1>)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public operator func ==(other: TupleWrapper2<T0, T1>)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：比较两个二元元组。 参数：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * other: TupleWrapper2<T0, T1> - 待比较的元组。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 返回值：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 相等时返回 `true` ，否则返回 `false` 。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> operator func !=(TupleWrapper2<T0, T1>)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public operator func !=(other: TupleWrapper2<T0, T1>)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：比较两个二元元组。 参数：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * other: TupleWrapper2<T0, T1> - 待比较的元组。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 返回值：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 不相等时返回 `true` ，否则返回 `false` 。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> extend<T0, T1> TupleWrapper2<T0, T1> <: IndexAccess
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     extend<T0, T1> TupleWrapper2<T0, T1> <: IndexAccess
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：为 TupleWrapper2 扩展 [IndexAccess](./unittest_prop_test_package_interfaces.html#interface-indexaccess) 实现。 父类型：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * [IndexAccess](unittest_prop_test_package_interfaces.html#interface-indexaccess)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> func getElementAsAny(Int64)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public func getElementAsAny(index: Int64): ?Any
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：按索引获取元组内的值。 参数：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * index: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 索引值。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 返回值：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * ?[Any](../../core/core_package_api/core_package_interfaces.html#interface-any) - 获取到的元组内的值。索引不合法时返回 `None` 。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> extend<T0, T1> TupleWrapper2<T0, T1> <: Arbitrary<TupleWrapper2<T0, T1>> where T0 <: Arbitrary<T0>,T1 <: Arbitrary<T1>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     extend<T0, T1> TupleWrapper2<T0, T1> <: Arbitrary<TupleWrapper2<T0, T1>> where T0 <: Arbitrary<T0>,T1 <: Arbitrary<T1>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：为 TupleWrapper2 扩展 [Arbitrary](./unittest_prop_test_package_interfaces.html#interface-arbitrary) 实现。 父类型：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * [Arbitrary](unittest_prop_test_package_interfaces.html#interface-arbitrary)<TupleWrapper2<T0, T1>>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> static func arbitrary(RandomSource)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public static func arbitrary(random: RandomSource): Generator<TupleWrapper2<T0, T1>>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：获取生成 TupleWrapper2<T0, T1> 类型随机值生成器。 struct TupleWrapper3<T0, T1, T2>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public struct TupleWrapper3<T0, T1, T2> {
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>         public TupleWrapper3(public let tuple: (T0, T1,T2))
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     }
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：将闭包封装为结构体。闭包带两个参数。 TupleWrapper3((T0, T1,T2))
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public TupleWrapper3(public let tuple: (T0, T1,T2))
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：TupleWrapper3构造器。 参数：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * tuple: (T0, T1,T2) - 闭包的两个入参。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> func apply<R>(f: (T0, T1,T2) -> R)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public func apply<R>(f: (T0, T1,T2) -> R): R
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：执行闭包函数。 参数：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * f: (T0, T1,T2) -> R - 待执行的闭包。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 返回值：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * R - 闭包的执行结果。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> extend<T0, T1, T2> TupleWrapper3<T0, T1, T2> <: ToString
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     extend<T0, T1, T2> TupleWrapper3<T0, T1, T2> <: ToString
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：为 TupleWrapper3 扩展 [ToString](../../core/core_package_api/core_package_interfaces.html#interface-tostring) 实现。 父类型：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * [ToString](../../core/core_package_api/core_package_interfaces.html#interface-tostring)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> func toString()
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public func toString()
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：TupleWrapper3 的字符串表达。 extend<T0, T1, T2> TupleWrapper3<T0, T1, T2> <: Equatable<TupleWrapper3<T0, T1, T2>>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     extend<T0, T1, T2> TupleWrapper3<T0, T1, T2> <: Equatable<TupleWrapper3<T0, T1, T2>>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：为 TupleWrapper3 扩展 [Equatable](../../core/core_package_api/core_package_interfaces.html#interface-equatablet) 实现。 父类型：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * [Equatable](../../core/core_package_api/core_package_interfaces.html#interface-equatablet)<TupleWrapper3<T0, T1, T2>>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> operator func ==(TupleWrapper3<T0, T1, T2>)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public operator func ==(other: TupleWrapper3<T0, T1, T2>)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：比较两个元组。 参数：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * other: TupleWrapper3<T0, T1, T2> - 待比较的元组。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 返回值：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 相等时返回 `true` ，否则返回 `false` 。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> operator func !=(TupleWrapper3<T0, T1, T2>)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public operator func !=(other: TupleWrapper3<T0, T1, T2>)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：比较两个元组。 参数：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * other: TupleWrapper3<T0, T1, T2> - 待比较的元组。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 返回值：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 不相等时返回 `true` ，否则返回 `false` 。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> extend<T0, T1, T2> TupleWrapper3<T0, T1, T2> <: IndexAccess
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     extend<T0, T1, T2> TupleWrapper3<T0, T1, T2> <: IndexAccess
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：为 TupleWrapper3 扩展 [IndexAccess](./unittest_prop_test_package_interfaces.html#interface-indexaccess) 实现。 父类型：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * [IndexAccess](unittest_prop_test_package_interfaces.html#interface-indexaccess)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> func getElementAsAny(Int64)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public func getElementAsAny(index: Int64): ?Any
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：按索引获取元组内的值。 参数：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * index: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 索引值。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 返回值：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * ?[Any](../../core/core_package_api/core_package_interfaces.html#interface-any) - 获取到的元组内的值。索引不合法时返回 `None` 。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> extend<T0, T1, T2> TupleWrapper3<T0, T1, T2> <: Arbitrary<TupleWrapper3<T0, T1, T2>> where T0 <: Arbitrary<T0>,T1 <: Arbitrary<T1>,T2 <: Arbitrary<T2>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     extend<T0, T1, T2> TupleWrapper3<T0, T1, T2> <: Arbitrary<TupleWrapper3<T0, T1, T2>>  where T0 <: Arbitrary<T0>,T1 <: Arbitrary<T1>,T2 <: Arbitrary<T2>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：为 TupleWrapper3 扩展 [Arbitrary](./unittest_prop_test_package_interfaces.html#interface-arbitrary) 实现。 父类型：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * [Arbitrary](unittest_prop_test_package_interfaces.html#interface-arbitrary)<TupleWrapper3<T0, T1, T2>>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> static func arbitrary(RandomSource)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public static func arbitrary(random: RandomSource): Generator<TupleWrapper3<T0, T1, T2>>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：获取生成 TupleWrapper3<T0, T1, T2> 类型随机值生成器。 struct TupleWrapper4<T0, T1, T2, T3>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public struct TupleWrapper4<T0, T1, T2, T3> {
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>         public TupleWrapper4(public let tuple: (T0, T1, T2, T3))
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     }
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：将闭包封装为结构体。闭包带两个参数。 TupleWrapper4((T0, T1, T2, T3))
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public TupleWrapper4(public let tuple: (T0, T1, T2, T3))
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：TupleWrapper4构造器。 参数：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * tuple: (T0, T1, T2, T3) - 闭包的4个入参。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> func apply<R>(f: (T0, T1, T2, T3) -> R)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public func apply<R>(f: (T0, T1, T2, T3) -> R): R
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：执行闭包函数。 参数：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * f: (T0, T1, T2, T3) -> R - 待执行的闭包。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 返回值：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * R - 闭包的执行结果。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> extend<T0, T1, T2, T3> TupleWrapper4<T0, T1, T2, T3> <: ToString
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     extend<T0, T1, T2, T3> TupleWrapper4<T0, T1, T2, T3> <: ToString
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：为 TupleWrapper4 扩展 [ToString](../../core/core_package_api/core_package_interfaces.html#interface-tostring) 实现。 父类型：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * [ToString](../../core/core_package_api/core_package_interfaces.html#interface-tostring)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> func toString()
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public func toString()
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：TupleWrapper4 的字符串表达。 extend<T0, T1, T2, T3> TupleWrapper4<T0, T1, T2, T3> <: Equatable<TupleWrapper4<T0, T1, T2, T3>>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     extend<T0, T1, T2> TupleWrapper3<T0, T1, T2> <: Equatable<TupleWrapper3<T0, T1, T2>>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：为 TupleWrapper4 扩展 [Equatable](../../core/core_package_api/core_package_interfaces.html#interface-equatablet) 实现。 父类型：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * [Equatable](../../core/core_package_api/core_package_interfaces.html#interface-equatablet)<TupleWrapper3<T0, T1, T2>>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> operator func ==(TupleWrapper4<T0, T1, T2, T3>)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public operator func ==(other: TupleWrapper4<T0, T1, T2, T3>)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：比较两个元组。 参数：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * other: TupleWrapper4<T0, T1, T2, T3> - 待比较的元组。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 返回值：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 相等时返回 `true` ，否则返回 `false` 。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> operator func !=(TupleWrapper4<T0, T1, T2, T3>)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public operator func !=(other: TupleWrapper4<T0, T1, T2, T3>)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：比较两个元组。 参数：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * other: TupleWrapper4<T0, T1, T2, T3> - 待比较的元组。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 返回值：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 不相等时返回 `true` ，否则返回 `false` 。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> extend<T0, T1, T2, T3> TupleWrapper4<T0, T1, T2, T3> <: IndexAccess
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     extend<T0, T1, T2, T3> TupleWrapper4<T0, T1, T2, T3> <: IndexAccess
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：为 TupleWrapper4 扩展 [IndexAccess](./unittest_prop_test_package_interfaces.html#interface-indexaccess) 实现。 父类型：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * [IndexAccess](unittest_prop_test_package_interfaces.html#interface-indexaccess)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> func getElementAsAny(Int64)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public func getElementAsAny(index: Int64): ?Any
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：按索引获取元组内的值。 参数：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * index: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 索引值。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 返回值：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * ?[Any](../../core/core_package_api/core_package_interfaces.html#interface-any) - 获取到的元组内的值。索引不合法时返回 `None` 。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> extend<T0, T1, T2, T3> TupleWrapper4<T0, T1, T2, T3><: Arbitrary<TupleWrapper4<T0, T1, T2, T3>> where where T0 <: Arbitrary<T0>,T1 <: Arbitrary<T1>,T2 <: Arbitrary<T2>,T3 <: Arbitrary<T3>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     extend<T0, T1, T2, T3> TupleWrapper4<T0, T1, T2, T3><: Arbitrary<TupleWrapper4<T0, T1, T2, T3>> where where T0 <: Arbitrary<T0>,T1 <: Arbitrary<T1>,T2 <: Arbitrary<T2>,T3 <: Arbitrary<T3>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：为 TupleWrapper4 扩展 [Arbitrary](./unittest_prop_test_package_interfaces.html#interface-arbitrary) 实现。 父类型：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * [Arbitrary](unittest_prop_test_package_interfaces.html#interface-arbitrary)<TupleWrapper4<T0, T1, T2, T3>>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> static func arbitrary(RandomSource)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public static func arbitrary(random: RandomSource): Generator<TupleWrapper2<T0, T1, T2, T3>>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：获取生成 TupleWrapper4<T0, T1, T2, T3> 类型随机值生成器。 struct TupleWrapper5<T0, T1, T2, T3, T4>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public struct TupleWrapper5<T0, T1, T2, T3, T4> {
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>         public TupleWrapper5(public let tuple: (T0, T1, T2, T3, T4))
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     }
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：将闭包封装为结构体。闭包带两个参数。 TupleWrapper5((T0, T1, T2, T3, T4))
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public TupleWrapper5(public let tuple: (T0, T1, T2, T3, T4))
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：TupleWrapper5构造器。 参数：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * tuple: (T0, T1, T2, T3, T4) - 闭包的5个入参。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> func apply<R>(f: (T0, T1, T2, T3, T4) -> R)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public func apply<R>(f: (T0, T1, T2, T3, T4) -> R): R
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：执行闭包函数。 参数：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * f: (T0, T1, T2, T3, T4) -> R - 待执行的闭包。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 返回值：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * R - 闭包的执行结果。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> extend<T0, T1, T2, T3, T4> TupleWrapper5<T0, T1, T2, T3, T4> <: ToString
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     extend<T0, T1, T2, T3, T4> TupleWrapper5<T0, T1, T2, T3, T4> <: ToString
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：为 TupleWrapper5 扩展 [ToString](../../core/core_package_api/core_package_interfaces.html#interface-tostring) 实现。 父类型：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * [ToString](../../core/core_package_api/core_package_interfaces.html#interface-tostring)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> func toString()
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public func toString()
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：TupleWrapper5 的字符串表达。 extend<T0, T1, T2, T3, T4> TupleWrapper5<T0, T1, T2, T3, T4> <: Equatable<TupleWrapper5<T0, T1, T2, T3, T4>>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     extend<T0, T1, T2> TupleWrapper3<T0, T1, T2> <: Equatable<TupleWrapper3<T0, T1, T2>>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：为 TupleWrapper5 扩展 [Equatable](../../core/core_package_api/core_package_interfaces.html#interface-equatablet) 实现。 父类型：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * [Equatable](../../core/core_package_api/core_package_interfaces.html#interface-equatablet)<TupleWrapper3<T0, T1, T2>>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> operator func ==(TupleWrapper5<T0, T1, T2, T3, T4>)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public operator func ==(other: TupleWrapper5<T0, T1, T2, T3, T4>)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：比较两个二元元组。 参数：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * other: TupleWrapper5<T0, T1, T2, T3> - 待比较的元组。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 返回值：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 相等时返回 `true` ，否则返回 `false` 。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> operator func !=(TupleWrapper5<T0, T1, T2, T3, T4>)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public operator func !=(other: TupleWrapper2<T0, T1, T2, T3, T4>)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：比较两个元组。 参数：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * other: TupleWrapper5<T0, T1, T2, T3, T4> - 待比较的元组。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 返回值：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 不相等时返回 `true` ，否则返回 `false` 。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> extend<T0, T1, T2, T3, T4> TupleWrapper5<T0, T1, T2, T3, T4> <: IndexAccess
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     extend<T0, T1, T2, T3, T4> TupleWrapper5<T0, T1, T2, T3, T4> <: IndexAccess
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：为 TupleWrapper5 扩展 [IndexAccess](./unittest_prop_test_package_interfaces.html#interface-indexaccess) 实现。 父类型：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * [IndexAccess](unittest_prop_test_package_interfaces.html#interface-indexaccess)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> func getElementAsAny(Int64)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public func getElementAsAny(index: Int64): ?Any
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：按索引获取元组内的值。 参数：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * index: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 索引值。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 返回值：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * ?[Any](../../core/core_package_api/core_package_interfaces.html#interface-any) - 获取到的元组内的值。索引不合法时返回 `None` 。
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> extend<T0, T1, T2, T3, T4> TupleWrapper5<T0, T1, T2, T3, T4> <: Arbitrary<TupleWrapper2<T0, T1, T2, T3, T4>> where T0 <: Arbitrary<T0>,T1 <: Arbitrary<T1>,T2 <: Arbitrary<T2>,T3 <: Arbitrary<T3>,T4 <: Arbitrary<T4>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     extend<T0, T1, T2, T3, T4> TupleWrapper5<T0, T1, T2, T3, T4> <: Arbitrary<TupleWrapper2<T0, T1, T2, T3, T4>> where T0 <: Arbitrary<T0>,T1 <: Arbitrary<T1>,T2 <: Arbitrary<T2>,T3 <: Arbitrary<T3>,T4 <: Arbitrary<T4>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：为 TupleWrapper5 扩展 [Arbitrary](./unittest_prop_test_package_interfaces.html#interface-arbitrary) 实现。 父类型：
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       * [Arbitrary](unittest_prop_test_package_interfaces.html#interface-arbitrary)<TupleWrapper2<T0, T1, T2, T3, T4>>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> static func arbitrary(RandomSource)
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     public static func arbitrary(random: RandomSource): Generator<TupleWrapper5<T0, T1, T2, T3, T4>>
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>     
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 
>>>>>>>>>>>>>>>>>>>>>>>>>>>>> 功能：获取生成 TupleWrapper5<T0, T1, T2, T3, T4> 类型随机值生成器。
