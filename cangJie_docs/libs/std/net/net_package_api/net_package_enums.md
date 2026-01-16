枚举 enum SocketNet
>>     
>>     public enum SocketNet <: ToString & Equatable<SocketNet> {
>>         | TCP
>>         | UDP
>>         | UNIX
>>     }
>>     
>> 
>> 功能：传输层协议类型。 父类型：
>>                            * [ToString](../../core/core_package_api/core_package_interfaces.html#interface-tostring)
>>                            * [Equatable](../../core/core_package_api/core_package_interfaces.html#interface-equatablet)<SocketNet>
>> TCP
>>     
>>     TCP
>>     
>> 
>> 功能：代表 TCP 协议。 UDP
>>     
>>     UDP
>>     
>> 
>> 功能：代表 UDP 协议。 UNIX
>>     
>>     UNIX
>>     
>> 
>> 功能：代表 UNIX 协议。 func toString()
>>     
>>     public func toString(): String
>>     
>> 
>> 功能：将枚举值转换为字符串。 返回值：
>>                            * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 转换后的字符串。
>> operator func !=(SocketNet)
>>     
>>     public operator func !=(that: SocketNet): Bool
>>     
>> 
>> 功能：判断两个 [SocketNet](net_package_enums.html#enum-socketnet) 是否不相等。 参数：
>>                            * that: [SocketNet](net_package_enums.html#enum-socketnet) \- 传入的 [SocketNet](net_package_enums.html#enum-socketnet)。
>> 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) \- 如果不相等，则返回 `true`；否则，返回 `false`。
>> operator func ==(SocketNet)
>>     
>>     public operator func ==(that: SocketNet): Bool
>>     
>> 
>> 功能：判断两个 [SocketNet](net_package_enums.html#enum-socketnet) 是否相等。 参数：
>>                            * that: [SocketNet](net_package_enums.html#enum-socketnet) \- 的 [SocketNet](net_package_enums.html#enum-socketnet)。
>> 返回值：
>>                            * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) \- 如果相等，则返回 `true`；否则，返回 `false`。
