std.reflect 功能介绍 `reflect` 包提供了反射功能，使得程序在运行时能够获取到各种实例的类型信息，并进行各种读写和调用操作。 本包暂不支持 macOS 平台。
>>
>>> **注意：**
>>>                              * 对于全局信息仓颉的反射功能只能访问可见性为 std.reflect 功能介绍 `reflect` 包提供了反射功能，使得程序在运行时能够获取到各种实例的类型信息，并进行各种读写和调用操作。 本包暂不支持 macOS 平台。
>>>
>>>> **注意：**
>>>>                                * 对于全局信息仓颉的反射功能只能访问可见性为 `public` 的全局变量和全局函数。
>>>>                                * 对于当前所在包，仓颉的反射功能可以访问所有全局定义的类型，而对于外部导入的包或动态加载的模块，则只能访问其中可见性为 `public` 的全局定义的类型。
>>>>                                * 对于成员信息仓颉的反射功能只能访问类型内的可见性为 `public` 的成员（实例/静态成员变量/属性/函数），使用非 `public` 修饰符修饰的或缺省修饰符的成员均是不可见的。
>>>>                                * 目前，仓颉的反射功能尚不支持函数类型、元组类型、`enum` 类型。
>>> 
>>> API 列表 函数 函数名| 功能  
>>> ---|---  
>>> [parseParameterTypes(String)](./reflect_package_api/reflect_package_funcs.html#func-parseparametertypesstring)| 将字符串转换为包含具体类型信息的函数签名，以便 `getStaticFunction` 等函数使用。  
>>> 类型别名 类型别名| 功能  
>>> ---|---  
>>> [Annotation](./reflect_package_api/reflect_package_types.html#type-annotation--object)| [Object](../core/core_package_api/core_package_classes.html#class-object) 的别名。  
>>> 类 类名| 功能  
>>> ---|---  
>>> [ClassTypeInfo](./reflect_package_api/reflect_package_classes.html#class-classtypeinfo)| 描述`class`类型的类型信息。  
>>> [ConstructorInfo](./reflect_package_api/reflect_package_classes.html#class-constructorinfo)| 描述构造函数信息。  
>>> [GenericTypeInfo](./reflect_package_api/reflect_package_classes.html#class-generictypeinfo)| 描述泛型信息。  
>>> [GlobalFunctionInfo](./reflect_package_api/reflect_package_classes.html#class-globalfunctioninfo)| 描述全局函数信息。  
>>> [GlobalVariableInfo](./reflect_package_api/reflect_package_classes.html#class-globalvariableinfo)| 描述全局变量信息。  
>>> [InstanceFunctionInfo](./reflect_package_api/reflect_package_classes.html#class-instancefunctioninfo)| 描述实例成员函数信息。  
>>> [InstancePropertyInfo](./reflect_package_api/reflect_package_classes.html#class-instancepropertyinfo)| 描述实例成员属性信息。  
>>> [InstanceVariableInfo](./reflect_package_api/reflect_package_classes.html#class-instancevariableinfo)| 描述实例成员变量信息。  
>>> [InterfaceTypeInfo](./reflect_package_api/reflect_package_classes.html#class-interfacetypeinfo)| 描述`interface`类型的类型信息。  
>>> [PackageInfo](./reflect_package_api/reflect_package_classes.html#class-packageinfo)| 描述包信息。  
>>> [ParameterInfo](./reflect_package_api/reflect_package_classes.html#class-parameterinfo)| 描述函数形参信息。  
>>> [PrimitiveTypeInfo](./reflect_package_api/reflect_package_classes.html#class-primitivetypeinfo)| 描述原始数据类型的类型信息。  
>>> [StaticFunctionInfo](./reflect_package_api/reflect_package_classes.html#class-staticfunctioninfo)| 描述静态成员函数信息。  
>>> [StaticPropertyInfo](./reflect_package_api/reflect_package_classes.html#class-staticpropertyinfo)| 描述静态成员属性信息。  
>>> [StaticVariableInfo](./reflect_package_api/reflect_package_classes.html#class-staticvariableinfo)| 描述静态成员变量信息。  
>>> [StructTypeInfo](./reflect_package_api/reflect_package_classes.html#class-structtypeinfo)| 描述`struct`类型的类型信息。  
>>> [TypeInfo](./reflect_package_api/reflect_package_classes.html#class-typeinfo)| `TypeInfo`提供了所有数据类型通用的操作接口，支持用户进行反射操作。  
>>> 枚举 枚举名| 功能  
>>> ---|---  
>>> [ModifierInfo](./reflect_package_api/reflect_package_enums.html#enum-modifierinfo)| 描述修饰符信息。  
>>> 异常类 异常类名| 功能  
>>> ---|---  
>>> [IllegalSetException](./reflect_package_api/reflect_package_exceptions.html#class-illegalsetexception)| 表示对不可变类型进行更改异常。  
>>> [IllegalTypeException](./reflect_package_api/reflect_package_exceptions.html#class-illegaltypeexception)| 表示类型不匹配异常。  
>>> [InfoNotFoundException](./reflect_package_api/reflect_package_exceptions.html#class-infonotfoundexception)| 表示无法找到对应信息异常。  
>>> [InvocationTargetException](./reflect_package_api/reflect_package_exceptions.html#class-invocationtargetexception)| 表示调用函数包装异常。  
>>> [MisMatchException](./reflect_package_api/reflect_package_exceptions.html#class-mismatchexception)| 表示调用对应函数抛出异常。  
>>> [ReflectException](./reflect_package_api/reflect_package_exceptions.html#class-reflectexception)| `ReflectException` 为 Reflect 包的基异常类。  
>>> 类 class WeakRef<T> where T <: Object
>>>     
>>>     public class WeakRef<T> <: WeakRefBase where T <: Object {
>>>         public init(value: T, cleanupPolicy: CleanupPolicy)
>>>     }
>>>     
>>> 
>>> 功能：此类提供弱引用相关的功能，如果一个对象的引用被标记为弱引用，那么即使引用不为空并且该对象的可达性成立， GC 也可以按照指定的回收策略回收它。 prop cleanupPolicy
>>>     
>>>     public prop cleanupPolicy: CleanupPolicy
>>>     
>>> 
>>> 功能：获取该弱引用的清理策略。 类型：[CleanupPolicy](ref_package_enums.html#enum-cleanuppolicy) prop value
>>>     
>>>     public prop value: Option<T>
>>>     
>>> 
>>> 功能：读取弱引用指向的对象。如果弱引用为空或弱引用中的对象已被清理则返回 `None`。 类型：[Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<T> init(T, CleanupPolicy)
>>>     
>>>     public init(value: T, cleanupPolicy: CleanupPolicy)
>>>     
>>> 
>>> 功能：为 `value` 对象创建弱引用，并指定清理策略。 参数：
>>>                                * value: T - 弱引用指向的对象。
>>>                                * cleanupPolicy: [CleanupPolicy](ref_package_enums.html#enum-cleanuppolicy) - `value` 对象的清理策略。
>>> func clear()
>>>     
>>>     public func clear(): Unit
>>>     
>>> 
>>> 功能：强制清理弱引用指向的对象，后续对 `value` 的访问将返回 `None`。 class WeakRefBase
>>>     
>>>     sealed abstract class WeakRefBase
>>>     
>>> 
>>> 此类不包含任何公开成员和公开函数，也不允许被继承、扩展， 仅作为 [WeakRef](ref_package_classes#class-weakreft-where-t--object) 的基类。
