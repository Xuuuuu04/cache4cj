类 class Matcher (deprecated)
>>>     
>>>     public class Matcher {
>>>         public init(re: Regex, input: String)
>>>     }
>>>     
>>> 
>>> 功能：正则匹配器，用于扫描输入序列并进行匹配。
>>>
>>>> **注意：** 未来版本即将废弃，使用 Regex 替代。类 class Matcher (deprecated)
>>>>     
>>>>     public class Matcher {
>>>>         public init(re: Regex, input: String)
>>>>     }
>>>>     
>>>> 
>>>> 功能：正则匹配器，用于扫描输入序列并进行匹配。
>>>>
>>>>> **注意：** 未来版本即将废弃，使用 Regex 替代。
>>>> 
>>>> init(Regex, String)
>>>>     
>>>>     public init(re: Regex, input: String)
>>>>     
>>>> 
>>>> 功能：使用传入的正则表达式和输入序列创建 Matcher 实例。 参数：
>>>>                                * re: [Regex](regex_package_classes.html#class-regex) - 正则表达式。
>>>>                                * input: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 输入序列。
>>>> func allCount()
>>>>     
>>>>     public func allCount(): Int64
>>>>     
>>>> 
>>>> 功能：获取正则表示式的匹配结果总数。 默认是从头到尾匹配的结果，使用了 setRegion 后只会在设置的范围内查找。 返回值：
>>>>                                * [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 匹配结果总数。
>>>> func find()
>>>>     
>>>>     public func find(): Option<MatchData>
>>>>     
>>>> 
>>>> 功能：自当前字符串偏移位置起，查找第一个匹配到的子序列。 find 调用一次，当前偏移位置为最新一次匹配到的子序列后第一个字符位置，下次调用时，find 从当前位置开始匹配。 返回值：
>>>>                                * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[MatchData](regex_package_structs.html#struct-matchdata)> - 匹配到结果返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[MatchData](regex_package_structs.html#struct-matchdata)>，如果匹配不到，返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[MatchData](regex_package_structs.html#struct-matchdata)>.None。
>>>> 异常：
>>>>                                * [RegexException](regex_package_exceptions.html#class-regexexception) - 当存在匹配但提取匹配信息失败时，抛出异常。
>>>> func find(Int64)
>>>>     
>>>>     public func find(index: Int64): Option<MatchData>
>>>>     
>>>> 
>>>> 功能：重置该匹配器索引位置，从 index 对应的位置处开始对输入序列进行匹配，返回匹配到的子序列。 返回值：
>>>>                                * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[MatchData](regex_package_structs.html#struct-matchdata)> - 匹配到结果返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[MatchData](regex_package_structs.html#struct-matchdata)>，如果匹配不到，返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[MatchData](regex_package_structs.html#struct-matchdata)>.None。
>>>> 异常：
>>>>                                * [IndexOutOfBoundsException](../../core/core_package_api/core_package_exceptions.html#class-indexoutofboundsexception) - 当 index 小于 0，或 index 大于等于输入序列的 size 时，抛出异常。
>>>>                                * [RegexException](regex_package_exceptions.html#class-regexexception) - 当存在匹配但提取匹配信息失败时，抛出异常。
>>>> func findAll()
>>>>     
>>>>     public func findAll(): Option<Array<MatchData>>
>>>>     
>>>> 
>>>> 功能：对整个输入序列进行匹配，查找所有匹配到的子序列。 返回值：
>>>>                                * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[MatchData](regex_package_structs.html#struct-matchdata)>> - 如果匹配到结果，返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[MatchData](regex_package_structs.html#struct-matchdata)>>；如果匹配不到，返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[MatchData](regex_package_structs.html#struct-matchdata)>>.None。
>>>> 异常：
>>>>                                * [RegexException](regex_package_exceptions.html#class-regexexception) - 当存在匹配但提取匹配信息失败时，抛出异常。
>>>> func fullMatch()
>>>>     
>>>>     public func fullMatch(): Option<MatchData>
>>>>     
>>>> 
>>>> 功能：对整个输入序列进行匹配。 返回值：
>>>>                                * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[MatchData](regex_package_structs.html#struct-matchdata)> - 如果全部匹配成功，返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[MatchData](regex_package_structs.html#struct-matchdata)>；否则返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[MatchData](regex_package_structs.html#struct-matchdata)>.None。
>>>> 异常：
>>>>                                * [RegexException](regex_package_exceptions.html#class-regexexception) - 当存在匹配但提取匹配信息失败时，抛出异常。
>>>> func getString()
>>>>     
>>>>     public func getString(): String
>>>>     
>>>> 
>>>> 功能：获取匹配序列。 返回值：
>>>>                                * [String](../../core/core_package_api/core_package_structs.html#struct-string) - 匹配序列。
>>>> func matchStart()
>>>>     
>>>>     public func matchStart(): Option<MatchData>
>>>>     
>>>> 
>>>> 功能：对输入序列的头部进行匹配。 返回值：
>>>>                                * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[MatchData](regex_package_structs.html#struct-matchdata)> - 如果匹配成功，返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[MatchData](regex_package_structs.html#struct-matchdata)>；否则返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[MatchData](regex_package_structs.html#struct-matchdata)>.None。
>>>> 异常：
>>>>                                * [RegexException](regex_package_exceptions.html#class-regexexception) - 当存在匹配但提取匹配信息失败时，抛出异常。
>>>> func region()
>>>>     
>>>>     public func region(): Position
>>>>     
>>>> 
>>>> 功能：返回匹配器的区域设置。 返回值：
>>>>                                * [Position](regex_package_structs.html#struct-position) - 匹配器的区域设置。
>>>> func replace(String)
>>>>     
>>>>     public func replace(replacement: String): String
>>>>     
>>>> 
>>>> 功能：自当前字符串偏移位置起，匹配到的第一个子序列替换为目标字符串，并将当前索引位置设置到匹配子序列的下一个位置。 参数：
>>>>                                * replacement: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 指定替换字符串。
>>>> 返回值：
>>>>                                * [String](../../core/core_package_api/core_package_structs.html#struct-string) - 替换后字符串。
>>>> func replace(String, Int64)
>>>>     
>>>>     public func replace(replacement: String, index: Int64): String
>>>>     
>>>> 
>>>> 功能：从输入序列的 index 位置起匹配正则，将匹配到的第一个子序列替换为目标字符串。 参数：
>>>>                                * replacement: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 指定替换字符串。
>>>>                                * index: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 匹配开始位置。
>>>> 返回值：
>>>>                                * [String](../../core/core_package_api/core_package_structs.html#struct-string) - 替换后字符串。
>>>> 异常：
>>>>                                * [IndexOutOfBoundsException](../../core/core_package_api/core_package_exceptions.html#class-indexoutofboundsexception) - 当 index 小于 0，或 index 大于等于输入序列的 size 时，抛出异常。
>>>> func replaceAll(String)
>>>>     
>>>>     public func replaceAll(replacement: String): String
>>>>     
>>>> 
>>>> 功能：将输入序列中所有与正则匹配的子序列替换为给定的目标字符串。 参数：
>>>>                                * replacement: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 指定替换字符串。
>>>> 返回值：
>>>>                                * [String](../../core/core_package_api/core_package_structs.html#struct-string) - 替换后的字符串。
>>>> func replaceAll(String, Int64)
>>>>     
>>>>     public func replaceAll(replacement: String, limit: Int64): String
>>>>     
>>>> 
>>>> 功能：将输入序列中与正则匹配的前 limit 个子序列替换为给定的替换字符串。 参数：
>>>>                                * replacement: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 指定替换字符串。
>>>>                                * limit: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 替换次数。如果 limit 等于 0，返回原来的序列；如果 limit 为负数，将尽可能多次的替换。
>>>> 返回值：
>>>>                                * [String](../../core/core_package_api/core_package_structs.html#struct-string) - 替换后字符串。
>>>> func resetRegion()
>>>>     
>>>>     public func resetRegion(): Matcher
>>>>     
>>>> 
>>>> 功能：重置匹配器开始位置和结束位置。 返回值：
>>>>                                * Matcher - 匹配器自身。
>>>> func resetString(String)
>>>>     
>>>>     public func resetString(input: String): Matcher
>>>>     
>>>> 
>>>> 功能：重设匹配序列，并重置匹配器。 参数：
>>>>                                * input: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 新的匹配序列。
>>>> 返回值：
>>>>                                * Matcher - 匹配器自身。
>>>> func setRegion(Int64, Int64)
>>>>     
>>>>     public func setRegion(beginIndex: Int64, endIndex: Int64): Matcher
>>>>     
>>>> 
>>>> 功能：设置匹配器可搜索区域的位置信息，具体位置由指定的 begin 和 end 决定。 参数：
>>>>                                * beginIndex: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 区域开始位置。
>>>>                                * endIndex: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 区域结束位置。
>>>> 返回值：
>>>>                                * Matcher - 匹配器自身。
>>>> 异常：
>>>>                                * [IndexOutOfBoundsException](../../core/core_package_api/core_package_exceptions.html#class-indexoutofboundsexception) - 当 beginIndex 小于0，或 beginIndex 大于输入序列的 size 时，抛出异常；当 endIndex 小于0，或 endIndex 大于输入序列的 size 时，抛出异常；当 beginIndex 大于 endIndex 时，抛出异常。
>>>> func split()
>>>>     
>>>>     public func split(): Array<String>
>>>>     
>>>> 
>>>> 功能：将给定的输入序列根据正则尽可能的分割成多个子序列。 返回值：
>>>>                                * [Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[String](../../core/core_package_api/core_package_structs.html#struct-string)> - 子序列数组。
>>>> func split(Int64)
>>>>     
>>>>     public func split(limit: Int64): Array<String>
>>>>     
>>>> 
>>>> 功能：将给定的输入序列根据正则尽可能的分割成多个子序列 (最多分割成 limit 个子串)。 参数：
>>>>                                * limit: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 最多分割的子串个数。
>>>> 返回值：
>>>>                                * [Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[String](../../core/core_package_api/core_package_structs.html#struct-string)> - 如果 limit>0，返回最多 limit 个子串；如果 limit<=0，返回最大可分割数个子串。
>>>> class Regex
>>>>     
>>>>     public class Regex {
>>>>         public init(pattern: String, flags: Array<RegexFlag>)
>>>>         public init(pattern: String, option: RegexOption)
>>>>     }
>>>>     
>>>> 
>>>> 功能：用来指定编译类型并创建正则表达式实例。 正则匹配规则详见 [regex 规则集](../regex_package_overview.html#-regex-%E8%A7%84%E5%88%99%E9%9B%86)。 init(String, Array<RegexFlag>)
>>>>     
>>>>     public init(pattern: String, flags: Array<RegexFlag>)
>>>>     
>>>> 
>>>> 功能：创建 [Regex](regex_package_classes.html#class-regex) 实例。 参数：
>>>>                                * pattern: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 正则表达式。
>>>>                                * flags: [Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[RegexFlag](regex_package_enums.html#enum-regexflag)> - 正则匹配的模式列表。
>>>> 异常：
>>>>                                * [RegexException](regex_package_exceptions.html#class-regexexception) - 当初始化失败时，抛出异常。
>>>> init(String, RegexOption) (deprecated)
>>>>     
>>>>     public init(pattern: String, option: RegexOption)
>>>>     
>>>> 
>>>> 功能：使用指定的模式创建一个 [Regex](regex_package_classes.html#class-regex) 实例。
>>>>
>>>>> **注意：** 未来版本即将废弃，使用 init(String, Array<RegexFlag>) 替代。
>>>> 
>>>> 参数：
>>>>                                * pattern: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 正则表达式。
>>>>                                * option: RegexOption - 正则匹配的模式。
>>>> 异常：
>>>>                                * [RegexException](regex_package_exceptions.html#class-regexexception) - 当初始化失败时，抛出异常。
>>>> func find(String, Bool)
>>>>     
>>>>     public func find(input: String, group!: Bool = false): Option<MatchData>
>>>>     
>>>> 
>>>> 功能：查找第一个匹配到的子序列。 参数：
>>>>                                * input: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 待匹配序列。
>>>>                                * group!: [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 指定是否开启捕获组的提取。
>>>> 返回值：
>>>>                                * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[MatchData](regex_package_structs.html#struct-matchdata)> - 匹配到结果返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[MatchData](regex_package_structs.html#struct-matchdata)>，如果匹配不到，返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[MatchData](regex_package_structs.html#struct-matchdata)>.None。
>>>> 异常：
>>>>                                * [RegexException](regex_package_exceptions.html#class-regexexception) - 当存在匹配但提取匹配信息失败时，抛出异常。
>>>> 示例：
>>>>     
>>>>     import std.regex.*
>>>>     
>>>>     main(): Unit {
>>>>         let r1 = Regex("ab")
>>>>         let r2 = Regex("ab", IgnoreCase)
>>>>         match (r1.find("aB")) {
>>>>             case Some(r) => println(r.matchString())
>>>>             case None => println("None")
>>>>         }
>>>>         match (r2.find("aB")) {
>>>>             case Some(r) => println(r.matchString())
>>>>             case None => println("None")
>>>>         }
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     None
>>>>     aB
>>>>     
>>>> 
>>>> func findAll(String, Bool)
>>>>     
>>>>     public func findAll(input: String, group!: Bool = false): Array<MatchData>
>>>>     
>>>> 
>>>> 功能：对整个输入序列进行匹配，查找所有匹配到的子序列。 参数：
>>>>                                * input: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 待匹配序列。
>>>>                                * group!: [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 指定是否开启捕获组的提取。
>>>> 返回值：
>>>>                                * [Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[MatchData](regex_package_structs.html#struct-matchdata)> - 存储匹配结果的数组，如果未匹配到，数组为空。
>>>> 异常：
>>>>                                * [RegexException](regex_package_exceptions.html#class-regexexception) - 当存在匹配但提取匹配信息失败时，抛出异常。
>>>> 示例：
>>>>     
>>>>     import std.regex.*
>>>>     
>>>>     main(): Unit {
>>>>         let r = Regex("ab")
>>>>         let arr = r.findAll("ababaaab")
>>>>         let iter = arr.iterator()
>>>>         println(arr.size)
>>>>         while (true) {
>>>>             match (iter.next()) {
>>>>                 case Some(i) => println(i.matchString())
>>>>                 case None => break
>>>>             }
>>>>         }
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     3
>>>>     ab
>>>>     ab
>>>>     ab
>>>>     
>>>> 
>>>> func getNamedGroups()
>>>>     
>>>>     public func getNamedGroups(): Map<String, Int64>
>>>>     
>>>> 
>>>> 功能：获取命名捕获组的名称与索引映射。 返回值：
>>>>                                * [Map](../../collection/collection_package_api/collection_package_interface.html#interface-mapk-v)<[String](../../core/core_package_api/core_package_structs.html#struct-string), [Int64](../../core/core_package_api/core_package_intrinsics.html#int64)> - 命名捕获组的名称与索引映射。
>>>> 示例：
>>>>     
>>>>     import std.regex.*
>>>>     
>>>>     main(): Unit {
>>>>         let r = Regex(#"(?<year>\d{4})-(?<month>\d{2})-(?<day>\d{2})"#)
>>>>         let arr = r.findAll("2024-10-24&2025-01-01", group: true)
>>>>         for (md in arr) {
>>>>             println("# found: `${md.matchString()}` and groupCount: ${md.groupCount()}")
>>>>             for ((name, index) in r.getNamedGroups()) {
>>>>                 println("${name} => ${index}")
>>>>             }
>>>>         }
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     # found: `2024-10-24` and groupCount: 3
>>>>     day => 3
>>>>     month => 2
>>>>     year => 1
>>>>     # found: `2025-01-01` and groupCount: 3
>>>>     day => 3
>>>>     month => 2
>>>>     year => 1
>>>>     
>>>> 
>>>> func lazyFindAll(String, Bool)
>>>>     
>>>>     public func lazyFindAll(input: String, group!: Bool = false): Iterator<MatchData>
>>>>     
>>>> 
>>>> 功能：对整个输入序列进行匹配，获取匹配的迭代器。 参数：
>>>>                                * input: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 待匹配序列。
>>>>                                * group!: [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 指定是否开启捕获组的提取。
>>>> 返回值：
>>>>                                * [Iterator](../../core/core_package_api/core_package_classes.html#class-iteratort)<[MatchData](regex_package_structs.html#struct-matchdata)> - 匹配的迭代器。
>>>> 示例：
>>>>     
>>>>     import std.regex.*
>>>>     
>>>>     main(): Unit {
>>>>         let r = Regex(#"(?<year>\d{4})-(?<month>\d{2})-(?<day>\d{2})"#)
>>>>         let iter = r.lazyFindAll("2024-10-24&2025-01-01", group: true)
>>>>         while (true) {
>>>>             match (iter.next()) {
>>>>                 case Some(md) =>
>>>>                     println("# found: `${md.matchString()}` and groupCount: ${md.groupCount()}")
>>>>                     for ((name, index) in r.getNamedGroups()) {
>>>>                         println("${name} => ${index}")
>>>>                     }
>>>>                 case None => break
>>>>             }
>>>>         }
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     # found: `2024-10-24` and groupCount: 3
>>>>     day => 3
>>>>     month => 2
>>>>     year => 1
>>>>     # found: `2025-01-01` and groupCount: 3
>>>>     day => 3
>>>>     month => 2
>>>>     year => 1
>>>>     
>>>> 
>>>> func matcher(String) (deprecated)
>>>>     
>>>>     public func matcher(input: String): Matcher
>>>>     
>>>> 
>>>> 功能：创建匹配器。
>>>>
>>>>> **注意：** 未来版本即将废弃。
>>>> 
>>>> 参数：
>>>>                                * input: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要匹配的字符串。
>>>> 返回值：
>>>>                                * Matcher - 创建的匹配器。
>>>> func matches(String)
>>>>     
>>>>     public func matches(input: String): Bool
>>>>     
>>>> 
>>>> 功能：判断入参 input 与正则表达式是否存在匹配。 参数：
>>>>                                * input: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 要匹配的字符串。
>>>> 返回值：
>>>>                                * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 如果存在匹配，返回 true，否则返回 false。
>>>> 示例：
>>>>     
>>>>     import std.regex.*
>>>>     
>>>>     main(): Unit {
>>>>         let r = Regex(#"(?<year>\d{4})-(?<month>\d{2})-(?<day>\d{2})"#)
>>>>         println(r.matches("2024-10-24&2025-01-01"))
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     true
>>>>     
>>>> 
>>>> func replace(String, String)
>>>>     
>>>>     public func replace(input: String, replacement: String): String
>>>>     
>>>> 
>>>> 功能：自当前字符串起始位置开始，匹配到的第一个子序列替换为目标字符串。 参数：
>>>>                                * input: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 待匹配序列。
>>>>                                * replacement: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 指定替换字符串。
>>>> 返回值：
>>>>                                * [String](../../core/core_package_api/core_package_structs.html#struct-string) - 替换后字符串。
>>>> 示例：
>>>>     
>>>>     import std.regex.*
>>>>     
>>>>     main(): Unit {
>>>>         let r = Regex(#"(?<year>\d{4})-(?<month>\d{2})-(?<day>\d{2})"#)
>>>>         println(r.replace("2024-10-24&2025-01-01", "time"))
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     time&2025-01-01
>>>>     
>>>> 
>>>> func replace(String, String, Int64)
>>>>     
>>>>     public func replace(input: String, replacement: String, index: Int64): String
>>>>     
>>>> 
>>>> 功能：从输入序列的 index 位置起匹配正则，将匹配到的第一个子序列替换为目标字符串。 参数：
>>>>                                * input: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 待匹配序列。
>>>>                                * replacement: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 指定替换字符串。
>>>>                                * index: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 匹配开始位置。
>>>> 返回值：
>>>>                                * [String](../../core/core_package_api/core_package_structs.html#struct-string) - 替换后字符串。
>>>> 异常：
>>>>                                * [IndexOutOfBoundsException](../../core/core_package_api/core_package_exceptions.html#class-indexoutofboundsexception) - 当 index 小于 0，或 index 大于等于输入序列的 size 时，抛出异常。
>>>> 示例：
>>>>     
>>>>     import std.regex.*
>>>>     
>>>>     main(): Unit {
>>>>         let r = Regex(#"(?<year>\d{4})-(?<month>\d{2})-(?<day>\d{2})"#)
>>>>         println(r.replace("2024-10-24&2025-01-01", "time", 10))
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     2024-10-24&time
>>>>     
>>>> 
>>>> func replaceAll(String, String)
>>>>     
>>>>     public func replaceAll(input: String, replacement: String): String
>>>>     
>>>> 
>>>> 功能：将输入序列中所有与正则匹配的子序列替换为给定的目标字符串。 参数：
>>>>                                * input: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 待匹配序列。
>>>>                                * replacement: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 指定替换字符串。
>>>> 返回值：
>>>>                                * [String](../../core/core_package_api/core_package_structs.html#struct-string) - 替换后的字符串。
>>>> 示例：
>>>>     
>>>>     import std.regex.*
>>>>     
>>>>     main(): Unit {
>>>>         let r = Regex(#"(?<year>\d{4})-(?<month>\d{2})-(?<day>\d{2})"#)
>>>>         println(r.replaceAll("2024-10-24&2025-01-01", "time"))
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     time&time
>>>>     
>>>> 
>>>> func replaceAll(String, String, Int64)
>>>>     
>>>>     public func replaceAll(input: String, replacement: String, limit: Int64): String
>>>>     
>>>> 
>>>> 功能：将输入序列中与正则匹配的前 limit 个子序列替换为给定的替换字符串。 参数：
>>>>                                * input: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 待匹配序列。
>>>>                                * replacement: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 指定替换字符串。
>>>>                                * limit: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 替换次数。如果 limit 等于 0，返回原来的序列；如果 limit 为负数，将尽可能多次的替换。
>>>> 返回值：
>>>>                                * [String](../../core/core_package_api/core_package_structs.html#struct-string) - 替换后字符串。
>>>> 示例：
>>>>     
>>>>     import std.regex.*
>>>>     
>>>>     main(): Unit {
>>>>         let r = Regex(#"(?<year>\d{4})-(?<month>\d{2})-(?<day>\d{2})"#)
>>>>         println(r.replaceAll("2019-4-5&2024-10-24&2025-01-01", "time", 10))
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     2019-4-5&time&time
>>>>     
>>>> 
>>>> func split(String)
>>>>     
>>>>     public func split(input: String): Array<String>
>>>>     
>>>> 
>>>> 功能：将给定的输入序列根据正则尽可能的分割成多个子序列。 参数：
>>>>                                * input: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 待匹配序列。
>>>> 返回值：
>>>>                                * [Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[String](../../core/core_package_api/core_package_structs.html#struct-string)> - 子序列数组。
>>>> 示例：
>>>>     
>>>>     import std.regex.*
>>>>     
>>>>     main(): Unit {
>>>>         let r = Regex("&")
>>>>         for (subStr in r.split("2019-4-5&2024-10-24&2025-01-01")) {
>>>>             println(subStr)
>>>>         }
>>>>     }
>>>>     
>>>> 
>>>> 运行结果：
>>>>     
>>>>     2019-4-5
>>>>     2024-10-24
>>>>     2025-01-01
>>>>     
>>>> 
>>>> func split(String, Int64)
>>>>     
>>>>     public func split(input: String, limit: Int64): Array<String>
>>>>     
>>>> 
>>>> 功能：将给定的输入序列根据正则尽可能的分割成多个子序列 (最多分割成 limit 个子串)。 参数：
>>>>                                * input: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 待匹配序列。
>>>>                                * limit: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 最多分割的子串个数。
>>>> 返回值：
>>>>                                * [Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[String](../../core/core_package_api/core_package_structs.html#struct-string)> - 如果 limit>0，返回最多 limit 个子串；如果 limit<=0，返回最大可分割数个子串。
>>>> func string()
>>>>     
>>>>     public func string(): String
>>>>     
>>>> 
>>>> 功能：获取正则的输入序列。 返回值：
>>>>                                * [String](../../core/core_package_api/core_package_structs.html#struct-string) - 输入序列。
>>>> class RegexOption (deprecated)
>>>>     
>>>>     public class RegexOption <: ToString {
>>>>         public init()
>>>>     }
>>>>     
>>>> 
>>>> 功能：用于指定正则匹配的模式。
>>>>
>>>>> **注意：** 未来版本即将废弃，使用 [RegexFlag](regex_package_enums.html#enum-regexflag) 替代。
>>>> 
>>>> 父类型：
>>>>                                * [ToString](../../core/core_package_api/core_package_interfaces.html#interface-tostring)
>>>> init()
>>>>     
>>>>     public init()
>>>>     
>>>> 
>>>> 功能：创建一个 RegexOption 实例， 匹配模式为普通模式（NORMAL）。 func ignoreCase()
>>>>     
>>>>     public func ignoreCase(): RegexOption
>>>>     
>>>> 
>>>> 功能：修改 RegexOption，修改匹配模式为忽略大小写（IGNORECASE）。 返回值：
>>>>                                * RegexOption - 修改后的 RegexOption。
>>>> func multiLine()
>>>>     
>>>>     public func multiLine(): RegexOption
>>>>     
>>>> 
>>>> 功能：修改 RegexOption，修改匹配模式为多行文本模式（MULTILINE）。 返回值：
>>>>                                * RegexOption - 修改后的 RegexOption。
>>>> func toString()
>>>>     
>>>>     public func toString(): String
>>>>     
>>>> 
>>>> 功能：获取 RegexOption 当前表示的正则匹配模式。 返回值：
>>>>                                * [String](../../core/core_package_api/core_package_structs.html#struct-string) - 正则匹配模式。
>>>> std.regex 功能介绍 regex 包使用正则表达式分析处理文本的能力，支持查找、分割、替换、验证等功能。 regex 规则集 当前仓颉的正则表达式仅支持以下规则，使用不支持的规则会导致输出结果与预期不符。 字符| 描述  
>>>> ---|---  
>>>> `\`| 将下一个字符标记为一个特殊字符（File Format Escape，清单见本表）、或一个原义字符（Identity Escape，有`^$()*+?.[{\|`共计 12 个)、或一个向后引用(backreferences)。例如，“n”匹配字符“n”。`\n`匹配一个换行符。序列`\`匹配`\`，而`(`则匹配`(`。  
>>>> `^`| 匹配输入字符串的开始位置。如果设置了 RegexOption 中的多行模式 multiLine()，^也匹配`\n`或`\r`之后的位置。  
>>>> `$`| 匹配输入字符串的结束位置。  
>>>> `*`| 匹配前面的子表达式零次或多次。例如，`zo*`能匹配`z`、`zo`以及`zoo`。`*`等价于`{0,}`。  
>>>> `+`| 匹配前面的子表达式一次或多次。例如，`zo+`能匹配`zo`以及`zoo`，但不能匹配`z`。`+`等价于`{1,}`。  
>>>> `?`| 匹配前面的子表达式零次或一次。例如，`do(es)?`可以匹配`does`中的`do`和`does`。`?`等价于`{0,1}`。  
>>>> `{n}`| n 是一个非负整数。匹配确定的 n 次。例如，`o{2}`不能匹配`Bob`中的`o`，但是能匹配`food`中的两个`o`。  
>>>> `{n,}`| n 是一个非负整数。至少匹配 n 次。例如，`o{2,}`不能匹配`Bob`中的`o`，但能匹配`foooood`中的所有`o`。`o{1,}`等价于`o+`。`o{0,}`则等价于`o*`。  
>>>> `{n,m}`| m 和 n 均为非负整数，其中 n<=m。最少匹配 n 次且最多匹配 m 次。例如，`o{1,3}`将匹配`fooooood`中的前三个`o`。`o{0,1}`等价于`o?`。请注意在逗号和两个数之间不能有空格。  
>>>> `?`| 非贪心量化（Non-greedy quantifiers）：当该字符紧跟在任何一个其他重复修饰符（*,+,?，{n}，{n,}，{n,m}）后面时，匹配模式是非贪婪的。非贪婪模式尽可能少的匹配所搜索的字符串，而默认的贪婪模式则尽可能多的匹配所搜索的字符串。例如，对于字符串`oooo`，`o+?`将匹配单个`o`，而`o+`将匹配所有`o`。  
>>>> `.`| 匹配除`\n`之外的任何单个字符。要匹配包括`\n`在内的任何字符，请使用像`(.\|\n)`的模式。  
>>>> `(pattern)`| 匹配 pattern 并获取这一匹配的子字符串。该子字符串用于向后引用。所获取的匹配可以从产生的 Matches 集合中得到。要匹配圆括号字符，请使用`\\(`或`\\)`。可带数量后缀。  
>>>> `x\|y`| 没有包围在()里，其范围是整个正则表达式。例如，z|food 能匹配`z`或`food`。(?:z|f)ood 则匹配`zood`或`food`。  
>>>> `[xyz]`| 字符集合（character class）。匹配所包含的任意一个字符。例如，`[abc]`可以匹配`plain`中的`a`。特殊字符仅有反斜线\保持特殊含义，用于转义字符。其他特殊字符如星号、加号、各种括号等均作为普通字符。脱字符^如果出现在首位则表示负值字符集合；如果出现在字符串中间就仅作为普通字符。连字符 - 如果出现在字符串中间表示字符范围描述；如果如果出现在首位（或末尾）则仅作为普通字符。右方括号应转义出现，也可以作为首位字符出现。  
>>>> `[^xyz]`| 排除型字符集合（negated character classes）。匹配未列出的任意字符。例如，`[^abc]`可以匹配`plain`中的`plin`。  
>>>> `[a-z]`| 字符范围。匹配指定范围内的任意字符。例如，`[a-z]`可以匹配`a`到`z`范围内的任意小写字母字符。  
>>>> `[^a-z]`| 排除型的字符范围。匹配任何不在指定范围内的任意字符。例如，`[^a-z]`可以匹配任何不在`a`到`z`范围内的任意字符。  
>>>> `\b`| 匹配一个单词边界，也就是指单词和空格间的位置。例如，`er\b`可以匹配`never`中的`er`，但不能匹配`verb`中的`er`。  
>>>> `\B`| 匹配非单词边界。`er\B`能匹配`verb`中的`er`，但不能匹配`never`中的`er`。  
>>>> `\d`| 匹配一个数字字符。等价于`[0-9]`。  
>>>> `\D`| 匹配一个非数字字符。等价于`[^0-9]`。  
>>>> `\f`| 匹配一个换页符。等价于`\x0c`。  
>>>> `\n`| 匹配一个换行符。等价于`\x0a`。  
>>>> `\r`| 匹配一个回车符。等价于`\x0d`。  
>>>> `\s`| 匹配任何空白字符，包括空格、制表符、换页符等等。等价于`[\f\n\r\t\v]`。  
>>>> `\S`| 匹配任何非空白字符。等价于`[^\f\n\r\t\v]`。  
>>>> `\t`| 匹配一个制表符。等价于`\x09`。  
>>>> `\v`| 匹配`\n\v\f\r\x85`。  
>>>> `\w`| 匹配包括下划线的任何单词字符。等价于`[A-Za-z0-9_]`。  
>>>> `\W`| 匹配任何非单词字符。等价于`[^A-Za-z0-9_]`。  
>>>> `\xnm`| 十六进制转义字符序列。匹配两个十六进制数字 nm 表示的字符。例如，`\x41`匹配`A`。正则表达式中可以使用 ASCII 码。  
>>>> `\num`| 向后引用（back-reference）一个子字符串（substring），该子字符串与正则表达式的第 num 个用括号围起来的捕捉群（capture group）子表达式（subexpression）匹配。其中 num 是从 1 开始的十进制正整数，Regex 捕获组上限为 63。例如：`(.)\1`匹配两个连续的相同字符。  
>>>> `(?:pattern)`| 匹配 pattern 但不获取匹配的子字符串（shy groups），也就是说这是一个非获取匹配，不存储匹配的子字符串用于向后引用。这在使用或字符`(\|)`来组合一个模式的各个部分是很有用。  
>>>> `(?=pattern)`| 正向肯定预查（look ahead positive assert），在任何匹配 pattern 的字符串开始处匹配查找字符串。这是一个非获取匹配，也就是说，该匹配不需要获取供以后使用。例如，`Windows(?=95\|98\|NT\|2000)`能匹配`Windows2000`中的`Windows`，但不能匹配`Windows3.1`中的`Windows`。预查不消耗字符，也就是说，在一个匹配发生后，在最后一次匹配之后立即开始下一次匹配的搜索，而不是从包含预查的字符之后开始。  
>>>> `(?!pattern)`| 正向否定预查（negative assert），在任何不匹配 pattern 的字符串开始处匹配查找字符串。这是一个非获取匹配，也就是说，该匹配不需要获取供以后使用。例如`Windows(?!95\|98\|NT\|2000)`能匹配`Windows3.1`中的`Windows`，但不能匹配`Windows2000`中的`Windows`。预查不消耗字符，也就是说，在一个匹配发生后，在最后一次匹配之后立即开始下一次匹配的搜索，而不是从包含预查的字符之后开始。  
>>>> `(?<=pattern)`| 反向（look behind）肯定预查，与正向肯定预查类似，只是方向相反。例如，`(?<=95\|98\|NT\|2000)Windows`能匹配`2000Windows`中的`Windows`，但不能匹配`3.1Windows`中的`Windows`。  
>>>> `(?<!pattern)`| 反向否定预查，与正向否定预查类似，只是方向相反。例如`(?<!95\|98\|NT\|2000)Windows`能匹配`3.1Windows`中的`Windows`，但不能匹配`2000Windows`中的`Windows`。  
>>>> `(?i)`| 通过规则指定部分规则忽略大小写。当前 Regex 仅支持全局忽略大小写，当该选项被指定时，会被当做全局忽略大小写对待。  
>>>> `(?-i)`| 通过规则指定部分规则大小写敏感。 当前 Regex 默认大小写敏感，该选项仅做编译兼容处理，不做敏感处理。  
>>>> `+`| 单独一个加号，不是转义的`\\+`。  
>>>> `*`| 单独一个星号，不是转义的`\\*`。  
>>>> `-`| 单独一个减号，不是转义的`\\-`。  
>>>> `]`| 单独一个右中括号，不是转义的`\\]`。  
>>>> `}`| 单独一个右大括号，不是转义的`\\}`。  
>>>> `[[:alpha:]]`| 表示任意大小写字母。  
>>>> `[[:^alpha:]]`| 表示除大小写字母以外的任意字符。  
>>>> `[[:lower:]]`| 表示任意小写字母。  
>>>> `[[:^lower:]]`| 表示除小写字母以外的任意字符。  
>>>> `[[:upper:]]`| 表示任意大写字母。  
>>>> `[[:^upper:]]`| 表示除大写字母以外的任意字符。  
>>>> `[[:digit:]]`| 表示0到9之间的任意单个数字。  
>>>> `[[:^digit:]]`| 表示除0到9之间的单个数字以外的任意字符。  
>>>> `[[:xdigit:]]`| 表示十六进制的字母和数字。  
>>>> `[[:^xdigit:]]`| 表示除十六进制的字母和数字以外的任意字符。  
>>>> `[[:alnum:]]`| 表示任意数字或字母。  
>>>> `[[:^alnum:]]`| 表示除数字或字母以外的任意字符。  
>>>> `[[:space:]]`| 表示任意空白字符，包括"空格"、"tab键"等。  
>>>> `[[:^space:]]`| 表示除空白字符以外的任意字符。  
>>>> `[[:punct:]]`| 表示任意标点符号。  
>>>> `[[:^punct:]]`| 表示除任意标点符号以外的任意字符。  
>>>> 在仓颉中，还存在一些特殊的规则：
>>>>                                1. `?`、`+`、`*` 前面的字符不可量化时，会被忽略；特例：`(*`、`|*`、`*` 开头时 `*` 会被视为普通字符。
>>>>                                2. `*?` 在匹配全部 `*?` 之前的字符组成的字符串时，会匹配不到该字符。
>>>>                                3. 正则表达式的捕获组的最大个数为 63，编译后的最大规则长度为 65535。
>>>>                                4. 暂不支持的场景：((pattern1){m1,n1}pattern2){m2,n2}，即：
>>>>                                   * 组定义 1 被{m1,n1}修饰；
>>>>                                   * 组定义 1 被组定义 2 包裹；
>>>>                                   * 组定义 2 被{m2,n2}修饰。
>>>>                                5. 待匹配字符串需要用户自行保障不包含 `\0`，否则会得到预期以外的结果，甚至会陷入死循环无法退出。
>>>>
>>>>> **警告：** 当前实现中未对规则为`{n}`、`{n,}`、`{n,m}`创建的最小或者最大重复次数进行限制，重复次数过大会造成创建正则匹配器时占用大量的CPU和内存资源，甚至会触发栈溢出异常退出，从而导致执行时间过长或者 `ReDos`攻击。
>>>> 
>>>> API 列表 类 类名| 功能  
>>>> ---|---  
>>>> [Matcher (deprecated)](./regex_package_api/regex_package_classes.html#class-matcher-deprecated)| 正则匹配器，用于扫描输入序列并进行匹配。  
>>>> [Regex](./regex_package_api/regex_package_classes.html#class-regex)| 用来指定编译类型和输入序列。  
>>>> [RegexOption (deprecated)](./regex_package_api/regex_package_classes.html#class-regexoption-deprecated)| 用于指定正则匹配的模式。  
>>>> 枚举 枚举名| 功能  
>>>> ---|---  
>>>> [RegexFlag](./regex_package_api/regex_package_enums.html#enum-regexflag)| 用于指定正则匹配的模式。  
>>>> 结构体 结构体名| 功能  
>>>> ---|---  
>>>> [MatchData](./regex_package_api/regex_package_structs.html#struct-matchdata)| 存储正则表达式匹配结果，并提供对正则匹配结果进行查询的函数。  
>>>> [Position](./regex_package_api/regex_package_structs.html#struct-position)| 用来存储位置信息，表示的是一个前闭后开区间。  
>>>> 异常类 异常类名| 功能  
>>>> ---|---  
>>>> [RegexException](./regex_package_api/regex_package_exceptions.html#class-regexexception)| 提供 regex 相关的异常处理。
