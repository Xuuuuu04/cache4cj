std.deriving `std.deriving` 提供了一种根据类、结构体和枚举类型的字段、属性等自动生成接口实现的方法。 当前支持自动生成以下接口的实现：
>>                          * [ToString](../core/core_package_api/core_package_interfaces.html#interface-tostring)
>>                          * [Hashable](../core/core_package_api/core_package_interfaces.html#interface-hashable)
>>                          * [Equatable](../core/core_package_api/core_package_interfaces.html#interface-equatablet)
>>                          * [Comparable](../core/core_package_api/core_package_interfaces.html#interface-comparablet)
>> 更多示例详见 [Deriving 用户手册](./deriving_samples/deriving_user_guide.html)。 API 列表 宏 宏名| 功能  
>> ---|---  
>> [Derive](./deriving_package_api/deriving_package_macros.html#derive-%E5%AE%8F)| `Derive` 是一个核心宏，其仅可修饰结构体、类或枚举等声明，对被修饰的声明[自动扩展接口](./deriving_samples/deriving_user_guide.html)。  
>> [DeriveExclude](./deriving_package_api/deriving_package_macros.html#deriveexclude-%E5%AE%8F)| `DeriveExclude` 可为已被 [@Derive 宏](./deriving_package_api/deriving_package_macros.html#derive-%E5%AE%8F)修饰的声明[排除不需要处理的字段](./deriving_samples/deriving_user_guide.html#%E5%8C%85%E5%90%AB%E5%92%8C%E6%8E%92%E9%99%A4)，字段默认被 Deriving 处理。  
>> [DeriveInclude](./deriving_package_api/deriving_package_macros.html#deriveinclude-%E5%AE%8F)| `DeriveInclude` 可为已被 [@Derive 宏](./deriving_package_api/deriving_package_macros.html#derive-%E5%AE%8F)修饰的声明[增加需要处理的属性](./deriving_samples/deriving_user_guide.html#%E5%8C%85%E5%90%AB%E5%92%8C%E6%8E%92%E9%99%A4)，属性默认情况不会被 Deriving 处理。  
>> [DeriveOrder](./deriving_package_api/deriving_package_macros.html#deriveorder-%E5%AE%8F)| `DeriveOrder` 可为已被 [@Derive 宏](./deriving_package_api/deriving_package_macros.html#derive-%E5%AE%8F)修饰的声明[指定处理字段和属性的顺序](./deriving_samples/deriving_user_guide.html#%E5%8F%98%E6%9B%B4%E9%A1%BA%E5%BA%8F)，通常对 `Comparable` 接口有意义。
