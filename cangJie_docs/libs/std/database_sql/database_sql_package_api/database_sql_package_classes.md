类 class DriverManager
>>     
>>     public class DriverManager
>>     
>> 
>> 功能：支持运行时根据驱动名获取数据库驱动实例。 static func deregister(String)
>>     
>>     public static func deregister(driverName: String): Unit
>>     
>> 
>> 功能：按名称取消注册数据库驱动（如果存在）。本函数并发安全。 参数：
>>                          * driverName: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 驱动名称。
>> static func drivers()
>>     
>>     public static func drivers(): Array<String>
>>     
>> 
>> 功能：返回已注册数据库驱动名称的列表（名称已按照字典序排序）。本方法并发安全。 返回值：
>>                          * [Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[String](../../core/core_package_api/core_package_structs.html#struct-string)> - 数据库驱动名称的列表。
>> static func getDriver(String)
>>     
>>     public static func getDriver(driverName: String): Option<Driver>
>>     
>> 
>> 功能：按名称获取已注册的数据库驱动，如果不存在返回 `None`。本函数并发安全。 参数：
>>                          * driverName: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 驱动名称。
>> 返回值：
>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Driver](database_sql_package_interfaces.html#interface-driver)> - 若驱动存在则返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont) 包装的驱动实例，否则返回 `None`。
>> static func register(String, Driver)
>>     
>>     public static func register(driverName: String, driver: Driver): Unit
>>     
>> 
>> 功能：按名称和驱动实例注册数据库驱动，名称和实例一一对应。本方法并发安全。 参数：
>>                          * driverName: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 驱动名称。
>>                          * driver: [Driver](database_sql_package_interfaces.html#interface-driver) - 驱动实例。
>> 异常：
>>                          * [SqlException](database_sql_package_exceptions.html#class-sqlexception) - 当指定的驱动名称已经存在时，抛出异常。
>> class PooledDatasource
>>     
>>     public class PooledDatasource <: Datasource {
>>         public init(datasource: Datasource)
>>     }
>>     
>> 
>> 功能：数据库连接池类，提供数据库连接池能力。 父类型：
>>                          * [Datasource](database_sql_package_interfaces.html#interface-datasource)
>> prop connectionTimeout
>>     
>>     public mut prop connectionTimeout: Duration
>>     
>> 
>> 功能：从池中获取连接的超时时间。 类型：[Duration](../../core/core_package_api/core_package_structs.html#struct-duration) 异常：
>>                          * [ArithmeticException](../../core/core_package_api/core_package_exceptions.html#class-arithmeticexception) - 当该属性被设置为 [Duration](../../core/core_package_api/core_package_structs.html#struct-duration).Max 或 [Duration](../../core/core_package_api/core_package_structs.html#struct-duration).Min 时，抛此异常。
>>                          * [SqlException](database_sql_package_exceptions.html#class-sqlexception) - 当获取连接超时后，抛出此异常。
>> prop idleTimeout
>>     
>>     public mut prop idleTimeout: Duration
>>     
>> 
>> 功能：允许连接在池中闲置的最长时间，超过这个时间的空闲连接可能会被回收。 类型：[Duration](../../core/core_package_api/core_package_structs.html#struct-duration) prop keepaliveTime
>>     
>>     public mut prop keepaliveTime: Duration
>>     
>> 
>> 功能：检查空闲连接健康状况的间隔时间，防止它被数据库或网络基础设施超时。 类型：[Duration](../../core/core_package_api/core_package_structs.html#struct-duration) prop maxIdleSize
>>     
>>     public mut prop maxIdleSize: Int32
>>     
>> 
>> 功能：最大空闲连接数量，超过这个数量的空闲连接会被关闭，负数或0表示无限制。 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) prop maxLifeTime
>>     
>>     public mut prop maxLifeTime: Duration
>>     
>> 
>> 功能：自连接创建以来的最大持续时间，在该持续时间之后，连接将自动关闭。 类型：[Duration](../../core/core_package_api/core_package_structs.html#struct-duration) prop maxSize
>>     
>>     public mut prop maxSize: Int32
>>     
>> 
>> 功能：连接池最大连接数量，负数或0表示无限制。 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) init(Datasource)
>>     
>>     public init(datasource: Datasource)
>>     
>> 
>> 功能：通过数据源 datasource 构造一个 [PooledDatasource](database_sql_package_classes.html#class-pooleddatasource) 实例，入参必须为 [Datasource](database_sql_package_interfaces.html#interface-datasource) 对象。 参数：
>>                          * datasource: [Datasource](database_sql_package_interfaces.html#interface-datasource) - 数据源。
>> func close()
>>     
>>     public func close(): Unit
>>     
>> 
>> 功能：关闭连接池中的所有连接并阻止其他连接请求。调用该方法会阻塞至所有连接关闭并归还到连接池。 func connect()
>>     
>>     public func connect(): Connection
>>     
>> 
>> 功能：获取一个连接。 返回值：
>>                          * [Connection](./database_sql_package_interfaces.html#interface-connection) - 获取到的连接。
>> func isClosed()
>>     
>>     public func isClosed(): Bool
>>     
>> 
>> 功能：判断连接是否关闭。 返回值：
>>                          * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 连接是否关闭。
>> func setOption(String, String)
>>     
>>     public func setOption(key: String, value: String): Unit
>>     
>> 
>> 功能：设置数据库驱动连接选项（公钥在 [SqlOption](database_sql_package_classes.html#class-sqloption) 中预定义）。 参数：
>>                          * key: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 连接选项名称。
>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 连接选项的值。
>> class SqlBigInt (deprecated)
>>     
>>     public class SqlBigInt <: SqlDbType {
>>         public init(v: Int64)
>>     }
>>     
>> 
>> 功能：大整数，对应仓颉 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型。
>>
>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>> 
>> 父类型：
>>                          * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>> prop name
>>     
>>     public prop name: String
>>     
>> 
>> 功能：类型名称，即 [SqlBigInt (deprecated)](database_sql_package_classes.html#class-sqlbigInt-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>     
>>     public mut prop value: Int64
>>     
>> 
>> 功能：该数据的值。 类型：[Int64](../../core/core_package_api/core_package_intrinsics.html#int64) init(Int64)
>>     
>>     public init(v: Int64)
>>     
>> 
>> 功能：根据传入参数 v 构造一个 [SqlBigInt (deprecated)](database_sql_package_classes.html#class-sqlbigInt-deprecated) 实例。 参数：
>>                          * v: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 传入的数据。
>> class SqlBinary (deprecated)
>>     
>>     public class SqlBinary <: SqlDbType {
>>         public init(v: Array<Byte>)
>>     }
>>     
>> 
>> 功能：定长二进制字符串，对应仓颉 [Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../core/core_package_api/core_package_types.html#type-byte)> 类型。
>>
>>> 类 class DriverManager
>>>     
>>>     public class DriverManager
>>>     
>>> 
>>> 功能：支持运行时根据驱动名获取数据库驱动实例。 static func deregister(String)
>>>     
>>>     public static func deregister(driverName: String): Unit
>>>     
>>> 
>>> 功能：按名称取消注册数据库驱动（如果存在）。本函数并发安全。 参数：
>>>                          * driverName: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 驱动名称。
>>> static func drivers()
>>>     
>>>     public static func drivers(): Array<String>
>>>     
>>> 
>>> 功能：返回已注册数据库驱动名称的列表（名称已按照字典序排序）。本方法并发安全。 返回值：
>>>                          * [Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[String](../../core/core_package_api/core_package_structs.html#struct-string)> - 数据库驱动名称的列表。
>>> static func getDriver(String)
>>>     
>>>     public static func getDriver(driverName: String): Option<Driver>
>>>     
>>> 
>>> 功能：按名称获取已注册的数据库驱动，如果不存在返回 `None`。本函数并发安全。 参数：
>>>                          * driverName: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 驱动名称。
>>> 返回值：
>>>                          * [Option](../../core/core_package_api/core_package_enums.html#enum-optiont)<[Driver](database_sql_package_interfaces.html#interface-driver)> - 若驱动存在则返回 [Option](../../core/core_package_api/core_package_enums.html#enum-optiont) 包装的驱动实例，否则返回 `None`。
>>> static func register(String, Driver)
>>>     
>>>     public static func register(driverName: String, driver: Driver): Unit
>>>     
>>> 
>>> 功能：按名称和驱动实例注册数据库驱动，名称和实例一一对应。本方法并发安全。 参数：
>>>                          * driverName: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 驱动名称。
>>>                          * driver: [Driver](database_sql_package_interfaces.html#interface-driver) - 驱动实例。
>>> 异常：
>>>                          * [SqlException](database_sql_package_exceptions.html#class-sqlexception) - 当指定的驱动名称已经存在时，抛出异常。
>>> class PooledDatasource
>>>     
>>>     public class PooledDatasource <: Datasource {
>>>         public init(datasource: Datasource)
>>>     }
>>>     
>>> 
>>> 功能：数据库连接池类，提供数据库连接池能力。 父类型：
>>>                          * [Datasource](database_sql_package_interfaces.html#interface-datasource)
>>> prop connectionTimeout
>>>     
>>>     public mut prop connectionTimeout: Duration
>>>     
>>> 
>>> 功能：从池中获取连接的超时时间。 类型：[Duration](../../core/core_package_api/core_package_structs.html#struct-duration) 异常：
>>>                          * [ArithmeticException](../../core/core_package_api/core_package_exceptions.html#class-arithmeticexception) - 当该属性被设置为 [Duration](../../core/core_package_api/core_package_structs.html#struct-duration).Max 或 [Duration](../../core/core_package_api/core_package_structs.html#struct-duration).Min 时，抛此异常。
>>>                          * [SqlException](database_sql_package_exceptions.html#class-sqlexception) - 当获取连接超时后，抛出此异常。
>>> prop idleTimeout
>>>     
>>>     public mut prop idleTimeout: Duration
>>>     
>>> 
>>> 功能：允许连接在池中闲置的最长时间，超过这个时间的空闲连接可能会被回收。 类型：[Duration](../../core/core_package_api/core_package_structs.html#struct-duration) prop keepaliveTime
>>>     
>>>     public mut prop keepaliveTime: Duration
>>>     
>>> 
>>> 功能：检查空闲连接健康状况的间隔时间，防止它被数据库或网络基础设施超时。 类型：[Duration](../../core/core_package_api/core_package_structs.html#struct-duration) prop maxIdleSize
>>>     
>>>     public mut prop maxIdleSize: Int32
>>>     
>>> 
>>> 功能：最大空闲连接数量，超过这个数量的空闲连接会被关闭，负数或0表示无限制。 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) prop maxLifeTime
>>>     
>>>     public mut prop maxLifeTime: Duration
>>>     
>>> 
>>> 功能：自连接创建以来的最大持续时间，在该持续时间之后，连接将自动关闭。 类型：[Duration](../../core/core_package_api/core_package_structs.html#struct-duration) prop maxSize
>>>     
>>>     public mut prop maxSize: Int32
>>>     
>>> 
>>> 功能：连接池最大连接数量，负数或0表示无限制。 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) init(Datasource)
>>>     
>>>     public init(datasource: Datasource)
>>>     
>>> 
>>> 功能：通过数据源 datasource 构造一个 [PooledDatasource](database_sql_package_classes.html#class-pooleddatasource) 实例，入参必须为 [Datasource](database_sql_package_interfaces.html#interface-datasource) 对象。 参数：
>>>                          * datasource: [Datasource](database_sql_package_interfaces.html#interface-datasource) - 数据源。
>>> func close()
>>>     
>>>     public func close(): Unit
>>>     
>>> 
>>> 功能：关闭连接池中的所有连接并阻止其他连接请求。调用该方法会阻塞至所有连接关闭并归还到连接池。 func connect()
>>>     
>>>     public func connect(): Connection
>>>     
>>> 
>>> 功能：获取一个连接。 返回值：
>>>                          * [Connection](./database_sql_package_interfaces.html#interface-connection) - 获取到的连接。
>>> func isClosed()
>>>     
>>>     public func isClosed(): Bool
>>>     
>>> 
>>> 功能：判断连接是否关闭。 返回值：
>>>                          * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 连接是否关闭。
>>> func setOption(String, String)
>>>     
>>>     public func setOption(key: String, value: String): Unit
>>>     
>>> 
>>> 功能：设置数据库驱动连接选项（公钥在 [SqlOption](database_sql_package_classes.html#class-sqloption) 中预定义）。 参数：
>>>                          * key: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 连接选项名称。
>>>                          * value: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 连接选项的值。
>>> class SqlBigInt (deprecated)
>>>     
>>>     public class SqlBigInt <: SqlDbType {
>>>         public init(v: Int64)
>>>     }
>>>     
>>> 
>>> 功能：大整数，对应仓颉 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlBigInt (deprecated)](database_sql_package_classes.html#class-sqlbigInt-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: Int64
>>>     
>>> 
>>> 功能：该数据的值。 类型：[Int64](../../core/core_package_api/core_package_intrinsics.html#int64) init(Int64)
>>>     
>>>     public init(v: Int64)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlBigInt (deprecated)](database_sql_package_classes.html#class-sqlbigInt-deprecated) 实例。 参数：
>>>                          * v: [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 传入的数据。
>>> class SqlBinary (deprecated)
>>>     
>>>     public class SqlBinary <: SqlDbType {
>>>         public init(v: Array<Byte>)
>>>     }
>>>     
>>> 
>>> 功能：定长二进制字符串，对应仓颉 [Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../core/core_package_api/core_package_types.html#type-byte)> 类型。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlBinary (deprecated)](database_sql_package_classes.html#class-sqlbinary-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: Array<Byte>
>>>     
>>> 
>>> 功能：该数据的值。 类型：[Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../core/core_package_api/core_package_types.html#type-byte)> init(Array<Byte>)
>>>     
>>>     public init(v: Array<Byte>)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlBinary (deprecated)](database_sql_package_classes.html#class-sqlbinary-deprecated) 实例。 参数：
>>>                          * v: [Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../core/core_package_api/core_package_types.html#type-byte)> - 传入的数据。
>>> class SqlBlob (deprecated)
>>>     
>>>     public class SqlBlob <: SqlDbType {
>>>         public init(v: InputStream)
>>>     }
>>>     
>>> 
>>> 功能：变长超大二进制字符串（BINARY LARGE OBJECT），对应仓颉 [InputStream](../../io/io_package_api/io_package_interfaces.html#interface-inputstream) 类型。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlBlob (deprecated)](database_sql_package_classes.html#class-sqlblob-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: InputStream
>>>     
>>> 
>>> 功能：该数据的值。 类型：[InputStream](../../io/io_package_api/io_package_interfaces.html#interface-inputstream) init(InputStream)
>>>     
>>>     public init(v: InputStream)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlBlob (deprecated)](database_sql_package_classes.html#class-sqlblob-deprecated) 实例。 参数：
>>>                          * v: [InputStream](../../io/io_package_api/io_package_interfaces.html#interface-inputstream) - 传入的数据。
>>> class SqlBool (deprecated)
>>>     
>>>     public class SqlBool <: SqlDbType {
>>>         public init(v: Bool)
>>>     }
>>>     
>>> 
>>> 功能：布尔类型，对应仓颉 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 类型。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlBool(deprecated)](database_sql_package_classes.html#class-sqlbool-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: Bool
>>>     
>>> 
>>> 功能：该数据的值。 类型：[Bool](../../core/core_package_api/core_package_intrinsics.html#bool) init(Bool)
>>>     
>>>     public init(v: Bool)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlBool(deprecated)](database_sql_package_classes.html#class-sqlbool-deprecated) 实例。 参数：
>>>                          * v: [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 传入的数据。
>>> class SqlByte (deprecated)
>>>     
>>>     public class SqlByte <: SqlDbType {
>>>         public init(v: Int8)
>>>     }
>>>     
>>> 
>>> 功能：字节，对应仓颉 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlByte (deprecated)](database_sql_package_classes.html#class-sqlbyte-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: Int8
>>>     
>>> 
>>> 功能：该数据的值。 类型：[Int8](../../core/core_package_api/core_package_intrinsics.html#int8) init(Int8)
>>>     
>>>     public init(v: Int8)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlByte (deprecated)](database_sql_package_classes.html#class-sqlbyte-deprecated) 实例。 参数：
>>>                          * v: [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) - 传入的数据。
>>> class SqlChar (deprecated)
>>>     
>>>     public class SqlChar <: SqlDbType {
>>>         public init(v: String)
>>>     }
>>>     
>>> 
>>> 功能：定长字符串，对应仓颉 [String](../../core/core_package_api/core_package_structs.html#struct-string) 类型。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlChar (deprecated)](database_sql_package_classes.html#class-sqlchar-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: String
>>>     
>>> 
>>> 功能：该数据的值。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) init(String)
>>>     
>>>     public init(v: String)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlChar (deprecated)](database_sql_package_classes.html#class-sqlchar-deprecated) 实例。 参数：
>>>                          * v: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 传入的数据。
>>> class SqlClob (deprecated)
>>>     
>>>     public class SqlClob <: SqlDbType {
>>>         public init(v: InputStream)
>>>     }
>>>     
>>> 
>>> 功能：变长超大字符串（RUNE LARGE OBJECT），对应仓颉 [InputStream](../../io/io_package_api/io_package_interfaces.html#interface-inputstream) 类型。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlClob](database_sql_package_classes.html#class-sqlclob-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: InputStream
>>>     
>>> 
>>> 功能：该数据的值。 类型：[InputStream](../../io/io_package_api/io_package_interfaces.html#interface-inputstream) init(InputStream)
>>>     
>>>     public init(v: InputStream)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlClob](database_sql_package_classes.html#class-sqlclob-deprecated) 实例。 参数：
>>>                          * v: [InputStream](../../io/io_package_api/io_package_interfaces.html#interface-inputstream) - 传入的数据。
>>> class SqlDate (deprecated)
>>>     
>>>     public class SqlDate <: SqlDbType {
>>>         public init(v: DateTime)
>>>     }
>>>     
>>> 
>>> 功能：日期，仅年月日有效，对应仓颉 [DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) 类型。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlDate (deprecated)](database_sql_package_classes.html#class-sqldate-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: DateTime
>>>     
>>> 
>>> 功能：该数据的值。 类型：[DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) init(DateTime)
>>>     
>>>     public init(v: DateTime)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlDate (deprecated)](database_sql_package_classes.html#class-sqldate-deprecated) 实例。 参数：
>>>                          * v: [DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) - 传入的数据。
>>> class SqlDecimal (deprecated)
>>>     
>>>     public class SqlDecimal <: SqlDbType {
>>>         public init(v: Decimal)
>>>     }
>>>     
>>> 
>>> 功能：高精度数，对应仓颉 [Decimal](../../math_numeric/math_numeric_package_api/math_numeric_package_structs.html#struct-decimal) 类型。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlDecimal (deprecated)](database_sql_package_classes.html#class-sqldecimal-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: Decimal
>>>     
>>> 
>>> 功能：该数据的值。 类型：[Decimal](../../math_numeric/math_numeric_package_api/math_numeric_package_structs.html#struct-decimal) init(Decimal)
>>>     
>>>     public init(v: Decimal)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlDecimal (deprecated)](database_sql_package_classes.html#class-sqldecimal-deprecated) 实例。 参数：
>>>                          * v: [Decimal](../../math_numeric/math_numeric_package_api/math_numeric_package_structs.html#struct-decimal) - 传入的数据。
>>> class SqlDouble (deprecated)
>>>     
>>>     public class SqlDouble <: SqlDbType {
>>>         public init(v: Float64)
>>>     }
>>>     
>>> 
>>> 功能：双精度数，对应仓颉 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlDouble (deprecated)](database_sql_package_classes.html#class-sqldouble-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: Float64
>>>     
>>> 
>>> 功能：该数据的值。 类型：[Float64](../../core/core_package_api/core_package_intrinsics.html#float64) init(Float64)
>>>     
>>>     public init(v: Float64)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlDouble (deprecated)](database_sql_package_classes.html#class-sqldouble-deprecated) 实例。 参数：
>>>                          * v: [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) - 传入的数据。
>>> class SqlInteger (deprecated)
>>>     
>>>     public class SqlInteger <: SqlDbType {
>>>         public init(v: Int32)
>>>     }
>>>     
>>> 
>>> 功能：中整数，对应仓颉 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlInteger (deprecated)](database_sql_package_classes.html#class-sqlinteger-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: Int32
>>>     
>>> 
>>> 功能：该数据的值。 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) init(Int32)
>>>     
>>>     public init(v: Int32)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlInteger (deprecated)](database_sql_package_classes.html#class-sqlinteger-deprecated) 实例。 参数：
>>>                          * v: [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) - 传入的数据。
>>> class SqlInterval (deprecated)
>>>     
>>>     public class SqlInterval <: SqlDbType {
>>>         public init(v: Duration)
>>>     }
>>>     
>>> 
>>> 功能：时间间隔，对应仓颉 [Duration](../../core/core_package_api/core_package_structs.html#struct-duration) 类型。
>>>
>>>> **注意：** **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlBinary (deprecated)](database_sql_package_classes.html#class-sqlbinary-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: Array<Byte>
>>>     
>>> 
>>> 功能：该数据的值。 类型：[Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../core/core_package_api/core_package_types.html#type-byte)> init(Array<Byte>)
>>>     
>>>     public init(v: Array<Byte>)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlBinary (deprecated)](database_sql_package_classes.html#class-sqlbinary-deprecated) 实例。 参数：
>>>                          * v: [Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../core/core_package_api/core_package_types.html#type-byte)> - 传入的数据。
>>> class SqlBlob (deprecated)
>>>     
>>>     public class SqlBlob <: SqlDbType {
>>>         public init(v: InputStream)
>>>     }
>>>     
>>> 
>>> 功能：变长超大二进制字符串（BINARY LARGE OBJECT），对应仓颉 [InputStream](../../io/io_package_api/io_package_interfaces.html#interface-inputstream) 类型。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlBlob (deprecated)](database_sql_package_classes.html#class-sqlblob-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: InputStream
>>>     
>>> 
>>> 功能：该数据的值。 类型：[InputStream](../../io/io_package_api/io_package_interfaces.html#interface-inputstream) init(InputStream)
>>>     
>>>     public init(v: InputStream)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlBlob (deprecated)](database_sql_package_classes.html#class-sqlblob-deprecated) 实例。 参数：
>>>                          * v: [InputStream](../../io/io_package_api/io_package_interfaces.html#interface-inputstream) - 传入的数据。
>>> class SqlBool (deprecated)
>>>     
>>>     public class SqlBool <: SqlDbType {
>>>         public init(v: Bool)
>>>     }
>>>     
>>> 
>>> 功能：布尔类型，对应仓颉 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 类型。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlBool(deprecated)](database_sql_package_classes.html#class-sqlbool-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: Bool
>>>     
>>> 
>>> 功能：该数据的值。 类型：[Bool](../../core/core_package_api/core_package_intrinsics.html#bool) init(Bool)
>>>     
>>>     public init(v: Bool)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlBool(deprecated)](database_sql_package_classes.html#class-sqlbool-deprecated) 实例。 参数：
>>>                          * v: [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 传入的数据。
>>> class SqlByte (deprecated)
>>>     
>>>     public class SqlByte <: SqlDbType {
>>>         public init(v: Int8)
>>>     }
>>>     
>>> 
>>> 功能：字节，对应仓颉 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlByte (deprecated)](database_sql_package_classes.html#class-sqlbyte-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: Int8
>>>     
>>> 
>>> 功能：该数据的值。 类型：[Int8](../../core/core_package_api/core_package_intrinsics.html#int8) init(Int8)
>>>     
>>>     public init(v: Int8)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlByte (deprecated)](database_sql_package_classes.html#class-sqlbyte-deprecated) 实例。 参数：
>>>                          * v: [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) - 传入的数据。
>>> class SqlChar (deprecated)
>>>     
>>>     public class SqlChar <: SqlDbType {
>>>         public init(v: String)
>>>     }
>>>     
>>> 
>>> 功能：定长字符串，对应仓颉 [String](../../core/core_package_api/core_package_structs.html#struct-string) 类型。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlChar (deprecated)](database_sql_package_classes.html#class-sqlchar-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: String
>>>     
>>> 
>>> 功能：该数据的值。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) init(String)
>>>     
>>>     public init(v: String)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlChar (deprecated)](database_sql_package_classes.html#class-sqlchar-deprecated) 实例。 参数：
>>>                          * v: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 传入的数据。
>>> class SqlClob (deprecated)
>>>     
>>>     public class SqlClob <: SqlDbType {
>>>         public init(v: InputStream)
>>>     }
>>>     
>>> 
>>> 功能：变长超大字符串（RUNE LARGE OBJECT），对应仓颉 [InputStream](../../io/io_package_api/io_package_interfaces.html#interface-inputstream) 类型。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlClob](database_sql_package_classes.html#class-sqlclob-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: InputStream
>>>     
>>> 
>>> 功能：该数据的值。 类型：[InputStream](../../io/io_package_api/io_package_interfaces.html#interface-inputstream) init(InputStream)
>>>     
>>>     public init(v: InputStream)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlClob](database_sql_package_classes.html#class-sqlclob-deprecated) 实例。 参数：
>>>                          * v: [InputStream](../../io/io_package_api/io_package_interfaces.html#interface-inputstream) - 传入的数据。
>>> class SqlDate (deprecated)
>>>     
>>>     public class SqlDate <: SqlDbType {
>>>         public init(v: DateTime)
>>>     }
>>>     
>>> 
>>> 功能：日期，仅年月日有效，对应仓颉 [DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) 类型。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlDate (deprecated)](database_sql_package_classes.html#class-sqldate-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: DateTime
>>>     
>>> 
>>> 功能：该数据的值。 类型：[DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) init(DateTime)
>>>     
>>>     public init(v: DateTime)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlDate (deprecated)](database_sql_package_classes.html#class-sqldate-deprecated) 实例。 参数：
>>>                          * v: [DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) - 传入的数据。
>>> class SqlDecimal (deprecated)
>>>     
>>>     public class SqlDecimal <: SqlDbType {
>>>         public init(v: Decimal)
>>>     }
>>>     
>>> 
>>> 功能：高精度数，对应仓颉 [Decimal](../../math_numeric/math_numeric_package_api/math_numeric_package_structs.html#struct-decimal) 类型。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlDecimal (deprecated)](database_sql_package_classes.html#class-sqldecimal-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: Decimal
>>>     
>>> 
>>> 功能：该数据的值。 类型：[Decimal](../../math_numeric/math_numeric_package_api/math_numeric_package_structs.html#struct-decimal) init(Decimal)
>>>     
>>>     public init(v: Decimal)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlDecimal (deprecated)](database_sql_package_classes.html#class-sqldecimal-deprecated) 实例。 参数：
>>>                          * v: [Decimal](../../math_numeric/math_numeric_package_api/math_numeric_package_structs.html#struct-decimal) - 传入的数据。
>>> class SqlDouble (deprecated)
>>>     
>>>     public class SqlDouble <: SqlDbType {
>>>         public init(v: Float64)
>>>     }
>>>     
>>> 
>>> 功能：双精度数，对应仓颉 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlDouble (deprecated)](database_sql_package_classes.html#class-sqldouble-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: Float64
>>>     
>>> 
>>> 功能：该数据的值。 类型：[Float64](../../core/core_package_api/core_package_intrinsics.html#float64) init(Float64)
>>>     
>>>     public init(v: Float64)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlDouble (deprecated)](database_sql_package_classes.html#class-sqldouble-deprecated) 实例。 参数：
>>>                          * v: [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) - 传入的数据。
>>> class SqlInteger (deprecated)
>>>     
>>>     public class SqlInteger <: SqlDbType {
>>>         public init(v: Int32)
>>>     }
>>>     
>>> 
>>> 功能：中整数，对应仓颉 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlInteger (deprecated)](database_sql_package_classes.html#class-sqlinteger-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: Int32
>>>     
>>> 
>>> 功能：该数据的值。 类型：[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) init(Int32)
>>>     
>>>     public init(v: Int32)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlInteger (deprecated)](database_sql_package_classes.html#class-sqlinteger-deprecated) 实例。 参数：
>>>                          * v: [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) - 传入的数据。
>>> class SqlInterval (deprecated)
>>>     
>>>     public class SqlInterval <: SqlDbType {
>>>         public init(v: Duration)
>>>     }
>>>     
>>> 
>>> 功能：时间间隔，对应仓颉 [Duration](../../core/core_package_api/core_package_structs.html#struct-duration) 类型。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlInterval (deprecated)](database_sql_package_classes.html#class-sqlinterval-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: Duration
>>>     
>>> 
>>> 功能：该数据的值。 类型：[Duration](../../core/core_package_api/core_package_structs.html#struct-duration) init(Duration)
>>>     
>>>     public init(v: Duration)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlInterval (deprecated)](database_sql_package_classes.html#class-sqlinterval-deprecated) 实例。 参数：
>>>                          * v: [Duration](../../core/core_package_api/core_package_structs.html#struct-duration) - 传入的数据。
>>> class SqlNullableBigInt (deprecated)
>>>     
>>>     public class SqlNullableBigInt <: SqlNullableDbType {
>>>         public init(v: ?Int64)
>>>     }
>>>     
>>> 
>>> 功能：大整数，对应仓颉 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型，可为数据库 `Null` 值。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlNullableBigInt (deprecated)](database_sql_package_classes.html#class-sqlnullablebigInt-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: ?Int64
>>>     
>>> 
>>> 功能：该数据的值。 类型：?[Int64](../../core/core_package_api/core_package_intrinsics.html#int64) init(?Int64)
>>>     
>>>     public init(v: ?Int64)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlNullableBigInt (deprecated)](database_sql_package_classes.html#class-sqlnullablebigInt-deprecated) 实例。 参数：
>>>                          * v: ?[Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 传入的数据。
>>> class SqlNullableBinary (deprecated)
>>>     
>>>     public class SqlNullableBinary <: SqlNullableDbType {
>>>         public init(v: ?Array<Byte>)
>>>     }
>>>     
>>> 
>>> 功能：定长二进制字符串，对应仓颉 [Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../core/core_package_api/core_package_types.html#type-byte)> 类型，可为数据库 `Null` 值。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlNullableBinary (deprecated)](database_sql_package_classes.html#class-sqlnullablebinary-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: ?Array<Byte>
>>>     
>>> 
>>> 功能：该数据的值。 类型：?[Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../core/core_package_api/core_package_types.html#type-byte)> init(?Array<Byte>)
>>>     
>>>     public init(v: ?Array<Byte>)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlNullableBinary (deprecated)](database_sql_package_classes.html#class-sqlnullablebinary-deprecated) 实例。 参数：
>>>                          * v: ?[Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../core/core_package_api/core_package_types.html#type-byte)> - 传入的数据。
>>> class SqlNullableBlob (deprecated)
>>>     
>>>     public class SqlNullableBlob <: SqlNullableDbType {
>>>         public init(v: ?InputStream)
>>>     }
>>>     
>>> 
>>> 功能：变长超大二进制字符串（BINARY LARGE OBJECT），对应仓颉 [InputStream](../../io/io_package_api/io_package_interfaces.html#interface-inputstream) 类型，可为数据库 `Null` 值。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlNullableBlob (deprecated)](database_sql_package_classes.html#class-sqlnullableblob-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: ?InputStream
>>>     
>>> 
>>> 功能：该数据的值。 类型：?[InputStream](../../io/io_package_api/io_package_interfaces.html#interface-inputstream) init(?InputStream)
>>>     
>>>     public init(v: ?InputStream)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlNullableBlob (deprecated)](database_sql_package_classes.html#class-sqlnullableblob-deprecated) 实例。 参数：
>>>                          * v: ?[InputStream](../../io/io_package_api/io_package_interfaces.html#interface-inputstream) - 传入的数据。
>>> class SqlNullableBool (deprecated)
>>>     
>>>     public class SqlNullableBool <: SqlNullableDbType {
>>>         public init(v: ?Bool)
>>>     }
>>>     
>>> 
>>> 功能：布尔类型，对应仓颉 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 类型，可为数据库 `Null` 值。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlNullableBool (deprecated)](database_sql_package_classes.html#class-sqlnullablebool-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: ?Bool
>>>     
>>> 
>>> 功能：该数据的值。 类型：?[Bool](../../core/core_package_api/core_package_intrinsics.html#bool) init(?Bool)
>>>     
>>>     public init(v: ?Bool)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlNullableBool (deprecated)](database_sql_package_classes.html#class-sqlnullablebool-deprecated) 实例。 参数：
>>>                          * v: ?[Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 传入的数据。
>>> class SqlNullableByte (deprecated)
>>>     
>>>     public class SqlNullableByte <: SqlNullableDbType {
>>>         public init(v: ?Int8)
>>>     }
>>>     
>>> 
>>> 功能：字节，对应仓颉 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型，可为数据库 `Null` 值。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlNullableByte (deprecated)](database_sql_package_classes.html#class-sqlnullablebyte-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: ?Int8
>>>     
>>> 
>>> 功能：该数据的值。 类型：?[Int8](../../core/core_package_api/core_package_intrinsics.html#int8) init(?Int8)
>>>     
>>>     public init(v: ?Int8)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlNullableByte (deprecated)](database_sql_package_classes.html#class-sqlnullablebyte-deprecated) 实例。 参数：
>>>                          * v: ?[Int8](../../core/core_package_api/core_package_intrinsics.html#int8) - 传入的数据。
>>> class SqlNullableChar (deprecated)
>>>     
>>>     public class SqlNullableChar <: SqlNullableDbType {
>>>         public init(v: ?String)
>>>     }
>>>     
>>> 
>>> 功能：定长字符串，对应仓颉 [String](../../core/core_package_api/core_package_structs.html#struct-string) 类型，可为数据库 `Null` 值。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlNullableChar (deprecated)](database_sql_package_classes.html#class-sqlnullablechar-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: ?String
>>>     
>>> 
>>> 功能：该数据的值。 类型：?[String](../../core/core_package_api/core_package_structs.html#struct-string) init(?String)
>>>     
>>>     public init(v: ?String)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlNullableChar (deprecated)](database_sql_package_classes.html#class-sqlnullablechar-deprecated) 实例。 参数：
>>>                          * v: ?[String](../../core/core_package_api/core_package_structs.html#struct-string) - 传入的数据。
>>> class SqlNullableClob (deprecated)
>>>     
>>>     public class SqlNullableClob <: SqlNullableDbType {
>>>         public init(v: ?InputStream)
>>>     }
>>>     
>>> 
>>> 功能：变长超大字符串（RUNE LARGE OBJECT），对应仓颉 [InputStream](../../io/io_package_api/io_package_interfaces.html#interface-inputstream) 类型，可为数据库 `Null` 值。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlNullableClob (deprecated)](database_sql_package_classes.html#class-sqlnullableclob-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: ?InputStream
>>>     
>>> 
>>> 功能：该数据的值。 类型：?[InputStream](../../io/io_package_api/io_package_interfaces.html#interface-inputstream) init(?InputStream)
>>>     
>>>     public init(v: ?InputStream)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlNullableClob (deprecated)](database_sql_package_classes.html#class-sqlnullableclob-deprecated) 实例。 参数：
>>>                          * v: ?[InputStream](../../io/io_package_api/io_package_interfaces.html#interface-inputstream) - 传入的数据。
>>> class SqlNullableDate (deprecated)
>>>     
>>>     public class SqlNullableDate <: SqlNullableDbType {
>>>         public init(v: ?DateTime)
>>>     }
>>>     
>>> 
>>> 功能：日期，仅年月日有效，对应仓颉 [DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) 类型，可为数据库 `Null` 值。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlNullableDate (deprecated)](database_sql_package_classes.html#class-sqlnullabledate-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: ?DateTime
>>>     
>>> 
>>> 功能：该数据的值。 类型：?[DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) init(?DateTime)
>>>     
>>>     public init(v: ?DateTime)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlNullableDate (deprecated)](database_sql_package_classes.html#class-sqlnullabledate-deprecated) 实例。 参数：
>>>                          * v: ?[DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) - 传入的数据。
>>> class SqlNullableDecimal (deprecated)
>>>     
>>>     public class SqlNullableDecimal <: SqlNullableDbType {
>>>         public init(v: ?Decimal)
>>>     }
>>>     
>>> 
>>> 功能：高精度数，对应仓颉 [Decimal](../../math_numeric/math_numeric_package_api/math_numeric_package_structs.html#struct-decimal) 类型，可为数据库 `Null` 值。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlNullableDecimal (deprecated)](database_sql_package_classes.html#class-sqlnullabledecimal-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: ?Decimal
>>>     
>>> 
>>> 功能：该数据的值。 类型：?[Decimal](../../math_numeric/math_numeric_package_api/math_numeric_package_structs.html#struct-decimal) init(?Decimal)
>>>     
>>>     public init(v: ?Decimal)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlNullableDecimal (deprecated)](database_sql_package_classes.html#class-sqlnullabledecimal-deprecated) 实例。 参数：
>>>                          * v: ?[Decimal](../../math_numeric/math_numeric_package_api/math_numeric_package_structs.html#struct-decimal) - 传入的数据。
>>> class SqlNullableDouble (deprecated)
>>>     
>>>     public class SqlNullableDouble <: SqlNullableDbType {
>>>         public init(v: ?Float64)
>>>     }
>>>     
>>> 
>>> 功能：双精度数，对应仓颉 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型，可为数据库 `Null` 值。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlNullableDouble (deprecated)](database_sql_package_classes.html#class-sqlnullabledouble-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: ?Float64
>>>     
>>> 
>>> 功能：该数据的值。 类型：?[Float64](../../core/core_package_api/core_package_intrinsics.html#float64) init(?Float64)
>>>     
>>>     public init(v: ?Float64)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlNullableDouble (deprecated)](database_sql_package_classes.html#class-sqlnullabledouble-deprecated) 实例。 参数：
>>>                          * v: ?[Float64](../../core/core_package_api/core_package_intrinsics.html#float64) - 传入的数据。
>>> class SqlNullableInteger (deprecated)
>>>     
>>>     public class SqlNullableInteger <: SqlNullableDbType {
>>>         public init(v: ?Int32)
>>>     }
>>>     
>>> 
>>> 功能：中整数，对应仓颉 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型，可为数据库 `Null` 值。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlNullableInteger (deprecated)](database_sql_package_classes.html#class-sqlnullableinteger-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: ?Int32
>>>     
>>> 
>>> 功能：该数据的值。 类型：?[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) init(?Int32)
>>>     
>>>     public init(v: ?Int32)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlNullableInteger (deprecated)](database_sql_package_classes.html#class-sqlnullableinteger-deprecated) 实例。 参数：
>>>                          * v: ?[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) - 传入的数据。
>>> class SqlNullableInterval (deprecated)
>>>     
>>>     public class SqlNullableInterval <: SqlNullableDbType {
>>>         public init(v: ?Duration)
>>>     }
>>>     
>>> 
>>> 功能：时间间隔，对应仓颉 [Duration](../../core/core_package_api/core_package_structs.html#struct-duration) 类型，可为数据库 `Null` 值。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlNullableInterval (deprecated)](database_sql_package_classes.html#class-sqlnullableinterval-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: ?Duration
>>>     
>>> 
>>> 功能：该数据的值。 类型：?[Duration](../../core/core_package_api/core_package_structs.html#struct-duration) init(?Duration)
>>>     
>>>     public init(v: ?Duration)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlNullableInterval (deprecated)](database_sql_package_classes.html#class-sqlnullableinterval-deprecated) 实例。 参数：
>>>                          * v: ?[Duration](../../core/core_package_api/core_package_structs.html#struct-duration) - 传入的数据。
>>> class SqlNullableReal (deprecated)
>>>     
>>>     public class SqlNullableReal <: SqlNullableDbType {
>>>         public init(v: ?Float32)
>>>     }
>>>     
>>> 
>>> 功能：浮点数，对应仓颉 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型，可为数据库 `Null` 值。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlNullableReal (deprecated)](database_sql_package_classes.html#class-sqlnullablereal-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: ?Float32
>>>     
>>> 
>>> 功能：该数据的值。 类型：?[Float32](../../core/core_package_api/core_package_intrinsics.html#float32) init(?Float32)
>>>     
>>>     public init(v: ?Float32)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlNullableReal (deprecated)](database_sql_package_classes.html#class-sqlnullablereal-deprecated) 实例。 参数：
>>>                          * v: ?[Float32](../../core/core_package_api/core_package_intrinsics.html#float32) - 传入的数据。
>>> class SqlNullableSmallInt (deprecated)
>>>     
>>>     public class SqlNullableSmallInt <: SqlNullableDbType {
>>>         public init(v: ?Int16)
>>>     }
>>>     
>>> 
>>> 功能：小整数，对应仓颉 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型，可为数据库 `Null` 值。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlNullableSmallInt (deprecated)](database_sql_package_classes.html#class-sqlnullablesmallint-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: ?Int16
>>>     
>>> 
>>> 功能：该数据的值。 类型：?[Int16](../../core/core_package_api/core_package_intrinsics.html#int16) init(?Int16)
>>>     
>>>     public init(v: ?Int16)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlNullableSmallInt (deprecated)](database_sql_package_classes.html#class-sqlnullablesmallint-deprecated) 实例。 参数：
>>>                          * v: ?[Int16](../../core/core_package_api/core_package_intrinsics.html#int16) - 传入的数据。
>>> class SqlNullableTime (deprecated)
>>>     
>>>     public class SqlNullableTime <: SqlNullableDbType {
>>>         public init(v: ?DateTime)
>>>     }
>>>     
>>> 
>>> 功能：时间，仅时分秒毫秒有效，对应仓颉 [DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) 类型，可为数据库 `Null` 值。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlNullableTime (deprecated)](database_sql_package_classes.html#class-sqlnullabletime-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: ?DateTime
>>>     
>>> 
>>> 功能：该数据的值。 类型：?[DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) init(?DateTime)
>>>     
>>>     public init(v: ?DateTime)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlNullableTime (deprecated)](database_sql_package_classes.html#class-sqlnullabletime-deprecated) 实例。 参数：
>>>                          * v: ?[DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) - 传入的数据。
>>> class SqlNullableTimeTz (deprecated)
>>>     
>>>     public class SqlNullableTimeTz <: SqlNullableDbType {
>>>         public init(v: ?DateTime)
>>>     }
>>>     
>>> 
>>> 功能：带时区的时间，仅时分秒毫秒时区有效，对应仓颉 [DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) 类型，可为数据库 `Null` 值。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlNullableTimeTz (deprecated)](database_sql_package_classes.html#class-sqlnullabletimeTz-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: ?DateTime
>>>     
>>> 
>>> 功能：该数据的值。 类型：?[DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) init(?DateTime)
>>>     
>>>     public init(v: ?DateTime)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlNullableTimeTz (deprecated)](database_sql_package_classes.html#class-sqlnullabletimeTz-deprecated) 实例。 参数：
>>>                          * v: ?[DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) - 传入的数据。
>>> class SqlNullableTimestamp (deprecated)
>>>     
>>>     public class SqlNullableTimestamp <: SqlNullableDbType {
>>>         public init(v: ?DateTime)
>>>     }
>>>     
>>> 
>>> 功能：时间戳，对应仓颉 [DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) 类型，可为数据库 `Null` 值。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlNullableTimestamp (deprecated)](database_sql_package_classes.html#class-sqlnullabletimestamp-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: ?DateTime
>>>     
>>> 
>>> 功能：该数据的值。 类型：?[DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) init(?DateTime)
>>>     
>>>     public init(v: ?DateTime)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlNullableTimestamp (deprecated)](database_sql_package_classes.html#class-sqlnullabletimestamp-deprecated) 实例。 参数：
>>>                          * v: ?[DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) - 传入的数据。
>>> class SqlNullableVarBinary (deprecated)
>>>     
>>>     public class SqlNullableVarBinary <: SqlNullableDbType {
>>>         public init(v: ?Array<Byte>)
>>>     }
>>>     
>>> 
>>> 功能：变长二进制字符串，对应仓颉 [Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../core/core_package_api/core_package_types.html#type-byte)> 类型，可为数据库 `Null` 值。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlNullableVarBinary (deprecated)](database_sql_package_classes.html#class-sqlnullablevarbinary-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: ?Array<Byte>
>>>     
>>> 
>>> 功能：该数据的值。 类型：?[Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../core/core_package_api/core_package_types.html#type-byte)> init(?Array<Byte>)
>>>     
>>>     public init(v: ?Array<Byte>)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlNullableVarBinary (deprecated)](database_sql_package_classes.html#class-sqlnullablevarbinary-deprecated) 实例。 参数：
>>>                          * v: ?[Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../core/core_package_api/core_package_types.html#type-byte)> - 传入的数据。
>>> class SqlNullableVarchar (deprecated)
>>>     
>>>     public class SqlNullableVarchar <: SqlNullableDbType {
>>>         public init(v: ?String)
>>>     }
>>>     
>>> 
>>> 功能：变长字符串，对应仓颉 [String](../../core/core_package_api/core_package_structs.html#struct-string) 类型，可为数据库 `Null` 值。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>>> prop name
>>>     
>>>     public prop name: String
>>>     
>>> 
>>> 功能：类型名称，即 [SqlNullableVarchar (deprecated)](database_sql_package_classes.html#class-sqlnullablevarchar-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>>     
>>>     public mut prop value: ?String
>>>     
>>> 
>>> 功能：该数据的值。 类型：?[String](../../core/core_package_api/core_package_structs.html#struct-string) init(?String)
>>>     
>>>     public init(v: ?String)
>>>     
>>> 
>>> 功能：根据传入参数 v 构造一个 [SqlNullableVarchar (deprecated)](database_sql_package_classes.html#class-sqlnullablevarchar-deprecated) 实例。 参数：
>>>                          * v: ?[String](../../core/core_package_api/core_package_structs.html#struct-string) - 传入的数据。
>>> class SqlOption
>>>     
>>>     public class SqlOption {
>>>         public static const URL = "url"
>>>         public static const Host = "host"
>>>         public static const Username = "username"
>>>         public static const Password = "password"
>>>         public static const Driver = "driver"
>>>         public static const Database = "database"
>>>         public static const Encoding = "encoding"
>>>         public static const ConnectionTimeout = "connection_timeout"
>>>         public static const UpdateTimeout = "update_timeout"
>>>         public static const QueryTimeout = "query_timeout"
>>>         public static const FetchRows = "fetch_rows"
>>>         public static const SSLMode = "ssl.mode"
>>>         public static const SSLModePreferred = "ssl.mode.preferred"
>>>         public static const SSLModeDisabled = "ssl.mode.disabled"
>>>         public static const SSLModeRequired = "ssl.mode.required"
>>>         public static const SSLModeVerifyCA = "ssl.mode.verify_ca"
>>>         public static const SSLModeVerifyFull = "ssl.mode.verify_full"
>>>         public static const SSLCA = "ssl.ca"
>>>         public static const SSLCert = "ssl.cert"
>>>         public static const SSLKey = "ssl.key"
>>>         public static const SSLKeyPassword = "ssl.key.password"
>>>         public static const SSLSni = "ssl.sni"
>>>         public static const Tls12Ciphersuites = "tls1.2.ciphersuites"
>>>         public static const Tls13Ciphersuites = "tls1.3.ciphersuites"
>>>         public static const TlsVersion = "tls.version"
>>>     }
>>>     
>>> 
>>> 功能：预定义的 sql 选项名称和值。如果需要扩展，请不要与这些名称和值冲突。 static const ConnectionTimeout
>>>     
>>>     public static const ConnectionTimeout = "connection_timeout"
>>>     
>>> 
>>> 功能：获取 connect 操作的超时时间，单位 ms。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) static const Database
>>>     
>>>     public static const Database = "database"
>>>     
>>> 
>>> 功能：获取数据库名称。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) static const Driver
>>>     
>>>     public static const Driver = "driver"
>>>     
>>> 
>>> 功能：获取数据库驱动名称，比如 postgres，opengauss。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) static const Encoding
>>>     
>>>     public static const Encoding = "encoding"
>>>     
>>> 
>>> 功能：获取数据库字符集编码类型。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) static const FetchRows
>>>     
>>>     public static const FetchRows = "fetch_rows"
>>>     
>>> 
>>> 功能：获取每次获取额外数据时从数据库中提取的行数。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) static const Host
>>>     
>>>     public static const Host = "host"
>>>     
>>> 
>>> 功能：获取数据库服务器主机名或者 [IP]() 地址。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) static const Password
>>>     
>>>     public static const Password = "password"
>>>     
>>> 
>>> 功能：获取连接数据库的密码。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) static const QueryTimeout
>>>     
>>>     public static const QueryTimeout = "query_timeout"
>>>     
>>> 
>>> 功能：获取 query 操作的超时时间，单位 ms。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) static const SSLCA
>>>     
>>>     public static const SSLCA = "ssl.ca"
>>>     
>>> 
>>> 功能：证书颁发机构（ CA ）证书文件的路径名。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) static const SSLCert
>>>     
>>>     public static const SSLCert = "ssl.cert"
>>>     
>>> 
>>> 功能：客户端 SSL 公钥证书文件的路径名。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) static const SSLKey
>>>     
>>>     public static const SSLKey = "ssl.key"
>>>     
>>> 
>>> 功能：客户端 SSL 私钥文件的路径名。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) static const SSLKeyPassword
>>>     
>>>     public static const SSLKeyPassword = "ssl.key.password"
>>>     
>>> 
>>> 功能：客户端 SSL 私钥文件的密码。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) static const SSLMode
>>>     
>>>     public static const SSLMode = "ssl.mode"
>>>     
>>> 
>>> 功能：获取 SSLMode 传输层加密模式。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) static const SSLModeDisabled
>>>     
>>>     public static const SSLModeDisabled = "ssl.mode.disabled"
>>>     
>>> 
>>> 功能：建立未加密的连接。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) static const SSLModePreferred
>>>     
>>>     public static const SSLModePreferred = "ssl.mode.preferred"
>>>     
>>> 
>>> 功能：如果服务器支持加密连接，则建立加密连接; 如果无法建立加密连接，则回退到未加密连接，这是 SSLMode 的默认值。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) static const SSLModeRequired
>>>     
>>>     public static const SSLModeRequired = "ssl.mode.required"
>>>     
>>> 
>>> 功能：如果服务器支持加密连接，则建立加密连接。如果无法建立加密连接，则连接失败。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) static const SSLModeVerifyCA
>>>     
>>>     public static const SSLModeVerifyCA = "ssl.mode.verify_ca"
>>>     
>>> 
>>> 功能：SSLModeVerifyCA 和 SSLModeRequired 类似，但是增加了校验服务器证书，如果校验失败，则连接失败。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) static const SSLModeVerifyFull
>>>     
>>>     public static const SSLModeVerifyFull = "ssl.mode.verify_full"
>>>     
>>> 
>>> 功能：SSLModeVerifyFull 和 SSLModeVerifyCA 类似，但通过验证服务器证书中的标识与客户端连接的主机名是否匹配，来执行主机名身份验证。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) static const SSLSni
>>>     
>>>     public static const SSLSni = "ssl.sni"
>>>     
>>> 
>>> 功能：客户端通过该标识在握手过程开始时试图连接到哪个主机名。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) static const Tls12Ciphersuites
>>>     
>>>     public static const Tls12Ciphersuites = "tls1.2.ciphersuites"
>>>     
>>> 
>>> 功能：此选项指定客户端允许使用 TLSv1.2 及以下的加密连接使用哪些密码套件。 值为冒号分隔的字符串，比如 "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_[SHA256]():TLS_DHE_RSA_WITH_AES_128_CBC_SHA"。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) static const Tls13Ciphersuites
>>>     
>>>     public static const Tls13Ciphersuites = "tls1.3.ciphersuites"
>>>     
>>> 
>>> 功能：此选项指定客户端允许使用 TLSv1.3 的加密连接使用哪些密码套件。 值为冒号分隔的字符串，比如 "TLS_AES_256_GCM_[SHA384]():TLS_CHACHA20_POLY1305_[SHA256]()"。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) static const TlsVersion
>>>     
>>>     public static const TlsVersion = "tls.version"
>>>     
>>> 
>>> 功能：支持的 TLS 版本号，值为逗号分隔的字符串，比如 "TLSv1.2,TLSv1.3"。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) static const URL
>>>     
>>>     public static const URL = "url"
>>>     
>>> 
>>> 功能：获取数据库连接 [URL]() 字符串。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) static const UpdateTimeout
>>>     
>>>     public static const UpdateTimeout = "update_timeout"
>>>     
>>> 
>>> 功能：获取 update 操作的超时时间，单位 ms。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) static const Username
>>>     
>>>     public static const Username = "username"
>>>     
>>> 
>>> 功能：获取连接数据库的用户名。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) class SqlReal (deprecated)
>>>     
>>>     public class SqlReal <: SqlDbType {
>>>         public init(v: Float32)
>>>     }
>>>     
>>> 
>>> 功能：浮点数，对应仓颉 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型。
>>>
>>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>> 
>>> 父类型：
>>>                          * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>>> prop name
>>>     
>>>     未来版本即将废弃不再使用，使用仓颉原生类型替代。
>>>     
>>     
>>     
>>     父类型：
>>     
>>     
>>                                                       * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>>     
>>     
>>     prop name
>>     
>>     
>>     public prop name: String
>>     
>> 
>> 功能：类型名称，即 [SqlInterval (deprecated)](database_sql_package_classes.html#class-sqlinterval-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>     
>>     public mut prop value: Duration
>>     
>> 
>> 功能：该数据的值。 类型：[Duration](../../core/core_package_api/core_package_structs.html#struct-duration) init(Duration)
>>     
>>     public init(v: Duration)
>>     
>> 
>> 功能：根据传入参数 v 构造一个 [SqlInterval (deprecated)](database_sql_package_classes.html#class-sqlinterval-deprecated) 实例。 参数：
>>                          * v: [Duration](../../core/core_package_api/core_package_structs.html#struct-duration) - 传入的数据。
>> class SqlNullableBigInt (deprecated)
>>     
>>     public class SqlNullableBigInt <: SqlNullableDbType {
>>         public init(v: ?Int64)
>>     }
>>     
>> 
>> 功能：大整数，对应仓颉 [Int64](../../core/core_package_api/core_package_intrinsics.html#int64) 类型，可为数据库 `Null` 值。
>>
>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>> 
>> 父类型：
>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>> prop name
>>     
>>     public prop name: String
>>     
>> 
>> 功能：类型名称，即 [SqlNullableBigInt (deprecated)](database_sql_package_classes.html#class-sqlnullablebigInt-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>     
>>     public mut prop value: ?Int64
>>     
>> 
>> 功能：该数据的值。 类型：?[Int64](../../core/core_package_api/core_package_intrinsics.html#int64) init(?Int64)
>>     
>>     public init(v: ?Int64)
>>     
>> 
>> 功能：根据传入参数 v 构造一个 [SqlNullableBigInt (deprecated)](database_sql_package_classes.html#class-sqlnullablebigInt-deprecated) 实例。 参数：
>>                          * v: ?[Int64](../../core/core_package_api/core_package_intrinsics.html#int64) - 传入的数据。
>> class SqlNullableBinary (deprecated)
>>     
>>     public class SqlNullableBinary <: SqlNullableDbType {
>>         public init(v: ?Array<Byte>)
>>     }
>>     
>> 
>> 功能：定长二进制字符串，对应仓颉 [Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../core/core_package_api/core_package_types.html#type-byte)> 类型，可为数据库 `Null` 值。
>>
>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>> 
>> 父类型：
>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>> prop name
>>     
>>     public prop name: String
>>     
>> 
>> 功能：类型名称，即 [SqlNullableBinary (deprecated)](database_sql_package_classes.html#class-sqlnullablebinary-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>     
>>     public mut prop value: ?Array<Byte>
>>     
>> 
>> 功能：该数据的值。 类型：?[Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../core/core_package_api/core_package_types.html#type-byte)> init(?Array<Byte>)
>>     
>>     public init(v: ?Array<Byte>)
>>     
>> 
>> 功能：根据传入参数 v 构造一个 [SqlNullableBinary (deprecated)](database_sql_package_classes.html#class-sqlnullablebinary-deprecated) 实例。 参数：
>>                          * v: ?[Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../core/core_package_api/core_package_types.html#type-byte)> - 传入的数据。
>> class SqlNullableBlob (deprecated)
>>     
>>     public class SqlNullableBlob <: SqlNullableDbType {
>>         public init(v: ?InputStream)
>>     }
>>     
>> 
>> 功能：变长超大二进制字符串（BINARY LARGE OBJECT），对应仓颉 [InputStream](../../io/io_package_api/io_package_interfaces.html#interface-inputstream) 类型，可为数据库 `Null` 值。
>>
>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>> 
>> 父类型：
>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>> prop name
>>     
>>     public prop name: String
>>     
>> 
>> 功能：类型名称，即 [SqlNullableBlob (deprecated)](database_sql_package_classes.html#class-sqlnullableblob-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>     
>>     public mut prop value: ?InputStream
>>     
>> 
>> 功能：该数据的值。 类型：?[InputStream](../../io/io_package_api/io_package_interfaces.html#interface-inputstream) init(?InputStream)
>>     
>>     public init(v: ?InputStream)
>>     
>> 
>> 功能：根据传入参数 v 构造一个 [SqlNullableBlob (deprecated)](database_sql_package_classes.html#class-sqlnullableblob-deprecated) 实例。 参数：
>>                          * v: ?[InputStream](../../io/io_package_api/io_package_interfaces.html#interface-inputstream) - 传入的数据。
>> class SqlNullableBool (deprecated)
>>     
>>     public class SqlNullableBool <: SqlNullableDbType {
>>         public init(v: ?Bool)
>>     }
>>     
>> 
>> 功能：布尔类型，对应仓颉 [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) 类型，可为数据库 `Null` 值。
>>
>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>> 
>> 父类型：
>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>> prop name
>>     
>>     public prop name: String
>>     
>> 
>> 功能：类型名称，即 [SqlNullableBool (deprecated)](database_sql_package_classes.html#class-sqlnullablebool-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>     
>>     public mut prop value: ?Bool
>>     
>> 
>> 功能：该数据的值。 类型：?[Bool](../../core/core_package_api/core_package_intrinsics.html#bool) init(?Bool)
>>     
>>     public init(v: ?Bool)
>>     
>> 
>> 功能：根据传入参数 v 构造一个 [SqlNullableBool (deprecated)](database_sql_package_classes.html#class-sqlnullablebool-deprecated) 实例。 参数：
>>                          * v: ?[Bool](../../core/core_package_api/core_package_intrinsics.html#bool) - 传入的数据。
>> class SqlNullableByte (deprecated)
>>     
>>     public class SqlNullableByte <: SqlNullableDbType {
>>         public init(v: ?Int8)
>>     }
>>     
>> 
>> 功能：字节，对应仓颉 [Int8](../../core/core_package_api/core_package_intrinsics.html#int8) 类型，可为数据库 `Null` 值。
>>
>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>> 
>> 父类型：
>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>> prop name
>>     
>>     public prop name: String
>>     
>> 
>> 功能：类型名称，即 [SqlNullableByte (deprecated)](database_sql_package_classes.html#class-sqlnullablebyte-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>     
>>     public mut prop value: ?Int8
>>     
>> 
>> 功能：该数据的值。 类型：?[Int8](../../core/core_package_api/core_package_intrinsics.html#int8) init(?Int8)
>>     
>>     public init(v: ?Int8)
>>     
>> 
>> 功能：根据传入参数 v 构造一个 [SqlNullableByte (deprecated)](database_sql_package_classes.html#class-sqlnullablebyte-deprecated) 实例。 参数：
>>                          * v: ?[Int8](../../core/core_package_api/core_package_intrinsics.html#int8) - 传入的数据。
>> class SqlNullableChar (deprecated)
>>     
>>     public class SqlNullableChar <: SqlNullableDbType {
>>         public init(v: ?String)
>>     }
>>     
>> 
>> 功能：定长字符串，对应仓颉 [String](../../core/core_package_api/core_package_structs.html#struct-string) 类型，可为数据库 `Null` 值。
>>
>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>> 
>> 父类型：
>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>> prop name
>>     
>>     public prop name: String
>>     
>> 
>> 功能：类型名称，即 [SqlNullableChar (deprecated)](database_sql_package_classes.html#class-sqlnullablechar-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>     
>>     public mut prop value: ?String
>>     
>> 
>> 功能：该数据的值。 类型：?[String](../../core/core_package_api/core_package_structs.html#struct-string) init(?String)
>>     
>>     public init(v: ?String)
>>     
>> 
>> 功能：根据传入参数 v 构造一个 [SqlNullableChar (deprecated)](database_sql_package_classes.html#class-sqlnullablechar-deprecated) 实例。 参数：
>>                          * v: ?[String](../../core/core_package_api/core_package_structs.html#struct-string) - 传入的数据。
>> class SqlNullableClob (deprecated)
>>     
>>     public class SqlNullableClob <: SqlNullableDbType {
>>         public init(v: ?InputStream)
>>     }
>>     
>> 
>> 功能：变长超大字符串（RUNE LARGE OBJECT），对应仓颉 [InputStream](../../io/io_package_api/io_package_interfaces.html#interface-inputstream) 类型，可为数据库 `Null` 值。
>>
>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>> 
>> 父类型：
>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>> prop name
>>     
>>     public prop name: String
>>     
>> 
>> 功能：类型名称，即 [SqlNullableClob (deprecated)](database_sql_package_classes.html#class-sqlnullableclob-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>     
>>     public mut prop value: ?InputStream
>>     
>> 
>> 功能：该数据的值。 类型：?[InputStream](../../io/io_package_api/io_package_interfaces.html#interface-inputstream) init(?InputStream)
>>     
>>     public init(v: ?InputStream)
>>     
>> 
>> 功能：根据传入参数 v 构造一个 [SqlNullableClob (deprecated)](database_sql_package_classes.html#class-sqlnullableclob-deprecated) 实例。 参数：
>>                          * v: ?[InputStream](../../io/io_package_api/io_package_interfaces.html#interface-inputstream) - 传入的数据。
>> class SqlNullableDate (deprecated)
>>     
>>     public class SqlNullableDate <: SqlNullableDbType {
>>         public init(v: ?DateTime)
>>     }
>>     
>> 
>> 功能：日期，仅年月日有效，对应仓颉 [DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) 类型，可为数据库 `Null` 值。
>>
>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>> 
>> 父类型：
>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>> prop name
>>     
>>     public prop name: String
>>     
>> 
>> 功能：类型名称，即 [SqlNullableDate (deprecated)](database_sql_package_classes.html#class-sqlnullabledate-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>     
>>     public mut prop value: ?DateTime
>>     
>> 
>> 功能：该数据的值。 类型：?[DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) init(?DateTime)
>>     
>>     public init(v: ?DateTime)
>>     
>> 
>> 功能：根据传入参数 v 构造一个 [SqlNullableDate (deprecated)](database_sql_package_classes.html#class-sqlnullabledate-deprecated) 实例。 参数：
>>                          * v: ?[DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) - 传入的数据。
>> class SqlNullableDecimal (deprecated)
>>     
>>     public class SqlNullableDecimal <: SqlNullableDbType {
>>         public init(v: ?Decimal)
>>     }
>>     
>> 
>> 功能：高精度数，对应仓颉 [Decimal](../../math_numeric/math_numeric_package_api/math_numeric_package_structs.html#struct-decimal) 类型，可为数据库 `Null` 值。
>>
>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>> 
>> 父类型：
>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>> prop name
>>     
>>     public prop name: String
>>     
>> 
>> 功能：类型名称，即 [SqlNullableDecimal (deprecated)](database_sql_package_classes.html#class-sqlnullabledecimal-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>     
>>     public mut prop value: ?Decimal
>>     
>> 
>> 功能：该数据的值。 类型：?[Decimal](../../math_numeric/math_numeric_package_api/math_numeric_package_structs.html#struct-decimal) init(?Decimal)
>>     
>>     public init(v: ?Decimal)
>>     
>> 
>> 功能：根据传入参数 v 构造一个 [SqlNullableDecimal (deprecated)](database_sql_package_classes.html#class-sqlnullabledecimal-deprecated) 实例。 参数：
>>                          * v: ?[Decimal](../../math_numeric/math_numeric_package_api/math_numeric_package_structs.html#struct-decimal) - 传入的数据。
>> class SqlNullableDouble (deprecated)
>>     
>>     public class SqlNullableDouble <: SqlNullableDbType {
>>         public init(v: ?Float64)
>>     }
>>     
>> 
>> 功能：双精度数，对应仓颉 [Float64](../../core/core_package_api/core_package_intrinsics.html#float64) 类型，可为数据库 `Null` 值。
>>
>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>> 
>> 父类型：
>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>> prop name
>>     
>>     public prop name: String
>>     
>> 
>> 功能：类型名称，即 [SqlNullableDouble (deprecated)](database_sql_package_classes.html#class-sqlnullabledouble-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>     
>>     public mut prop value: ?Float64
>>     
>> 
>> 功能：该数据的值。 类型：?[Float64](../../core/core_package_api/core_package_intrinsics.html#float64) init(?Float64)
>>     
>>     public init(v: ?Float64)
>>     
>> 
>> 功能：根据传入参数 v 构造一个 [SqlNullableDouble (deprecated)](database_sql_package_classes.html#class-sqlnullabledouble-deprecated) 实例。 参数：
>>                          * v: ?[Float64](../../core/core_package_api/core_package_intrinsics.html#float64) - 传入的数据。
>> class SqlNullableInteger (deprecated)
>>     
>>     public class SqlNullableInteger <: SqlNullableDbType {
>>         public init(v: ?Int32)
>>     }
>>     
>> 
>> 功能：中整数，对应仓颉 [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) 类型，可为数据库 `Null` 值。
>>
>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>> 
>> 父类型：
>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>> prop name
>>     
>>     public prop name: String
>>     
>> 
>> 功能：类型名称，即 [SqlNullableInteger (deprecated)](database_sql_package_classes.html#class-sqlnullableinteger-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>     
>>     public mut prop value: ?Int32
>>     
>> 
>> 功能：该数据的值。 类型：?[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) init(?Int32)
>>     
>>     public init(v: ?Int32)
>>     
>> 
>> 功能：根据传入参数 v 构造一个 [SqlNullableInteger (deprecated)](database_sql_package_classes.html#class-sqlnullableinteger-deprecated) 实例。 参数：
>>                          * v: ?[Int32](../../core/core_package_api/core_package_intrinsics.html#int32) - 传入的数据。
>> class SqlNullableInterval (deprecated)
>>     
>>     public class SqlNullableInterval <: SqlNullableDbType {
>>         public init(v: ?Duration)
>>     }
>>     
>> 
>> 功能：时间间隔，对应仓颉 [Duration](../../core/core_package_api/core_package_structs.html#struct-duration) 类型，可为数据库 `Null` 值。
>>
>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>> 
>> 父类型：
>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>> prop name
>>     
>>     public prop name: String
>>     
>> 
>> 功能：类型名称，即 [SqlNullableInterval (deprecated)](database_sql_package_classes.html#class-sqlnullableinterval-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>     
>>     public mut prop value: ?Duration
>>     
>> 
>> 功能：该数据的值。 类型：?[Duration](../../core/core_package_api/core_package_structs.html#struct-duration) init(?Duration)
>>     
>>     public init(v: ?Duration)
>>     
>> 
>> 功能：根据传入参数 v 构造一个 [SqlNullableInterval (deprecated)](database_sql_package_classes.html#class-sqlnullableinterval-deprecated) 实例。 参数：
>>                          * v: ?[Duration](../../core/core_package_api/core_package_structs.html#struct-duration) - 传入的数据。
>> class SqlNullableReal (deprecated)
>>     
>>     public class SqlNullableReal <: SqlNullableDbType {
>>         public init(v: ?Float32)
>>     }
>>     
>> 
>> 功能：浮点数，对应仓颉 [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) 类型，可为数据库 `Null` 值。
>>
>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>> 
>> 父类型：
>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>> prop name
>>     
>>     public prop name: String
>>     
>> 
>> 功能：类型名称，即 [SqlNullableReal (deprecated)](database_sql_package_classes.html#class-sqlnullablereal-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>     
>>     public mut prop value: ?Float32
>>     
>> 
>> 功能：该数据的值。 类型：?[Float32](../../core/core_package_api/core_package_intrinsics.html#float32) init(?Float32)
>>     
>>     public init(v: ?Float32)
>>     
>> 
>> 功能：根据传入参数 v 构造一个 [SqlNullableReal (deprecated)](database_sql_package_classes.html#class-sqlnullablereal-deprecated) 实例。 参数：
>>                          * v: ?[Float32](../../core/core_package_api/core_package_intrinsics.html#float32) - 传入的数据。
>> class SqlNullableSmallInt (deprecated)
>>     
>>     public class SqlNullableSmallInt <: SqlNullableDbType {
>>         public init(v: ?Int16)
>>     }
>>     
>> 
>> 功能：小整数，对应仓颉 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型，可为数据库 `Null` 值。
>>
>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>> 
>> 父类型：
>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>> prop name
>>     
>>     public prop name: String
>>     
>> 
>> 功能：类型名称，即 [SqlNullableSmallInt (deprecated)](database_sql_package_classes.html#class-sqlnullablesmallint-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>     
>>     public mut prop value: ?Int16
>>     
>> 
>> 功能：该数据的值。 类型：?[Int16](../../core/core_package_api/core_package_intrinsics.html#int16) init(?Int16)
>>     
>>     public init(v: ?Int16)
>>     
>> 
>> 功能：根据传入参数 v 构造一个 [SqlNullableSmallInt (deprecated)](database_sql_package_classes.html#class-sqlnullablesmallint-deprecated) 实例。 参数：
>>                          * v: ?[Int16](../../core/core_package_api/core_package_intrinsics.html#int16) - 传入的数据。
>> class SqlNullableTime (deprecated)
>>     
>>     public class SqlNullableTime <: SqlNullableDbType {
>>         public init(v: ?DateTime)
>>     }
>>     
>> 
>> 功能：时间，仅时分秒毫秒有效，对应仓颉 [DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) 类型，可为数据库 `Null` 值。
>>
>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>> 
>> 父类型：
>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>> prop name
>>     
>>     public prop name: String
>>     
>> 
>> 功能：类型名称，即 [SqlNullableTime (deprecated)](database_sql_package_classes.html#class-sqlnullabletime-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>     
>>     public mut prop value: ?DateTime
>>     
>> 
>> 功能：该数据的值。 类型：?[DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) init(?DateTime)
>>     
>>     public init(v: ?DateTime)
>>     
>> 
>> 功能：根据传入参数 v 构造一个 [SqlNullableTime (deprecated)](database_sql_package_classes.html#class-sqlnullabletime-deprecated) 实例。 参数：
>>                          * v: ?[DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) - 传入的数据。
>> class SqlNullableTimeTz (deprecated)
>>     
>>     public class SqlNullableTimeTz <: SqlNullableDbType {
>>         public init(v: ?DateTime)
>>     }
>>     
>> 
>> 功能：带时区的时间，仅时分秒毫秒时区有效，对应仓颉 [DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) 类型，可为数据库 `Null` 值。
>>
>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>> 
>> 父类型：
>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>> prop name
>>     
>>     public prop name: String
>>     
>> 
>> 功能：类型名称，即 [SqlNullableTimeTz (deprecated)](database_sql_package_classes.html#class-sqlnullabletimeTz-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>     
>>     public mut prop value: ?DateTime
>>     
>> 
>> 功能：该数据的值。 类型：?[DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) init(?DateTime)
>>     
>>     public init(v: ?DateTime)
>>     
>> 
>> 功能：根据传入参数 v 构造一个 [SqlNullableTimeTz (deprecated)](database_sql_package_classes.html#class-sqlnullabletimeTz-deprecated) 实例。 参数：
>>                          * v: ?[DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) - 传入的数据。
>> class SqlNullableTimestamp (deprecated)
>>     
>>     public class SqlNullableTimestamp <: SqlNullableDbType {
>>         public init(v: ?DateTime)
>>     }
>>     
>> 
>> 功能：时间戳，对应仓颉 [DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) 类型，可为数据库 `Null` 值。
>>
>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>> 
>> 父类型：
>>                          * [SqlNullableDbType (deprecated)](database_sql_package_interfaces.html#interface-sqlnullabledbtype-deprecated)
>> `public prop name: String `
>> 
>> 功能：类型名称，即 [SqlReal (deprecated)](database_sql_package_classes.html#class-sqlreal-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>     
>>     public mut prop value: Float32
>>     
>> 
>> 功能：该数据的值。 类型：[Float32](../../core/core_package_api/core_package_intrinsics.html#float32) init(Float32)
>>     
>>     public init(v: Float32)
>>     
>> 
>> 功能：根据传入参数 v 构造一个 [SqlReal (deprecated)](database_sql_package_classes.html#class-sqlreal-deprecated) 实例。 参数：
>>                          * v: [Float32](../../core/core_package_api/core_package_intrinsics.html#float32) - 传入的数据。
>> class SqlSmallInt (deprecated)
>>     
>>     public class SqlSmallInt <: SqlDbType {
>>         public init(v: Int16)
>>     }
>>     
>> 
>> 功能：小整数，对应仓颉 [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) 类型。
>>
>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>> 
>> 父类型：
>>                          * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>> prop name
>>     
>>     public prop name: String
>>     
>> 
>> 功能：类型名称，即 [SqlSmallInt (deprecated)](database_sql_package_classes.html#class-sqlsmallInt-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>     
>>     public mut prop value: Int16
>>     
>> 
>> 功能：该数据的值。 类型：[Int16](../../core/core_package_api/core_package_intrinsics.html#int16) init(Int16)
>>     
>>     public init(v: Int16)
>>     
>> 
>> 功能：根据传入参数 v 构造一个 [SqlSmallInt (deprecated)](database_sql_package_classes.html#class-sqlsmallInt-deprecated) 实例。 参数：
>>                          * v: [Int16](../../core/core_package_api/core_package_intrinsics.html#int16) - 传入的数据。
>> class SqlTime (deprecated)
>>     
>>     public class SqlTime <: SqlDbType {
>>         public init(v: DateTime)
>>     }
>>     
>> 
>> 功能：时间，仅时分秒毫秒有效，对应仓颉 [DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) 类型。
>>
>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>> 
>> 父类型：
>>                          * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>> prop name
>>     
>>     public prop name: String
>>     
>> 
>> 功能：类型名称，即 [SqlTime (deprecated)](database_sql_package_classes.html#class-sqltime-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>     
>>     public mut prop value: DateTime
>>     
>> 
>> 功能：该数据的值。 类型：[DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) init(DateTime)
>>     
>>     public init(v: DateTime)
>>     
>> 
>> 功能：根据传入参数 v 构造一个 [SqlTime (deprecated)](database_sql_package_classes.html#class-sqltime-deprecated) 实例。 参数：
>>                          * v: [DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) - 传入的数据。
>> class SqlTimeTz (deprecated)
>>     
>>     public class SqlTimeTz <: SqlDbType {
>>         public init(v: DateTime)
>>     }
>>     
>> 
>> 功能：带时区的时间，仅时分秒毫秒时区有效，对应仓颉 [DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) 类型。
>>
>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>> 
>> 父类型：
>>                          * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>> prop name
>>     
>>     public prop name: String
>>     
>> 
>> 功能：类型名称，即 [SqlTimeTz (deprecated)](database_sql_package_classes.html#class-sqltimetz-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>     
>>     public mut prop value: DateTime
>>     
>> 
>> 功能：该数据的值。 类型：[DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) init(DateTime)
>>     
>>     public init(v: DateTime)
>>     
>> 
>> 功能：根据传入参数 v 构造一个 [SqlTimeTz (deprecated)](database_sql_package_classes.html#class-sqltimetz-deprecated) 实例。 参数：
>>                          * v: [DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) - 传入的数据。
>> class SqlTimestamp (deprecated)
>>     
>>     public class SqlTimestamp <: SqlDbType {
>>         public init(v: DateTime)
>>     }
>>     
>> 
>> 功能：时间戳，对应仓颉 [DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) 类型。
>>
>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>> 
>> 父类型：
>>                          * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>> prop name
>>     
>>     public prop name: String
>>     
>> 
>> 功能：类型名称，即 [SqlTimestamp (deprecated)](database_sql_package_classes.html#class-sqltimestamp-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>     
>>     public mut prop value: DateTime
>>     
>> 
>> 功能：该数据的值。 类型：[DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) init(DateTime)
>>     
>>     public init(v: DateTime)
>>     
>> 
>> 功能：根据传入参数 v 构造一个 [SqlTimestamp (deprecated)](database_sql_package_classes.html#class-sqltimestamp-deprecated) 实例。 参数：
>>                          * v: [DateTime](../../time/time_package_api/time_package_structs.html#struct-datetime) - 传入的数据。
>> class SqlVarBinary (deprecated)
>>     
>>     public class SqlVarBinary <: SqlDbType {
>>         public init(v: Array<Byte>)
>>     }
>>     
>> 
>> 功能：变长二进制字符串，对应仓颉 [Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../core/core_package_api/core_package_types.html#type-byte)> 类型。
>>
>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>> 
>> 父类型：
>>                          * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>> prop name
>>     
>>     public prop name: String
>>     
>> 
>> 功能：类型名称，即 [SqlVarBinary (deprecated)](database_sql_package_classes.html#class-sqlvarbinary-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>     
>>     public mut prop value: Array<Byte>
>>     
>> 
>> 功能：该数据的值。 类型：[Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../core/core_package_api/core_package_types.html#type-byte)> init(Array<Byte>)
>>     
>>     public init(v: Array<Byte>)
>>     
>> 
>> 功能：根据传入参数 v 构造一个 [SqlVarBinary (deprecated)](database_sql_package_classes.html#class-sqlvarbinary-deprecated) 实例。 参数：
>>                          * v: [Array](../../core/core_package_api/core_package_structs.html#struct-arrayt)<[Byte](../../core/core_package_api/core_package_types.html#type-byte)> - 传入的数据。
>> class SqlVarchar (deprecated)
>>     
>>     public class SqlVarchar <: SqlDbType {
>>         public init(v: String)
>>     }
>>     
>> 
>> 功能：变长字符串，对应仓颉 [String](../../core/core_package_api/core_package_structs.html#struct-string) 类型。
>>
>>> **注意：** 未来版本即将废弃不再使用，使用仓颉原生类型替代。
>> 
>> 父类型：
>>                          * [SqlDbType (deprecated)](database_sql_package_interfaces.html#interface-sqldbtype-deprecated)
>> prop name
>>     
>>     public prop name: String
>>     
>> 
>> 功能：类型名称，即 [SqlVarchar (deprecated)](database_sql_package_classes.html#class-sqlvarchar-deprecated)。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) prop value
>>     
>>     public mut prop value: String
>>     
>> 
>> 功能：该数据的值。 类型：[String](../../core/core_package_api/core_package_structs.html#struct-string) init(String)
>>     
>>     public init(v: String)
>>     
>> 
>> 功能：根据传入参数 v 构造一个 [SqlVarchar (deprecated)](database_sql_package_classes.html#class-sqlvarchar-deprecated) 实例。 参数：
>>                          * v: [String](../../core/core_package_api/core_package_structs.html#struct-string) - 传入的数据。
