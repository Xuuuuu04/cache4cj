prop name函数 func atExit(() -> Unit)  
>>       
>>     public func atExit(callback: () -> Unit): Unit
>>     
>> 
>> 功能：注册回调函数，当前进程退出时执行注册函数。
>>
>>> **注意：** 请不要使用 C 语言 atexit 函数，避免出现不可期问题。函数 func atExit(() -> Unit)
>>     
>>     public func atExit(callback: () -> Unit): Unit
>>     
>> 
>> 功能：注册回调函数，当前进程退出时执行注册函数。
>>
>>> **注意：** 请不要使用 C 语言 atexit 函数，避免出现不可期问题。
>> 
>> 参数：
>>                          * callback: () ->[Unit](../../core/core_package_api/core_package_intrinsics.html#unit) - 需要被注册回调的函数。
>> func exit(Int64)
>>     
>>     public func exit(code: Int64): Nothing
>>     
>> 
>> 功能：注册回调函数，当前进程退出时执行注册函数。 参数：
>>                          * code: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 当前进程退出状态码。
>> func getCommand()
>>     
>>     public func getCommand(): String
>>     
>> 
>> 功能：获取进程命令。 返回值：
>>                          * [String](../../../std/core/core_package_api/core_package_structs.html#struct-string) - 当前进程命令。
>> 异常：
>>                          * [EnvException](./env_package_exceptions.html#class-envexception) - 当进程不存在或对应进程为僵尸进程，无法获取进程名时，抛出异常。
>> func getCommandLine()
>>     
>>     public func getCommandLine(): Array<String>
>>     
>> 
>> 功能：获取当前进程命令行。Windows 平台当前进程可获取，其他场景下无法在非特权 API 下获取到本属性，暂不支持获取。 返回值：
>>                          * [Array](../../../std/core/core_package_api/core_package_structs.html#struct-arrayt)<[String](../../../std/core/core_package_api/core_package_structs.html#struct-string)> - 当前进程命令行。
>> 异常：
>>                          * [EnvException](./env_package_exceptions.html#class-envexception) - 当进程不存在或对应进程为僵尸进程，或在 Windows 平台下暂不支持场景，无法获取进程命令行时，抛出异常。
>> func getHomeDirectory()
>>     
>>     public func getHomeDirectory(): Path
>>     
>> 
>> 功能：获取当前进程 home 目录的路径。 返回值：
>>                          * [Path](../../fs/fs_package_api/fs_package_structs.html#struct-path) - 当前进程 home 目录的路径。
>> func getProcessId()
>>     
>>     public func getProcessId(): Int
>>     
>> 
>> 功能：获取当前进程 id。 返回值：
>>                          * [Int](../../core/core_package_api/core_package_types.html#type-int) - 当前进程 id。
>> func getStdErr()
>>     
>>     public func getStdErr(): ConsoleWriter
>>     
>> 
>> 功能：获取当前进程标准错误流。 返回值：
>>                          * [ConsoleWriter](./env_package_classes.html#class-consolewriter) - 进程标准错误流。
>> func getStdIn()
>>     
>>     public func getStdIn(): ConsoleReader
>>     
>> 
>> 功能：获取当前进程标准输入流。 返回值：
>>                          * [ConsoleReader](./env_package_classes.html#class-consolereader) - 进程标准输入流。
>> func getStdOut()
>>     
>>     public func getStdOut(): ConsoleWriter
>>     
>> 
>> 功能：获取当前进程标准输出流。 返回值：
>>                          * [ConsoleWriter](./env_package_classes.html#class-consolewriter) - 进程标准输出流。
>> func getTempDirectory()
>>     
>>     public func getTempDirectory(): Path
>>     
>> 
>> 功能：获取当前进程临时目录的路径。从环境变量中获取 TMPDIR、TMP、TEMP 和 TEMPDIR 环境变量。如果以上值在环境变量中均不存在，则默认返回 /tmp 目录。 返回值：
>>                          * [Path](../../fs/fs_package_api/fs_package_structs.html#struct-path) - 当前进程临时目录的路径。
>> func getVariable(String)
>>     
>>     public func getVariable(key: String): ?String
>>     
>> 
>> 功能：获取当前进程指定名称的环境变量值。 参数：
>>                          * key: [String](../../../std/core/core_package_api/core_package_structs.html#struct-string) - 指定名称。
>> 返回值：
>>                          * ?[String](../../../std/core/core_package_api/core_package_structs.html#struct-string) - 当前进程指定名称的环境变量值。
>> 异常：
>>                          * [IllegalArgumentException](../../../std/core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) - 当函数参数 key 包含空字符时，抛出异常。
>> func getVariables()
>>     
>>     public func getVariables(): Array<(String, String)>
>>     
>> 
>> 功能：获取当前进程环境变量。Windows 平台当前进程可获取，其他场景下无法在非特权 API 下获取到本属性，暂不支持获取。 返回值：
>>                          * [Array](../../../std/core/core_package_api/core_package_structs.html#struct-arrayt)<([String](../../../std/core/core_package_api/core_package_structs.html#struct-string), [String](../../../std/core/core_package_api/core_package_structs.html#struct-string))> - 当前进程环境变量。
>> 异常：
>>                          * [EnvException](./env_package_exceptions.html#class-envexception) - 当进程不存在或对应进程为僵尸进程，或在 Windows 平台下暂不支持场景，无法获取进程环境变量时，抛出异常。
>> func getWorkingDirectory()
>>     
>>     public func getWorkingDirectory(): Path
>>     
>> 
>> 功能：获取当前进程工作路径。Windows 平台当前进程可获取，其他场景下无法在非特权 API 下获取到本属性，暂不支持获取。 返回值：
>>                          * [Path](../../fs/fs_package_api/fs_package_structs.html#struct-path) - 当前进程工作路径。
>> 异常：
>>                          * [EnvException](./env_package_exceptions.html#class-envexception) - 当进程不存在或对应进程为僵尸进程，或在 Windows 平台下暂不支持场景，无法获取进程工作路径时，抛出异常。
>> func removeVariable(String)
>>     
>>     public func removeVariable(key: String): Unit
>>     
>> 
>> 功能：通过指定环境变量名称移除环境变量。 参数：
>>                          * key: [String](../../../std/core/core_package_api/core_package_structs.html#struct-string) - 环境变量名称。
>> 异常：
>>                          * [IllegalArgumentException](../../../std/core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) - 当函数参数 k 包含空字符时，抛出异常时，抛出异常。
>> func setVariable(String, String)
>>     
>>     public func setVariable(key: String, value: String): Unit
>>     
>> 
>> 功能：用于设置一对环境变量。如果设置了同名环境变量，原始环境变量值将被覆盖。
>>
>>> **说明：** Windows 下如果传入的参数 v 是空字符串，那么会从环境中移除变量 k。
>> 
>> 参数：
>>                          * key: [String](../../../std/core/core_package_api/core_package_structs.html#struct-string) - 环境变量名称。
>>                          * value: [String](../../../std/core/core_package_api/core_package_structs.html#struct-string) - 环境变量值。
>> 异常：
>>                          * [IllegalArgumentException](../../../std/core/core_package_api/core_package_exceptions.html#class-illegalargumentexception) - 当函数参数 key 或 value 中包含空字符时，抛出异常。
>> 宏 `@Derive` 宏 功能：`Derive` 是一个核心宏，其仅可修饰结构体、类或枚举等声明，对被修饰的声明[自动扩展接口](../deriving_samples/deriving_user_guide.html)。 `@DeriveExclude` 宏 功能：`DeriveExclude` 可为已被 @Derive 宏修饰的声明[排除不需要处理的字段](../deriving_samples/deriving_user_guide.html#%E5%8C%85%E5%90%AB%E5%92%8C%E6%8E%92%E9%99%A4)，字段默认被 Deriving 处理。 `@DeriveInclude` 宏 功能：`DeriveInclude` 可为已被 @Derive 宏修饰的声明[增加需要处理的属性](../deriving_samples/deriving_user_guide.html#%E5%8C%85%E5%90%AB%E5%92%8C%E6%8E%92%E9%99%A4)，属性默认情况不会被 Deriving 处理。 `@DeriveOrder` 宏 功能：`DeriveOrder` 可为已被 @Derive 宏修饰的声明[指定处理字段和属性的顺序](../deriving_samples/deriving_user_guide.html#%E5%8F%98%E6%9B%B4%E9%A1%BA%E5%BA%8F)，通常对 `Comparable` 接口有意义。
