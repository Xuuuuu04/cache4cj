接口 interface UnicodeRuneExtension
>>>>     
>>>>     public interface UnicodeRuneExtension {
>>>>         func isLetter(): Bool
>>>>         func isLowerCase(): Bool
>>>>         func isNumber(): Bool
>>>>         func isTitleCase(): Bool
>>>>         func isUpperCase(): Bool
>>>>         func isWhiteSpace(): Bool
>>>>         func toLowerCase(): Rune
>>>>         func toLowerCase(opt: CasingOption): Rune
>>>>         func toTitleCase(): Rune
>>>>         func toTitleCase(opt: CasingOption): Rune
>>>>         func toUpperCase(): Rune
>>>>         func toUpperCase(opt: CasingOption): Rune
>>>>     }
>>>>     
>>>> 
>>>> 功能：`Unicode` 字符集相关扩展的接口，用于为其他类型扩展 `Unicode` 字符集相关的操作。 可用于为 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 类型增加一系列与 `Unicode` 字符集相关的扩展函数，包括字符类型判断，字符大小写转换，删除空白字符等。 func isLetter()
>>>>     
>>>>     func isLetter(): Bool
>>>>     
>>>> 
>>>> 功能：判断该类型否是 `Unicode` 字母字符。 返回值：
>>>>                                    * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) \- 如果该类型是 `Unicode` 字母字符，返回 `true`，否则返回 `false`。
>>>> func isLowerCase()
>>>>     
>>>>     func isLowerCase(): Bool
>>>>     
>>>> 
>>>> 功能：判断该类型是否是 `Unicode` 小写字符。 返回值：
>>>>                                    * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) \- 如果该类型是 `Unicode` 小写字符，返回 `true`，否则返回 `false`。
>>>> func isNumber()
>>>>     
>>>>     func isNumber(): Bool
>>>>     
>>>> 
>>>> 功能：判断类型是否是 `Unicode` 数字字符。 返回值：
>>>>                                    * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) \- 如果该类型是 `Unicode` 数字字符，返回 `true`，否则返回 `false`。
>>>> func isTitleCase()
>>>>     
>>>>     func isTitleCase(): Bool
>>>>     
>>>> 
>>>> 功能：判断该类型是否是 `Unicode` 标题化字符。 `Unicode` 中的标题化字符指的是一种特殊的字母形式，它们在某些语言中用于表示标题中每个单词的首字母大写的形式。这些字母由特殊的字符表示，例如U+01C5（ǅ）和U+01F1（Ǳ）。这些字符通常用于一些东欧语言，如克罗地亚语和塞尔维亚语。 标题化字符包括：`0x01C5`、`0x01C8`、`0x01CB`、`0x01F2`、`0x1F88 - 0x1F8F`、`0x1F98 - 0x1F9F`、`0x1F98 - 0x1F9F`、`0x1FA8 - 0x1FAF`、`0x1FBC`、`0x1FCC`、`0x1FFC` 返回值：
>>>>                                    * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) \- 如果该类型是 `Unicode` 标题大写字符，返回 `true`，否则返回 `false`。
>>>> func isUpperCase()
>>>>     
>>>>     func isUpperCase(): Bool
>>>>     
>>>> 
>>>> 功能：：判断该类型是否是 `Unicode` 大写字符。 返回值：
>>>>                                    * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) \- 如果该类型是 `Unicode` 大写字符，返回 `true`，否则返回 `false`。
>>>> func isWhiteSpace()
>>>>     
>>>>     func isWhiteSpace(): Bool
>>>>     
>>>> 
>>>> 功能：判断该类型是否是 `Unicode` 空白字符。 空白字符包括 `0x0009`、`0x000A`、`0x000B`、`0x000C`、`0x000D`、`0x0020`、`0x0085`、`0x00A0`、`0x1680`、`0x2000`、`0x2001`、`0x2002`、`0x2003`、`0x2004`、`0x2005`、`0x2006`、`0x2007`、`0x2008`、`0x2009`、`0x200A`、`0x2028`、`0x2029`、`0x202F`、`0x205F`、`0x3000`。 返回值：
>>>>                                    * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) \- 如果该类型是 `Unicode` 空白字符，返回 `true`，否则返回 `false`。
>>>> func toLowerCase()
>>>>     
>>>>     func toLowerCase(): Rune
>>>>     
>>>> 
>>>> 功能：获取该类型对应的 `Unicode` 小写字符。 返回值：
>>>>                                    * [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) \- 当前类型对应的小写字符。
>>>> func toTitleCase()
>>>>     
>>>>     func toTitleCase(): Rune
>>>>     
>>>> 
>>>> 功能：获取该类型对应的 `Unicode` 标题大写字符。 返回值：
>>>>                                    * [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) \- 当前类型对应的标题大写字符。
>>>> func toUpperCase()
>>>>     
>>>>     func toUpperCase(): Rune
>>>>     
>>>> 
>>>> 功能：获取该类型对应的 `Unicode` 大写字符。 返回值：
>>>>                                    * [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) \- 当前类型对应的小写字符。
>>>> func toLowerCase(CasingOption)
>>>>     
>>>>     func toLowerCase(opt: CasingOption): Rune
>>>>     
>>>> 
>>>> 功能：获取该类型对应的 `Unicode` 小写字符。 参数：
>>>>                                    * opt: [CasingOption](./unicode_package_enums.html#enum-casingoption) \- 传入的语言枚举。
>>>> 返回值：
>>>>                                    * [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) \- 当前类型对应的小写字符。
>>>> func toTitleCase(CasingOption)
>>>>     
>>>>     func toTitleCase(opt: CasingOption): Rune
>>>>     
>>>> 
>>>> 功能：获取该类型对应的 `Unicode` 标题大写字符。 参数：
>>>>                                    * opt: [CasingOption](./unicode_package_enums.html#enum-casingoption) \- 传入的语言枚举。
>>>> 返回值：
>>>>                                    * [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) \- 当前类型对应的标题大写字符。
>>>> func toUpperCase(CasingOption)
>>>>     
>>>>     func toUpperCase(opt: CasingOption): Rune
>>>>     
>>>> 
>>>> 功能：获取该类型对应的 `Unicode` 大写字符。 参数：
>>>>                                    * opt: [CasingOption](./unicode_package_enums.html#enum-casingoption) \- 传入的语言枚举。
>>>> 返回值：
>>>>                                    * [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) \- 当前类型对应的小写字符。
>>>> extend Rune <: UnicodeRuneExtension
>>>>     
>>>>     extend Rune <: UnicodeRuneExtension
>>>>     
>>>> 
>>>> 功能：为 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 类型扩展 [UnicodeRuneExtension](unicode_package_interfaces.html#interface-UnicodeRuneExtension) 接口，支持字符集相关的操作。 父类型：
>>>>                                    * UnicodeRuneExtension
>>>> func isLetter()
>>>>     
>>>>     public func isLetter(): Bool
>>>>     
>>>> 
>>>> 功能：判断字符是否是 `Unicode` 字母字符。 返回值：
>>>>                                    * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) \- 如果该字符是 `Unicode` 字母字符，返回 `true`，否则返回 `false`。
>>>> 示例：
>>>>     
>>>>     import std.unicode.*
>>>>     
>>>>     main(): Unit {
>>>>         println(r'a'.isLetter())
>>>>         println(r'1'.isLetter())
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     true
>>>>     false
>>>>     
>>>> 
>>>> func isLowerCase()
>>>>     
>>>>     public func isLowerCase(): Bool
>>>>     
>>>> 
>>>> 功能：判断字符是否是 `Unicode` 小写字符。 返回值：
>>>>                                    * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) \- 如果该字符是 `Unicode` 小写字符，返回 `true`，否则返回 `false`。
>>>> 示例：
>>>>     
>>>>     import std.unicode.*
>>>>     
>>>>     main(): Unit {
>>>>         println(r'a'.isLowerCase())
>>>>         println(r'A'.isLowerCase())
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     true
>>>>     false
>>>>     
>>>> 
>>>> func isNumber()
>>>>     
>>>>     public func isNumber(): Bool
>>>>     
>>>> 
>>>> 功能：判断字符是否是 `Unicode` 数字字符。 返回值：
>>>>                                    * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) \- 如果该字符是 `Unicode` 数字字符，返回 `true`，否则返回 `false`。
>>>> 示例：
>>>>     
>>>>     import std.unicode.*
>>>>     
>>>>     main(): Unit {
>>>>         println(r'a'.isNumber())
>>>>         println(r'1'.isNumber())
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     false
>>>>     true
>>>>     
>>>> 
>>>> func isTitleCase()
>>>>     
>>>>     public func isTitleCase(): Bool
>>>>     
>>>> 
>>>> 功能：判断字符是否是 `Unicode` 标题化字符。 `Unicode` 中的标题化字符指的是一种特殊的字母形式，它们在某些语言中用于表示标题中每个单词的首字母大写的形式。这些字母由特殊的字符表示，例如U+01C5（ǅ）和U+01F1（Ǳ）。这些字符通常用于一些东欧语言，如克罗地亚语和塞尔维亚语。 标题化字符包括：`0x01C5`、`0x01C8`、`0x01CB`、`0x01F2`、`0x1F88 - 0x1F8F`、`0x1F98 - 0x1F9F`、`0x1F98 - 0x1F9F`、`0x1FA8 - 0x1FAF`、`0x1FBC`、`0x1FCC`、`0x1FFC` 返回值：
>>>>                                    * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) \- 如果该字符是 `Unicode` 标题大写字符，返回 `true`，否则返回 `false`。
>>>> 示例：
>>>>     
>>>>     import std.unicode.*
>>>>     
>>>>     main(): Unit {
>>>>         println(r'ǅ'.isTitleCase())
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     true
>>>>     
>>>> 
>>>> func isUpperCase()
>>>>     
>>>>     public func isUpperCase(): Bool
>>>>     
>>>> 
>>>> 功能：：判断字符是否是 `Unicode` 大写字符。 返回值：
>>>>                                    * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) \- 如果该字符是 `Unicode` 大写字符，返回 `true`，否则返回 `false`。
>>>> 示例：
>>>>     
>>>>     import std.unicode.*
>>>>     
>>>>     main(): Unit {
>>>>         println(r'a'.isUpperCase())
>>>>         println(r'A'.isUpperCase())
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     false
>>>>     true
>>>>     
>>>> 
>>>> func isWhiteSpace()
>>>>     
>>>>     public func isWhiteSpace(): Bool
>>>>     
>>>> 
>>>> 功能：判断字符是否是 `Unicode` 空白字符。 空白字符包括 `0x0009`、`0x000A`、`0x000B`、`0x000C`、`0x000D`、`0x0020`、`0x0085`、`0x00A0`、`0x1680`、`0x2000`、`0x2001`、`0x2002`、`0x2003`、`0x2004`、`0x2005`、`0x2006`、`0x2007`、`0x2008`、`0x2009`、`0x200A`、`0x2028`、`0x2029`、`0x202F`、`0x205F`、`0x3000`。 返回值：
>>>>                                    * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) \- 如果该字符是 `Unicode` 空白字符，返回 `true`，否则返回 `false`。
>>>> 示例：
>>>>     
>>>>     import std.unicode.*
>>>>     
>>>>     main(): Unit {
>>>>         println(r' '.isWhiteSpace())
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     true
>>>>     
>>>> 
>>>> func toLowerCase()
>>>>     
>>>>     public func toLowerCase(): Rune
>>>>     
>>>> 
>>>> 功能：获取该字符对应的 `Unicode` 小写字符。 返回值：
>>>>                                    * [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) \- 当前字符对应的小写字符。
>>>> 示例：
>>>>     
>>>>     import std.unicode.*
>>>>     
>>>>     main(): Unit {
>>>>         println(r'A'.toLowerCase())
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     a
>>>>     
>>>> 
>>>> func toLowerCase(CasingOption)
>>>>     
>>>>     public func toLowerCase(opt: CasingOption): Rune
>>>>     
>>>> 
>>>> 功能：获取该字符对应的 `Unicode` 小写字符。 参数：
>>>>                                    * opt: [CasingOption](./unicode_package_enums.html#enum-casingoption) \- 传入的语言枚举。
>>>> 返回值：
>>>>                                    * [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) \- 当前字符对应的小写字符。
>>>> 示例：
>>>>     
>>>>     import std.unicode.*
>>>>     
>>>>     main(): Unit {
>>>>         println(r'A'.toLowerCase(CasingOption.Other))
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     a
>>>>     
>>>> 
>>>> func toTitleCase()
>>>>     
>>>>     public func toTitleCase(): Rune
>>>>     
>>>> 
>>>> 功能：获取该字符对应的 `Unicode` 标题大写字符。 返回值：
>>>>                                    * [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) \- 当前字符对应的标题大写字符。
>>>> 示例：
>>>>     
>>>>     import std.unicode.*
>>>>     
>>>>     main(): Unit {
>>>>         println(r'a'.toTitleCase())
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     A
>>>>     
>>>> 
>>>> func toTitleCase(CasingOption)
>>>>     
>>>>     public func toTitleCase(opt: CasingOption): Rune
>>>>     
>>>> 
>>>> 功能：获取该字符对应的 `Unicode` 标题大写字符。 参数：
>>>>                                    * opt: [CasingOption](./unicode_package_enums.html#enum-casingoption) \- 传入的语言枚举。
>>>> 返回值：
>>>>                                    * [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) \- 当前字符对应的标题大写字符。
>>>> 示例：
>>>>     
>>>>     import std.unicode.*
>>>>     
>>>>     main(): Unit {
>>>>         println(r'a'.toTitleCase(CasingOption.Other))
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     A
>>>>     
>>>> 
>>>> func toUpperCase()
>>>>     
>>>>     public func toUpperCase(): Rune
>>>>     
>>>> 
>>>> 功能：获取该字符对应的 `Unicode` 大写字符。 返回值：
>>>>                                    * [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) \- 当前字符对应的小写字符。
>>>> 示例：
>>>>     
>>>>     import std.unicode.*
>>>>     
>>>>     main(): Unit {
>>>>         println(r'a'.toUpperCase())
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     A
>>>>     
>>>> 
>>>> func toUpperCase(CasingOption)
>>>>     
>>>>     public func toUpperCase(opt: CasingOption): Rune
>>>>     
>>>> 
>>>> 功能：获取该字符对应的 `Unicode` 大写字符。 参数：
>>>>                                    * opt: [CasingOption](./unicode_package_enums.html#enum-casingoption) \- 传入的语言枚举。
>>>> 返回值：
>>>>                                    * [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) \- 当前字符对应的小写字符。
>>>> 示例：
>>>>     
>>>>     import std.unicode.*
>>>>     
>>>>     main(): Unit {
>>>>         println(r'a'.toUpperCase(CasingOption.Other))
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     A
>>>>     
>>>> 
>>>> interface UnicodeStringExtension
>>>>     
>>>>     public interface UnicodeStringExtension {
>>>>         func isBlank(): Bool
>>>>         func toLower(): String
>>>>         func toLower(opt: CasingOption): String
>>>>         func toTitle(): String
>>>>         func toTitle(opt: CasingOption): String
>>>>         func toUpper(): String
>>>>         func toUpper(opt: CasingOption): String
>>>>         func trim(): String
>>>>         func trimEnd(): String
>>>>         func trimLeft(): String
>>>>         func trimRight(): String
>>>>         func trimStart(): String
>>>>     }
>>>>     
>>>> 
>>>> 功能：`Unicode` 字符集相关扩展的接口，用于为其他类型扩展 `Unicode` 字符集相关的操作。 可用于为 [String](../../core/core_package_api/core_package_structs.html#struct-string) 类型增加一系列与 `Unicode` 字符集相关的扩展函数，包括字符类型判断，字符大小写转换，删除空白字符等。 func isBlank()
>>>>     
>>>>     func isBlank(): Bool
>>>>     
>>>> 
>>>> 功能：判断当前字符串是否为空，或仅包含 `Unicode` 字符集中的空字符。 空白字符包括 `0x0009`、`0x000A`、`0x000B`、`0x000C`、`0x000D`、`0x0020`、`0x0085`、`0x00A0`、`0x1680`、`0x2000`、`0x2001`、`0x2002`、`0x2003`、`0x2004`、`0x2005`、`0x2006`、`0x2007`、`0x2008`、`0x2009`、`0x200A`、`0x2028`、`0x2029`、`0x202F`、`0x205F`、`0x3000`。 返回值：
>>>>                                    * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) \- 如果字符串为空，或仅包含空字符，返回 `true`，否则返回 `false`。
>>>> func toLower()
>>>>     
>>>>     func toLower(): String
>>>>     
>>>> 
>>>> 功能：将当前字符串中所有 `Unicode` 字符集范围内的大写字符转化为小写字符。 返回值：
>>>>                                    * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 转换后的全小写字符串。
>>>> 异常：
>>>>                                    * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 如果字符串中存在无效的 UTF-8 编码，抛出异常。
>>>> func toLower(CasingOption)
>>>>     
>>>>     func toLower(opt: CasingOption): String
>>>>     
>>>> 
>>>> 功能：将当前字符串中所有 `Unicode` 字符集范围内的大写字符转化为小写字符。 参数：
>>>>                                    * opt: [CasingOption](./unicode_package_enums.html#enum-casingoption) \- 传入的语言枚举。
>>>> 返回值：
>>>>                                    * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 转换后的全小写字符串。
>>>> 异常：
>>>>                                    * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 如果字符串中存在无效的 UTF-8 编码，抛出异常。
>>>> func toTitle()
>>>>     
>>>>     func toTitle(): String
>>>>     
>>>> 
>>>> 功能：将当前字符串中 `Unicode` 字符集范围内可以转换为标题大写字符的转换为标题大写字符。 返回值：
>>>>                                    * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 转换后的标题大写字符串。
>>>> 异常：
>>>>                                    * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 如果字符串中存在无效的 UTF-8 编码，抛出异常。
>>>> func toTitle(CasingOption)
>>>>     
>>>>     func toTitle(opt: CasingOption): String
>>>>     
>>>> 
>>>> 功能：将当前字符串中 `Unicode` 字符集范围内可以转换为标题大写字符的转换为标题大写字符。 参数：
>>>>                                    * opt: [CasingOption](./unicode_package_enums.html#enum-casingoption) \- 传入的语言枚举。
>>>> 返回值：
>>>>                                    * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 转换后的标题大写字符串。
>>>> 异常：
>>>>                                    * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 如果字符串中存在无效的 UTF-8 编码，抛出异常。
>>>> func toUpper()
>>>>     
>>>>     func toUpper(): String
>>>>     
>>>> 
>>>> 功能：将当前字符串中所有 `Unicode` 字符集范围内的小写字符转化为大写字符。 返回值：
>>>>                                    * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 转换后的全大写字符串。
>>>> 异常：
>>>>                                    * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 如果字符串中存在无效的 UTF-8 编码，抛出异常。
>>>> func toUpper(CasingOption)
>>>>     
>>>>     func toUpper(opt: CasingOption): String
>>>>     
>>>> 
>>>> 功能：将当前字符串中所有 `Unicode` 字符集范围内的小写字符转化为大写字符。 参数：
>>>>                                    * opt: [CasingOption](./unicode_package_enums.html#enum-casingoption) \- 传入的语言枚举。
>>>> 返回值：
>>>>                                    * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 转换后的全大写字符串。
>>>> 异常：
>>>>                                    * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 如果字符串中存在无效的 UTF-8 编码，抛出异常。
>>>> func trim()
>>>>     
>>>>     func trim(): String
>>>>     
>>>> 
>>>> 功能：去除字符串开头结尾的空字符串，空字符定义见 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 类型的扩展函数 isWhiteSpace。 返回值：
>>>>                                    * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 去除首尾空字符后的字符串。
>>>> 异常：
>>>>                                    * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 如果字符串中不存在有效的 UTF-8 编码，抛出异常。
>>>> func trimEnd()
>>>>     
>>>>     func trimEnd(): String
>>>>     
>>>> 
>>>> 功能：去除字符串结尾的空字符，空字符定义见 [Rune](../../../std/core/core_package_api/core_package_intrinsics.html#rune) 类型的扩展函数 isWhiteSpace。 返回值：
>>>>                                    * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 去除结尾空字符后的字符串。
>>>> 异常：
>>>>                                    * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 如果字符串中不存在有效的 UTF-8 编码，抛出异常。
>>>> func trimLeft() (deprecated)
>>>>     
>>>>     func trimLeft(): String
>>>>     
>>>> 
>>>> 功能：去除字符串开头的空字符，空字符定义见 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 类型的扩展函数 isWhiteSpace。
>>>>
>>>>> **注意：** 未来版本即将废弃，使用 [trimStart](./unicode_package_interfaces.html#func-trimstart) 替代。
>>>> 
>>>> 返回值：
>>>>                                    * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 去除开头空字符后的字符串。
>>>> 异常：
>>>>                                    * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 如果字符串中不存在有效的 UTF-8 编码，抛出异常。
>>>> func trimRight() (deprecated)
>>>>     
>>>>     func trimRight(): String
>>>>     
>>>> 
>>>> 功能：去除字符串结尾的空字符，空字符定义见 [Rune](../../../std/core/core_package_api/core_package_intrinsics.html#rune) 类型的扩展函数 isWhiteSpace。
>>>>
>>>>> **注意：** 未来版本即将废弃，使用 [trimEnd](./unicode_package_interfaces.html#func-trimend) 替代。
>>>> 
>>>> 返回值：
>>>>                                    * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 去除结尾空字符后的字符串。
>>>> 异常：
>>>>                                    * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 如果字符串中不存在有效的 UTF-8 编码，抛出异常。
>>>> func trimStart()
>>>>     
>>>>     func trimStart(): String
>>>>     
>>>> 
>>>> 功能：去除字符串开头的空字符，空字符定义见 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 类型的扩展函数 isWhiteSpace。 返回值：
>>>>                                    * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 去除开头空字符后的字符串。
>>>> 异常：
>>>>                                    * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 如果字符串中不存在有效的 UTF-8 编码，抛出异常。
>>>> extend String <: UnicodeStringExtension
>>>>     
>>>>     extend String <: UnicodeStringExtension
>>>>     
>>>> 
>>>> 功能：为 [String](../../../std/core/core_package_api/core_package_structs.html#struct-string) 类型扩展 [UnicodeRuneExtension](unicode_package_interfaces.html#interface-UnicodeStringExtension) 接口，支持字符集相关的操作。 父类型：
>>>>                                    * UnicodeStringExtension
>>>> func isBlank()
>>>>     
>>>>     public func isBlank(): Bool
>>>>     
>>>> 
>>>> 功能：判断当前字符串是否为空，或仅包含 `Unicode` 字符集中的空字符。 空白字符包括 `0x0009`、`0x000A`、`0x000B`、`0x000C`、`0x000D`、`0x0020`、`0x0085`、`0x00A0`、`0x1680`、`0x2000`、`0x2001`、`0x2002`、`0x2003`、`0x2004`、`0x2005`、`0x2006`、`0x2007`、`0x2008`、`0x2009`、`0x200A`、`0x2028`、`0x2029`、`0x202F`、`0x205F`、`0x3000`。 返回值：
>>>>                                    * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) \- 如果字符串为空，或仅包含空字符，返回 `true`，否则返回 `false`。
>>>> 示例：
>>>>     
>>>>     import std.unicode.*
>>>>     
>>>>     main(): Unit {
>>>>         println(" \t\n\r".isBlank())
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     true
>>>>     
>>>> 
>>>> func toLower()
>>>>     
>>>>     public func toLower(): String
>>>>     
>>>> 
>>>> 功能：将当前字符串中所有 `Unicode` 字符集范围内的大写字符转化为小写字符。 返回值：
>>>>                                    * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 转换后的全小写字符串。
>>>> 异常：
>>>>                                    * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 如果字符串中存在无效的 UTF-8 编码，抛出异常。
>>>> 示例：
>>>>     
>>>>     import std.unicode.*
>>>>     
>>>>     main(): Unit {
>>>>         println("AbcDEF".toLower())
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     abcdef
>>>>     
>>>> 
>>>> func toLower(CasingOption)
>>>>     
>>>>     public func toLower(opt: CasingOption): String
>>>>     
>>>> 
>>>> 功能：将当前字符串中所有 `Unicode` 字符集范围内的大写字符转化为小写字符。 参数：
>>>>                                    * opt: [CasingOption](./unicode_package_enums.html#enum-casingoption) \- 传入的语言枚举。
>>>> 返回值：
>>>>                                    * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 转换后的全小写字符串。
>>>> 异常：
>>>>                                    * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 如果字符串中存在无效的 UTF-8 编码，抛出异常。
>>>> 示例：
>>>>     
>>>>     import std.unicode.*
>>>>     
>>>>     main(): Unit {
>>>>         println("AbcDEF".toLower(CasingOption.Other))
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     abcdef
>>>>     
>>>> 
>>>> func toTitle()
>>>>     
>>>>     public func toTitle(): String
>>>>     
>>>> 
>>>> 功能：将当前字符串中 `Unicode` 字符集范围内可以转换为标题大写字符的转换为标题大写字符。 返回值：
>>>>                                    * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 转换后的标题大写字符串。
>>>> 异常：
>>>>                                    * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 如果字符串中存在无效的 UTF-8 编码，抛出异常。
>>>> 示例：
>>>>     
>>>>     import std.unicode.*
>>>>     
>>>>     main(): Unit {
>>>>         println("AbcDEF".toTitle())
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     ABCDEF
>>>>     
>>>> 
>>>> func toTitle(CasingOption)
>>>>     
>>>>     public func toTitle(opt: CasingOption): String
>>>>     
>>>> 
>>>> 功能：将当前字符串中 `Unicode` 字符集范围内可以转换为标题大写字符的转换为标题大写字符。 参数：
>>>>                                    * opt: [CasingOption](./unicode_package_enums.html#enum-casingoption) \- 传入的语言枚举。
>>>> 返回值：
>>>>                                    * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 转换后的标题大写字符串。
>>>> 异常：
>>>>                                    * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 如果字符串中存在无效的 UTF-8 编码，抛出异常。
>>>> 示例：
>>>>     
>>>>     import std.unicode.*
>>>>     
>>>>     main(): Unit {
>>>>         println("AbcDEF".toTitle(CasingOption.Other))
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     ABCDEF
>>>>     
>>>> 
>>>> func toUpper()
>>>>     
>>>>     public func toUpper(): String
>>>>     
>>>> 
>>>> 功能：将当前字符串中所有 `Unicode` 字符集范围内的小写字符转化为大写字符。 返回值：
>>>>                                    * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 转换后的全大写字符串。
>>>> 异常：
>>>>                                    * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 如果字符串中存在无效的 UTF-8 编码，抛出异常。
>>>> 示例：
>>>>     
>>>>     import std.unicode.*
>>>>     
>>>>     main(): Unit {
>>>>         println("AbcDEF".toUpper())
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     ABCDEF
>>>>     
>>>> 
>>>> func toUpper(CasingOption)
>>>>     
>>>>     public func toUpper(opt: CasingOption): String
>>>>     
>>>> 
>>>> 功能：将当前字符串中所有 `Unicode` 字符集范围内的小写字符转化为大写字符。 参数：
>>>>                                    * opt: [CasingOption](./unicode_package_enums.html#enum-casingoption) \- 传入的语言枚举。
>>>> 返回值：
>>>>                                    * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 转换后的全大写字符串。
>>>> 异常：
>>>>                                    * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 如果字符串中存在无效的 UTF-8 编码，抛出异常。
>>>> 示例：
>>>>     
>>>>     import std.unicode.*
>>>>     
>>>>     main(): Unit {
>>>>         println("AbcDEF".toUpper(CasingOption.Other))
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     ABCDEF
>>>>     
>>>> 
>>>> func trim()
>>>>     
>>>>     public func trim(): String
>>>>     
>>>> 
>>>> 功能：去除字符串开头结尾的空字符，空字符定义见 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 类型的扩展函数 isWhiteSpace。 返回值：
>>>>                                    * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 去除首尾空字符后的字符串。
>>>> 异常：
>>>>                                    * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 如果字符串中不存在有效的 UTF-8 编码，抛出异常。
>>>> 示例：
>>>>     
>>>>     import std.unicode.*
>>>>     
>>>>     main(): Unit {
>>>>         println("\nx \t ".trim())
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     x
>>>>     
>>>> 
>>>> func trimEnd()
>>>>     
>>>>     public func trimEnd(): String
>>>>     
>>>> 
>>>> 功能：去除字符串结尾的空字符，空字符定义见 [Rune](../../../std/core/core_package_api/core_package_intrinsics.html#rune) 类型的扩展函数 isWhiteSpace。 返回值：
>>>>                                    * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 去除结尾空字符后的字符串。
>>>> 异常：
>>>>                                    * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 如果字符串中不存在有效的 UTF-8 编码，抛出异常。
>>>> 示例：
>>>>     
>>>>     import std.unicode.*
>>>>     
>>>>     main(): Unit {
>>>>         println("  x  ".trimEnd())
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     x
>>>>     
>>>> 
>>>> func trimLeft() (deprecated)
>>>>     
>>>>     public func trimLeft(): String
>>>>     
>>>> 
>>>> 功能：去除字符串开头的空字符，空字符定义见 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 类型的扩展函数 isWhiteSpace。
>>>>
>>>>> **注意：** 未来版本即将废弃，使用 [trimStart](./unicode_package_interfaces.html#func-trimend) 替代。
>>>> 
>>>> 返回值：
>>>>                                    * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 去除开头空字符后的字符串。
>>>> 异常：
>>>>                                    * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 如果字符串中不存在有效的 UTF-8 编码，抛出异常。
>>>> 示例：
>>>>     
>>>>     import std.unicode.*
>>>>     
>>>>     main(): Unit {
>>>>         println("  x  ".trimLeft())
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     x
>>>>     
>>>> 
>>>> func trimRight() (deprecated)
>>>>     
>>>>     public func trimRight(): String
>>>>     
>>>> 
>>>> 功能：去除字符串结尾的空字符，空字符定义见 [Rune](../../../std/core/core_package_api/core_package_intrinsics.html#rune) 类型的扩展函数 isWhiteSpace。
>>>>
>>>>> **注意：** 未来版本即将废弃，使用 [trimEnd](./unicode_package_interfaces.html#func-trimend) 替代。
>>>> 
>>>> 返回值：
>>>>                                    * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 去除结尾空字符后的字符串。
>>>> 异常：
>>>>                                    * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 如果字符串中不存在有效的 UTF-8 编码，抛出异常。
>>>> 示例：
>>>>     
>>>>     import std.unicode.*
>>>>     
>>>>     main(): Unit {
>>>>         println("  x  ".trimRight())
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     x
>>>>     
>>>> 
>>>> func trimStart()
>>>>     
>>>>     public func trimStart(): String
>>>>     
>>>> 
>>>> 功能：去除字符串开头的空字符，空字符定义见 [Rune](../../core/core_package_api/core_package_intrinsics.html#rune) 类型的扩展函数 isWhiteSpace。 返回值：
>>>>                                    * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 去除开头空字符后的字符串。
>>>> 异常：
>>>>                                    * [IllegalArgumentException](../../core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) \- 如果字符串中不存在有效的 UTF-8 编码，抛出异常。
>>>> 示例：
>>>>     
>>>>     import std.unicode.*
>>>>     
>>>>     main(): Unit {
>>>>         println("  x  ".trimStart())
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     x
>>>>     
