# 枚举

## enum ArgumentMode
    
    public enum ArgumentMode <: ToString & Equatable<ArgumentMode> {
        | NoValue
        | RequiredValue
        | OptionalValue
    }
    

功能：描述选项的参数模式。

父类型：

          * [ToString](../../../std/core/core_package_api/core_package_interfaces.html#interface-tostring)
          * [Equatable](../../../std/core/core_package_api/core_package_interfaces.html#interface-equatablet)<ArgumentMode>

### NoValue
    
    NoValue
    

功能：表示选项的值是不存在的。

### OptionalValue
    
    OptionalValue
    

功能：表示选项的值是可选的。

### RequiredValue
    
    RequiredValue
    

功能：表示选项的值是必须的。

### func toString()
    
    public func toString(): String
    

功能：获取参数模式字符串。

返回值：

          * [String](../../../std/core/core_package_api/core_package_structs.html#struct-string) - 参数模式字符串。

### operator func ==(ArgumentMode)
    
    public operator func ==(that: ArgumentMode): Bool
    

功能：比较参数模式是否相同。

参数：

          * that: [ArgumentMode](./argopt_package_enums.html#enum-argumentmode) - 参数模式。

返回值：

          * [Bool](../../../std/core/core_package_api/core_package_intrinsics.html#bool) - 相同时返回 `true`，否则返回 `false`。

## enum ArgumentSpec
    
    public enum ArgumentSpec {
        | Short(Rune, ArgumentMode)
        | Short(Rune, ArgumentMode, (String) -> Unit)
        | Long(String, ArgumentMode)
        | Long(String, ArgumentMode, (String) -> Unit)
        | Full(String, Rune, ArgumentMode)
        | Full(String, Rune, ArgumentMode, (String) -> Unit)
        | NonOptions((Array<String>) -> Unit)
    }
    

功能：描述参数的规范。

### Full(String, Rune, ArgumentMode)
    
    Full(String, Rune, ArgumentMode)
    

功能：表示同时存在长选项和短选项。

### Full(String, Rune, ArgumentMode, (String) -> Unit)
    
    Full(String, Rune, ArgumentMode, (String) -> Unit)
    

功能：表示同时存在长选项和短选项，并持有一个 `lambda` 回调函数。

### Long(String, ArgumentMode)
    
    Long(String, ArgumentMode)
    

功能：表示是一个长选项规格。

### Long(String, ArgumentMode, (String) -> Unit)
    
    Long(String, ArgumentMode, (String) -> Unit)
    

功能：表示是一个长选项，同时持有一个 `lambda` 回调函数。

### NonOptions((Array<String>) -> Unit)
    
    NonOptions((Array<String>) -> Unit)
    

功能：表示是一个非选项。

### Short(Rune, ArgumentMode)
    
    Short(Rune, ArgumentMode)
    

功能：表示是一个短选项。

### Short(Rune, ArgumentMode, (String) -> Unit)
    
    Short(Rune, ArgumentMode, (String) -> Unit)
    

功能：表示是一个短选项，同时持有一个 `lambda` 回调函数。
