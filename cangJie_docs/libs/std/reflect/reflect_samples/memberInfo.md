异常类 class IllegalSetException
>>>     
>>>     public class IllegalSetException <: ReflectException {
>>>         public init()
>>>         public init(message: String)
>>>     }
>>>     
>>> 
>>> 功能：[IllegalSetException](reflect_package_exceptions.html#class-illegalsetexception) 为对不可变类型进行更改异常。 父类型：
>>>                                * ReflectException
>>> init()
>>>     
>>>     public init()
>>>     
>>> 
>>> 功能：创建 [IllegalSetException](reflect_package_exceptions.html#class-illegalsetexception) 实例。 init(String)
>>>     
>>>     public init(message: String)
>>>     
>>> 
>>> 功能：根据异常信息创建 [IllegalSetException](reflect_package_exceptions.html#class-illegalsetexception)异常类 class IllegalSetException
>>>     
>>>     public class IllegalSetException <: ReflectException {
>>>         public init()
>>>         public init(message: String)
>>>     }
>>>     
>>> 
>>> 功能：[IllegalSetException](reflect_package_exceptions.html#class-illegalsetexception) 为对不可变类型进行更改异常。 父类型：
>>>                                * ReflectException
>>> init()
>>>     
>>>     public init()
>>>     
>>> 
>>> 功能：创建 [IllegalSetException](reflect_package_exceptions.html#class-illegalsetexception) 实例。 init(String)
>>>     
>>>     public init(message: String)
>>>     
>>> 
>>> 功能：根据异常信息创建 [IllegalSetException](reflect_package_exceptions.html#class-illegalsetexception) 实例。 参数：
>>>                                * message: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 异常信息。
>>> class IllegalTypeException
>>>     
>>>     public class IllegalTypeException <: ReflectException {
>>>         public init()
>>>         public init(message: String)
>>>     }
>>>     
>>> 
>>> 功能：[IllegalTypeException](reflect_package_exceptions.html#class-illegaltypeexception) 为类型不匹配异常。 父类型：
>>>                                * ReflectException
>>> init()
>>>     
>>>     public init()
>>>     
>>> 
>>> 功能：创建 [IllegalTypeException](reflect_package_exceptions.html#class-illegaltypeexception) 实例。 init(String)
>>>     
>>>     public init(message: String)
>>>     
>>> 
>>> 功能：根据异常信息创建 [IllegalTypeException](reflect_package_exceptions.html#class-illegaltypeexception) 实例。 参数：
>>>                                * message: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 异常信息。
>>> class InfoNotFoundException
>>>     
>>>     public class InfoNotFoundException <: ReflectException {
>>>         public init()
>>>         public init(message: String)
>>>     }
>>>     
>>> 
>>> 功能：[InfoNotFoundException](reflect_package_exceptions.html#class-infonotfoundexception) 为无法找到对应信息异常。 父类型：
>>>                                * ReflectException
>>> init()
>>>     
>>>     public init()
>>>     
>>> 
>>> 功能：创建 [InfoNotFoundException](reflect_package_exceptions.html#class-infonotfoundexception) 实例。 init(String)
>>>     
>>>     public init(message: String)
>>>     
>>> 
>>> 功能：根据异常信息创建 [InfoNotFoundException](reflect_package_exceptions.html#class-infonotfoundexception) 实例。 参数：
>>>                                * message: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 异常信息。
>>> class InvocationTargetException
>>>     
>>>     public class InvocationTargetException <: ReflectException {
>>>         public init()
>>>         public init(message: String)
>>>     }
>>>     
>>> 
>>> 功能：[InvocationTargetException](reflect_package_exceptions.html#class-invocationtargetexception) 为调用函数包装异常。 父类型：
>>>                                * ReflectException
>>> init()
>>>     
>>>     public init()
>>>     
>>> 
>>> 功能：创建 [InvocationTargetException](reflect_package_exceptions.html#class-invocationtargetexception) 实例。 init(String)
>>>     
>>>     public init(message: String)
>>>     
>>> 
>>> 功能：根据异常信息创建 [InvocationTargetException](reflect_package_exceptions.html#class-invocationtargetexception) 实例。 参数：
>>>                                * message: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 异常信息。
>>> class MisMatchException
>>>     
>>>     public class MisMatchException <: ReflectException {
>>>         public init()
>>>         public init(message: String)
>>>     }
>>>     
>>> 
>>> 功能：[MisMatchException](reflect_package_exceptions.html#class-mismatchexception) 为调用对应函数抛出异常。 父类型：
>>>                                * ReflectException
>>> init()
>>>     
>>>     public init()
>>>     
>>> 
>>> 功能：创建 [MisMatchException](reflect_package_exceptions.html#class-mismatchexception) 实例。 init(String)
>>>     
>>>     public init(message: String)
>>>     
>>> 
>>> 功能：根据异常信息创建 [MisMatchException](reflect_package_exceptions.html#class-mismatchexception) 实例。 参数：
>>>                                * message: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 异常信息。
>>> class ReflectException
>>>     
>>>     public open class ReflectException <: Exception {
>>>         public init()
>>>         public init(message: String)
>>>     }
>>>     
>>> 
>>> 功能：[ReflectException](reflect_package_exceptions.html#class-reflectexception) 为 Reflect 包的基异常类。 父类型：
>>>                                * [Exception](../../core/core_package_api/core_package_exceptions.html#class-exception)
>>> init()
>>>     
>>>     public init()
>>>     
>>> 
>>> 功能：创建 [ReflectException](reflect_package_exceptions.html#class-reflectexception) 实例。 init(String)
>>>     
>>>     public init(message: String)
>>>     
>>> 
>>> 功能：根据异常信息创建 [ReflectException](reflect_package_exceptions.html#class-reflectexception) 实例。 参数：
>>>                                * message: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 异常信息。
>>> func getClassName()
>>>     
>>>     protected override open func getClassName(): String
>>>     
>>> 
>>> 功能：获得类名。 返回值：
>>>                                * [String](../../core/core_package_api/core_package_structs.html#struct-string) - 类名字符串。
>>> 枚举 enum ModifierInfo
>>>     
>>>     public enum ModifierInfo <: Equatable<ModifierInfo> & Hashable & ToString  {
>>>         | Open
>>>         | Override
>>>         | Redef
>>>         | Abstract
>>>         | Sealed
>>>         | Mut
>>>         | Static
>>>     }
>>>     
>>> 
>>> 功能：描述修饰符信息。
>>>
>>>> **注意：** 由于开发者通过反射功能获取到的类型信息均来自于 `public` 的类型，这些类型都必定拥有 `public` 的访问控制语义，因此修饰符信息并不包含任何访问控制相关的修饰符。
>>> 
>>> 父类型：
>>>                                * [Equatable](../../core/core_package_api/core_package_interfaces.html#interface-equatablet)<ModifierInfo>
>>>                                * [Hashable](../../core/core_package_api/core_package_interfaces.html#interface-hashable)
>>>                                * [ToString](../../core/core_package_api/core_package_interfaces.html#interface-tostring)
>>> Abstract
>>>     
>>>     Abstract
>>>     
>>> 
>>> 功能：表示 abstract 修饰符。 Mut
>>>     
>>>     Mut
>>>     
>>> 
>>> 功能：表示 mut 修饰符。 Open
>>>     
>>>     Open
>>>     
>>> 
>>> 功能：表示 open 修饰符。 Override
>>>     
>>>     Override
>>>     
>>> 
>>> 功能：表示 override 修饰符。 Redef
>>>     
>>>     Redef
>>>     
>>> 
>>> 功能：表示 redef 修饰符。 Sealed
>>>     
>>>     Sealed
>>>     
>>> 
>>> 功能：表示 sealed 修饰符。 Static
>>>     
>>>     Static
>>>     
>>> 
>>> 功能：表示 static 修饰符。 func hashCode()
>>>     
>>>     public func hashCode(): Int64
>>>     
>>> 
>>> 功能：获取该修饰符信息的哈希值。 返回值：
>>>                                * [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 该修饰符信息的哈希值。
>>>
>>>> **注意：** 内部实现为该修饰符关键字字符串的哈希值。
>>> 
>>> func toString()
>>>     
>>>     public override func toString(): String
>>>     
>>> 
>>> 功能：获取字符串形式的该修饰符信息。 返回值：
>>>                                * [String](../../core/core_package_api/core_package_structs.html#struct-string) - 字符串形式的该修饰符信息。
>>>
>>>> **注意：** 字符串形式的修饰符信息即为修饰符关键字的标识符。
>>> 
>>> operator func ==(ModifierInfo)
>>>     
>>>     public override operator func ==(that: ModifierInfo): Bool
>>>     
>>> 
>>> 功能：判断该修饰符信息与给定的另一个修饰符信息是否相等。 参数：
>>>                                * that: [ModifierInfo](reflect_package_enums.html#enum-modifierinfo) - 被比较相等性的另一个修饰符信息。
>>> 返回值：
>>>                                * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 如果该修饰符信息与 `that` 相等则返回 `true`，否则返回 `false`。
>>>
>>>> **注意：** 修饰符信息的相等性的语义等价于 `enum` 类型实例的相等性的语义。异常类 class IllegalSetException
>>>     
>>>     public class IllegalSetException <: ReflectException {
>>>         public init()
>>>         public init(message: String)
>>>     }
>>>     
>>> 
>>> 功能：[IllegalSetException](reflect_package_exceptions.html#class-illegalsetexception) 为对不可变类型进行更改异常。 父类型：
>>>                                * ReflectException
>>> init()
>>>     
>>>     public init()
>>>     
>>> 
>>> 功能：创建 [IllegalSetException](reflect_package_exceptions.html#class-illegalsetexception) 实例。 init(String)
>>>     
>>>     public init(message: String)
>>>     
>>> 
>>> 功能：根据异常信息创建 [IllegalSetException](reflect_package_exceptions.html#class-illegalsetexception) 实例。 参数：
>>>                                * message: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 异常信息。
>>> class IllegalTypeException
>>>     
>>>     public class IllegalTypeException <: ReflectException {
>>>         public init()
>>>         public init(message: String)
>>>     }
>>>     
>>> 
>>> 功能：[IllegalTypeException](reflect_package_exceptions.html#class-illegaltypeexception) 为类型不匹配异常。 父类型：
>>>                                * ReflectException
>>> init()
>>>     
>>>     public init()
>>>     
>>> 
>>> 功能：创建 [IllegalTypeException](reflect_package_exceptions.html#class-illegaltypeexception) 实例。 init(String)
>>>     
>>>     public init(message: String)
>>>     
>>> 
>>> 功能：根据异常信息创建 [IllegalTypeException](reflect_package_exceptions.html#class-illegaltypeexception) 实例。 参数：
>>>                                * message: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 异常信息。
>>> class InfoNotFoundException
>>>     
>>>     public class InfoNotFoundException <: ReflectException {
>>>         public init()
>>>         public init(message: String)
>>>     }
>>>     
>>> 
>>> 功能：[InfoNotFoundException](reflect_package_exceptions.html#class-infonotfoundexception) 为无法找到对应信息异常。 父类型：
>>>                                * ReflectException
>>> init()
>>>     
>>>     public init()
>>>     
>>> 
>>> 功能：创建 [InfoNotFoundException](reflect_package_exceptions.html#class-infonotfoundexception) 实例。 init(String)
>>>     
>>>     public init(message: String)
>>>     
>>> 
>>> 功能：根据异常信息创建 [InfoNotFoundException](reflect_package_exceptions.html#class-infonotfoundexception) 实例。 参数：
>>>                                * message: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 异常信息。
>>> class InvocationTargetException
>>>     
>>>     public class InvocationTargetException <: ReflectException {
>>>         public init()
>>>         public init(message: String)
>>>     }
>>>     
>>> 
>>> 功能：[InvocationTargetException](reflect_package_exceptions.html#class-invocationtargetexception) 为调用函数包装异常。 父类型：
>>>                                * ReflectException
>>> init()
>>>     
>>>     public init()
>>>     
>>> 
>>> 功能：创建 [InvocationTargetException](reflect_package_exceptions.html#class-invocationtargetexception) 实例。 init(String)
>>>     
>>>     public init(message: String)
>>>     
>>> 
>>> 功能：根据异常信息创建 [InvocationTargetException](reflect_package_exceptions.html#class-invocationtargetexception) 实例。 参数：
>>>                                * message: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 异常信息。
>>> class MisMatchException
>>>     
>>>     public class MisMatchException <: ReflectException {
>>>         public init()
>>>         public init(message: String)
>>>     }
>>>     
>>> 
>>> 功能：[MisMatchException](reflect_package_exceptions.html#class-mismatchexception) 为调用对应函数抛出异常。 父类型：
>>>                                * ReflectException
>>> init()
>>>     
>>>     public init()
>>>     
>>> 
>>> 功能：创建 [MisMatchException](reflect_package_exceptions.html#class-mismatchexception) 实例。 init(String)
>>>     
>>>     public init(message: String)
>>>     
>>> 
>>> 功能：根据异常信息创建 [MisMatchException](reflect_package_exceptions.html#class-mismatchexception) 实例。 参数：
>>>                                * message: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 异常信息。
>>> class ReflectException
>>>     
>>>     public open class ReflectException <: Exception {
>>>         public init()
>>>         public init(message: String)
>>>     }
>>>     
>>> 
>>> 功能：[ReflectException](reflect_package_exceptions.html#class-reflectexception) 为 Reflect 包的基异常类。 父类型：
>>>                                * [Exception](../../core/core_package_api/core_package_exceptions.html#class-exception)
>>> init()
>>>     
>>>     public init()
>>>     
>>> 
>>> 功能：创建 [ReflectException](reflect_package_exceptions.html#class-reflectexception) 实例。 init(String)
>>>     
>>>     public init(message: String)
>>>     
>>> 
>>> 功能：根据异常信息创建 [ReflectException](reflect_package_exceptions.html#class-reflectexception) 实例。 参数：
>>>                                * message: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 异常信息。
>>> func getClassName()
>>>     
>>>     protected override open func getClassName(): String
>>>     
>>> 
>>> 功能：获得类名。 返回值：
>>>                                * [String](../../core/core_package_api/core_package_structs.html#struct-string) - 类名字符串。
>>> 枚举 enum ModifierInfo
>>>     
>>>     public enum ModifierInfo <: Equatable<ModifierInfo> & Hashable & ToString  {
>>>         | Open
>>>         | Override
>>>         | Redef
>>>         | Abstract
>>>         | Sealed
>>>         | Mut
>>>         | Static
>>>     }
>>>     
>>> 
>>> 功能：描述修饰符信息。
>>>
>>>> **注意：** 由于开发者通过反射功能获取到的类型信息均来自于 `public` 的类型，这些类型都必定拥有 `public` 的访问控制语义，因此修饰符信息并不包含任何访问控制相关的修饰符。
>>> 
>>> 父类型：
>>>                                * [Equatable](../../core/core_package_api/core_package_interfaces.html#interface-equatablet)<ModifierInfo>
>>>                                * [Hashable](../../core/core_package_api/core_package_interfaces.html#interface-hashable)
>>>                                * [ToString](../../core/core_package_api/core_package_interfaces.html#interface-tostring)
>>> Abstract
>>>     
>>>     Abstract
>>>     
>>> 
>>> 功能：表示 abstract 修饰符。 Mut
>>>     
>>>     Mut
>>>     
>>> 
>>> 功能：表示 mut 修饰符。 Open
>>>     
>>>     Open
>>>     
>>> 
>>> 功能：表示 open 修饰符。 Override
>>>     
>>>     Override
>>>     
>>> 
>>> 功能：表示 override 修饰符。 Redef
>>>     
>>>     Redef
>>>     
>>> 
>>> 功能：表示 redef 修饰符。 Sealed
>>>     
>>>     Sealed
>>>     
>>> 
>>> 功能：表示 sealed 修饰符。 Static
>>>     
>>>     Static
>>>     
>>> 
>>> 功能：表示 static 修饰符。 func hashCode()
>>>     
>>>     public func hashCode(): Int64
>>>     
>>> 
>>> 功能：获取该修饰符信息的哈希值。 返回值：
>>>                                * [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 该修饰符信息的哈希值。
>>>
>>>> **注意：** 内部实现为该修饰符关键字字符串的哈希值。
>>> 
>>> func toString()
>>>     
>>>     public override func toString(): String
>>>     
>>> 
>>> 功能：获取字符串形式的该修饰符信息。 返回值：
>>>                                * [String](../../core/core_package_api/core_package_structs.html#struct-string) - 字符串形式的该修饰符信息。
>>>
>>>> **注意：** 字符串形式的修饰符信息即为修饰符关键字的标识符。
>>> 
>>> operator func ==(ModifierInfo)
>>>     
>>>     public override operator func ==(that: ModifierInfo): Bool
>>>     
>>> 
>>> 功能：判断该修饰符信息与给定的另一个修饰符信息是否相等。 参数：
>>>                                * that: [ModifierInfo](reflect_package_enums.html#enum-modifierinfo) - 被比较相等性的另一个修饰符信息。
>>> 返回值：
>>>                                * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 如果该修饰符信息与 `that` 相等则返回 `true`，否则返回 `false`。
>>>
>>>> **注意：** 修饰符信息的相等性的语义等价于 `enum` 类型实例的相等性的语义。
>>> 
>>> operator func !=(ModifierInfo)
>>>     
>>>     public override operator func !=(that: ModifierInfo): Bool
>>>     
>>> 
>>> 功能：判断该修饰符信息与给定的另一个修饰符信息是否不等。
>>>
>>>> **注意：** 修饰符信息的相等性的语义等价于 `enum` 类型实例的相等性的语义。
>>> 
>>> 参数：
>>>                                * that: [ModifierInfo](reflect_package_enums.html#enum-modifierinfo) - 被比较相等性的另一个修饰符信息。
>>> 返回值：
>>>                                * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 如果该修饰符信息与 `that` 不等则返回 `true`，否则返回 `false`。
>>> 成员信息的使用
>>>     
>>>     import std.reflect.*
>>>     
>>>     public class Rectangular {
>>>         public var length = 4
>>>         public var width = 5
>>>         public func area(): Int64 {
>>>             return length * width
>>>         }
>>>     }
>>>     
>>>     main(): Unit {
>>>         let a = Rectangular()
>>>         let ty = TypeInfo.of(a)
>>>         const zl = 3
>>>         let members = ty.instanceVariables.toArray()
>>>         println((members[0].getValue(a) as Int64).getOrThrow())
>>>         println((members[1].getValue(a) as Int64).getOrThrow())
>>>         members[0].setValue(a, zl)
>>>         members[1].setValue(a, zl)
>>>         println((members[0].getValue(a) as Int64).getOrThrow())
>>>         println((members[1].getValue(a) as Int64).getOrThrow())
>>>         println(a.area())
>>>         let funcs = ty.instanceFunctions.toArray()
>>>         if (funcs[0].returnType.name == "Int64"){
>>>             println("The area of the square is ${zl**2}")
>>>         }
>>>         return
>>>     }
>>>     
>>> 
>>> 运行结果：
>>>     
>>>     4
>>>     5
>>>     3
>>>     3
>>>     9
>>>     The area of the square is 9
>>>     
