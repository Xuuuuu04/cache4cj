枚举 enum Color
>>>>     
>>>>     public enum Color <: Equatable<Color> {
>>>>         | RED
>>>>         | GREEN
>>>>         | YELLOW
>>>>         | BLUE
>>>>         | CYAN
>>>>         | MAGENTA
>>>>         | GRAY
>>>>         | DEFAULT_COLOR;
>>>>     }
>>>>     
>>>> 
>>>> 功能：指定颜色。 父类型：
>>>>                                        * [Equatable](../../core/core_package_api/core_package_interfaces.html#interface-equatablet)<Color>
>>>> RED
>>>>     
>>>>     RED
>>>>     
>>>> 
>>>> 功能：红色。 GREEN
>>>>     
>>>>     GREEN
>>>>     
>>>> 
>>>> 功能：绿色。 YELLOW
>>>>     
>>>>     YELLOW
>>>>     
>>>> 
>>>> 功能：黄色。 BLUE
>>>>     
>>>>     BLUE
>>>>     
>>>> 
>>>> 功能：蓝色。 CYAN
>>>>     
>>>>     CYAN
>>>>     
>>>> 
>>>> 功能：青色。 MAGENTA
>>>>     
>>>>     MAGENTA
>>>>     
>>>> 
>>>> 功能：品红色。 GRAY
>>>>     
>>>>     GRAY
>>>>     
>>>> 
>>>> 功能：灰色。 DEFAULT_COLOR
>>>>     
>>>>     DEFAULT_COLOR
>>>>     
>>>> 
>>>> 功能：默认色。 operator func ==(Color)
>>>>     
>>>>     public operator func ==(that: Color): Bool
>>>>     
>>>> 
>>>> 功能：判断颜色是否相等。 参数：
>>>>                                        * that: Color \- 被对比的颜色。
>>>> 返回值：
>>>>                                        * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) \- 相等时返回 `true` ，否则返回 `false` 。
>>>> operator func !=(Color)
>>>>     
>>>>     public operator func !=(that: Color): Bool
>>>>     
>>>> 
>>>> 功能：判断颜色是否不相等。 参数：
>>>>                                        * that: Color \- 被对比的颜色。
>>>> 返回值：
>>>>                                        * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) \- 不相等时返回 `true` ，否则返回 `false` 。
>>>> enum OptionValidity
>>>>     
>>>>     public enum OptionValidity {
>>>>         | UnknownOptionType
>>>>         | InvalidOption(String)
>>>>         | ValidOption(ConfigurationKey)
>>>>     }
>>>>     
>>>> 
>>>> 功能：代表选项值验证的结果的枚举值。 UnknownOptionType
>>>>     
>>>>     UnknownOptionType
>>>>     
>>>> 
>>>> 功能: 未知状态，仅在验证出现内部错误时出现。 InvalidOption(String)
>>>>     
>>>>     InvalidOption(String)
>>>>     
>>>> 
>>>> 功能: 选项验证无效，包含无效的原因。 ValidOption(ConfigurationKey)
>>>>     
>>>>     ValidOption(ConfigurationKey)
>>>>     
>>>> 
>>>> 功能: 选项值有效，包含选项值在配置项中对应键值对的键名。
