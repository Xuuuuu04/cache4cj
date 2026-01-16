<Byte> = [1, 2, 3, 4, 5] let mydigest = MyDigest() let digestBytes = digest<MyDigest>(mydigest, data) println(digestBytes) } // 自定义 Digest class MyDigest <: Digest { public prop size: Int64 { get() { 0 } } public prop blockSize: Int64 { get() { 0 } } public prop algorithm: String { get() { "" } } public func write(buffer: Array<Byte>): Unit { println("buffer = ${buffer}") } public func finish(to!: Array<Byte>): Unit { println("to = ${to}") } public func finish(): Array<Byte> { [3,2,1] } public func reset(): Unit {} } std.database.sql 功能介绍 database.sql 包提供仓颉访问数据库的接口。 本包提供 SQL/CLI 的通用接口，配合数据库驱动 Driver 完成对数据库的各项操作。
>>
>>> **注意：** 当前仅支持 SQL/CLI 接口。
>> 
>> SQL 数据类型和仓颉数据类型对应表如下： SQL| CDBC/Cangjie| SqlDataType| 说明  
>> ---|---|---|---  
>> `RUNE`| `String`| `SqlChar`| -  
>> `VARCHAR`| `String`| `SqlVarchar`| -  
>> `CLOB`| `io.InputStream`| `SqlClob`| -  
>> `BINARY`| `Array<Byte>`| `SqlBinary`| -  
>> `VARBINARY`| `Array<Byte>`| `SqlVarBinary`| -  
>> `BLOB`| `io.InputStream`| `SqlBlob`| -  
>> `NUMERIC`| `Decimal`| `sqlDecimal`| -  
>> `DECIMAL`| `Decimal`| `sqlDecimal`| -  
>> `BOOLEAN`| `Bool`| `SqlBool`| -  
>> `TINYINT`| `Int8`| `SqlByte`| -  
>> `SMALLINT`| `Int16`| `SqlSmallInt`| -  
>> `INTEGER`| `Int32`| `SqlInteger`| -  
>> `BIGINT`| `Int64`| `SqlBigInt`| -  
>> `REAL`| `Float32`| `SqlReal`| -  
>> `DOUBLE`| `Float64`| `SqlDouble`| -  
>> `DATE`| `time.DateTime`| `SqlDate`| 值支持 `YEAR`，`MONTH`，`DAY`。  
>> `TIME`| `time.DateTime`| `SqlTime`| 值支持 `HOUR`，`MINUTE`，`SECOND`（不包括 `TIME ZONE`）。  
>> `TIMETZ`| `time.DateTime`| `SqlTimeTz`| 值支持 `HOUR`，`MINUTE`，`SECOND`（包括 `TIME ZONE`）。  
>> `TIMESTAMP`| `time.DateTime`| `SqlTimestamp`| 值支持 `YEAR`，`MONTH`，`DAY`，`HOUR`，`MINUTE`，`SECOND`，`TIME ZONE`。  
>> `INTERVAL`| `time.Duration`| `SqlInterval`| 年-月间隔或者日-时间隔。  
>> API列表 接口 接口名| 功能  
>> ---|---  
>> [ColumnInfo](./database_sql_package_api/database_sql_package_interfaces.html#interface-columninfo)| 执行 Select/Query 语句返回结果的列信息。  
>> [Connection](./database_sql_package_api/database_sql_package_interfaces.html#interface-connection)| 数据库连接接口。  
>> [Datasource](./database_sql_package_api/database_sql_package_interfaces.html#interface-datasource)| 数据源接口。  
>> [Driver](./database_sql_package_api/database_sql_package_interfaces.html#interface-driver)| 数据库驱动接口。  
>> [QueryResult](./database_sql_package_api/database_sql_package_interfaces.html#interface-queryresult)| 执行 Select 语句产生的结果接口。  
>> [SqlDbType (deprecated)](./database_sql_package_api/database_sql_package_interfaces.html#interface-sqldbType-deprecated)| 所有 sql 数据类型的父类。  
>> [SqlNullableDbType (deprecated)](./database_sql_package_api/database_sql_package_interfaces.html#interface-sqlnullabledbType-deprecated)| 允许 `null` 值的 sql 数据类型父类。  
>> [Statement](./database_sql_package_api/database_sql_package_interfaces.html#interface-statement)| sql 语句预执行接口。  
>> [Transaction](./database_sql_package_api/database_sql_package_interfaces.html#interface-transaction)| 定义数据库事务的核心行为。  
>> [UpdateResult](./database_sql_package_api/database_sql_package_interfaces.html#interface-updateresult)| 执行 Insert、Update、Delete 语句产生的结果接口。  
>> 类 类名| 功能  
>> ---|---  
>> [DriverManager](./database_sql_package_api/database_sql_package_classes.html#class-drivermanager)| 支持运行时根据驱动名获取数据库驱动实例。  
>> [PooledDatasource](./database_sql_package_api/database_sql_package_classes.html#class-pooleddatasource)| 数据库连接池类，提供数据库连接池能力。  
>> [SqlOption](./database_sql_package_api/database_sql_package_classes.html#class-sqloption)| 预定义的 sql 选项名称和值。  
>> [SqlBigInt (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlbigInt-deprecated)| 大整数，对应仓颉 `Int64` 类型。  
>> [SqlBinary (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlbinary-deprecated)| 定长二进制字符串，对应仓颉 `Array<Byte>` 类型。  
>> [SqlBlob (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlblob-deprecated)| 变长超大二进制字符串（BINARY LARGE OBJECT），对应仓颉 `InputStream` 类型。  
>> [SqlBool (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlbool-deprecated)| 布尔类型，对应仓颉 `Bool` 类型。  
>> [SqlByte (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlbyte-deprecated)| 字节，对应仓颉 `Int8` 类型。  
>> [SqlChar (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlchar-deprecated)| 定长字符串，对应仓颉 `String` 类型。  
>> [SqlClob (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlclob-deprecated)| 变长超大字符串（RUNE LARGE OBJECT），对应仓颉 `InputStream` 类型。  
>> [SqlDate (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqldate-deprecated)| 日期，仅年月日有效，对应仓颉 `DateTime` 类型。  
>> [SqlDecimal (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqldecimal-deprecated)| 高精度数，对应仓颉 `Decimal` 类型。  
>> [SqlDouble (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqldouble-deprecated)| 双精度数，对应仓颉 `Float64` 类型。  
>> [SqlInteger (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlinteger-deprecated)| 中整数，对应仓颉 `Int32` 类型。  
>> [SqlInterval (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlinterval-deprecated)| 时间间隔，对应仓颉 `Duration` 类型。  
>> [SqlReal (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlreal-deprecated)| 浮点数，对应仓颉 `Float32` 类型。  
>> [SqlSmallInt (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlsmallInt-deprecated)| 小整数，对应仓颉 `Int16` 类型。  
>> [SqlTime (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqltime-deprecated)| 时间，仅时分秒毫秒有效，对应仓颉 `DateTime` 类型。  
>> [SqlTimestamp (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqltimestamp-deprecated)| 时间戳，对应仓颉 `DateTime` 类型。  
>> [SqlTimeTz (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqltimetz-deprecated)| 带时区的时间，仅时分秒毫秒时区有效，对应仓颉 `DateTime` 类型。  
>> [SqlVarBinary (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlvarbinary-deprecated)| 变长二进制字符串，对应仓颉 `Array<Byte>` 类型。  
>> [SqlVarchar (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlvarchar-deprecated)| 变长字符串，对应仓颉 `String` 类型。  
>> [SqlNullableBigInt (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlnullablebigInt-deprecated)| 大整数，对应仓颉 `Int64` 类型，可为数据库 `Null` 值。  
>> [SqlNullableBinary (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlnullablebinary-deprecated)| 定长二进制字符串，对应仓颉 `Array<Byte>` 类型，可为数据库 `Null` 值。  
>> [SqlNullableBlob (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlnullableblob-deprecated)| 变长超大二进制字符串（BINARY LARGE OBJECT），对应仓颉 `InputStream` 类型，可为数据库 `Null` 值。  
>> [SqlNullableBool (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlnullablebool-deprecated)| 布尔类型，对应仓颉 `Bool` 类型，可为数据库 `Null` 值。  
>> [SqlNullableByte (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlnullablebyte-deprecated)| 字节，对应仓颉 `Int8` 类型，可为数据库 `Null` 值。  
>> [SqlNullableChar (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlnullablechar-deprecated)| 定长二进制字符串，对应仓颉 `String` 类型，可为数据库 `Null` 值。  
>> [SqlNullableClob (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlnullableclob-deprecated)| 变长超大字符串（RUNE LARGE OBJECT），对应仓颉 `InputStream` 类型，可为数据库 `Null` 值。  
>> [SqlNullableDate (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlnullabledate-deprecated)| 日期，仅年月日有效，对应仓颉 `DateTime` 类型，可为数据库 `Null` 值。  
>> [SqlNullableDecimal (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlnullabledecimal-deprecated)| 高精度数，对应仓颉 `Decimal` 类型，可为数据库 `Null` 值。  
>> [SqlNullableDouble (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlnullabledouble-deprecated)| 双精度数，对应仓颉 `Float64` 类型，可为数据库 `Null` 值。  
>> [SqlNullableInteger (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlnullableinteger-deprecated)| 中整数，对应仓颉 `Int32` 类型，可为数据库 `Null` 值。  
>> [SqlNullableInterval (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlnullableinterval-deprecated)| 时间间隔，对应仓颉 `Duration` 类型，可为数据库 `Null` 值。  
>> [SqlNullableReal (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlnullablereal-deprecated)| 浮点数，对应仓颉 `Float32` 类型，可为数据库 `Null` 值。  
>> [SqlNullableSmallInt (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlnullablesmallint-deprecated)| 小整数，对应仓颉 `Int16` 类型，可为数据库 `Null` 值。  
>> [SqlNullableTime (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlnullabletime-deprecated)| 时间，仅时分秒毫秒有效，对应仓颉 `DateTime` 类型，可为数据库 `Null` 值。  
>> [SqlNullableTimestamp (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlnullabletimestamp-deprecated)| 时间戳，对应仓颉 `DateTime` 类型，可为数据库 `Null` 值。  
>> [SqlNullableTimeTz (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlnullabletimeTz-deprecated)| 带时区的时间，仅时分秒毫秒时区有效，对应仓颉 `DateTime` 类型，可为数据库 `Null` 值。  
>> [SqlNullableVarBinary (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlnullablevarbinary-deprecated)| 变长二进制字符串，对应仓颉 `Array<Byte>` 类型，可为数据库 `Null` 值。  
>> [SqlNullableVarchar (deprecated)](./database_sql_package_api/database_sql_package_classes.html#class-sqlnullablevarchar-deprecated)| 变长字符串，对应仓颉 `String` 类型，可为数据库 `Null` 值。  
>> 枚举 枚举名| 功能  
>> ---|---  
>> [ConnectionState](./database_sql_package_api/database_sql_package_enums.html#enum-connectionstate)| 描述与数据源连接的当前状态。  
>> [TransactionAccessMode](./database_sql_package_api/database_sql_package_enums.html#enum-transactionaccessmode)| 事务的读写模式。  
>> [TransactionDeferrableMode](./database_sql_package_api/database_sql_package_enums.html#enum-transactiondeferrablemode)| 事务的延迟模式。  
>> [TransactionIsoLevel](./database_sql_package_api/database_sql_package_enums.html#enum-transactionisolevel)| 定义了数据库系统中，一个事务中操作的结果在何时以何种方式对其他并发事务操作可见。  
>> 异常类 异常类名| 功能  
>> ---|---  
>> [SqlException](./database_sql_package_api/database_sql_package_exceptions.html#class-sqlexception)| 用于处理 sql 相关的异常。
