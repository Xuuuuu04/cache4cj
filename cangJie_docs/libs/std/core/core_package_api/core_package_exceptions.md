# 异常类

## class ArithmeticException
    
    public open class ArithmeticException <: Exception {
        public init()
        public init(message: String)
    }
    

功能：算术异常类，发生算术异常时使用。

父类型：

            * Exception

### init()
    
    public init()
    

功能：构造一个默认的 [ArithmeticException](core_package_exceptions.html#class-arithmeticexception) 实例，默认异常信息为空。

### init(String)
    
    public init(message: String)
    

功能：根据异常信息构造一个 [ArithmeticException](core_package_exceptions.html#class-arithmeticexception) 实例。

参数：

            * message: [String](core_package_structs.html#struct-string) - 异常提示信息。

### func getClassName()
    
    protected open override func getClassName(): String
    

功能：获得类名。

返回值：

            * [String](core_package_structs.html#struct-string) - 类名字符串。

## class Error
    
    public open class Error <: ToString
    

功能：[Error](core_package_exceptions.html#class-error) 是所有错误类的基类。该类不可被继承，不可初始化，但是可以被捕获到。

父类型：

            * [ToString](core_package_interfaces.html#interface-tostring)

### prop message
    
    public open prop message: String
    

功能：获取错误信息。

类型：[String](core_package_structs.html#struct-string)

### func getClassName()
    
    protected open func getClassName(): String
    

功能：获得类名。

返回值：

            * [String](core_package_structs.html#struct-string) - 类名。

### func getStackTrace()
    
    public func getStackTrace(): Array<StackTraceElement>
    

功能：获取堆栈信息，每一条堆栈信息用一个 [StackTraceElement](core_package_classes.html#class-stacktraceelement) 实例表示，最终返回一个 [StackTraceElement](core_package_classes.html#class-stacktraceelement) 的数组。

返回值：

            * [Array](core_package_structs.html#struct-arrayt)<[StackTraceElement](core_package_classes.html#class-stacktraceelement)> - 堆栈信息数组。

### func getStackTraceMessage()
    
    public open func getStackTraceMessage(): String
    

功能：获取堆栈信息。

返回值：

            * [String](core_package_structs.html#struct-string) - 堆栈信息。

### func printStackTrace()
    
    public open func printStackTrace(): Unit
    

功能：向控制台打印堆栈信息。

### func toString()
    
    public open func toString(): String
    

功能：获取当前 [Error](core_package_exceptions.html#class-error) 实例的字符串值，包括类名和错误信息。

返回值：

            * [String](core_package_structs.html#struct-string) - 错误信息字符串。

## class Exception
    
    public open class Exception <: ToString {
        public init()
        public init(message: String)
    }
    

功能：[Exception](core_package_exceptions.html#class-exception) 是所有异常类的父类。

支持构造一个异常类，设置、获取异常信息，转换为字符串，获取、打印堆栈，设置异常名（用于字符串表示）。

父类型：

            * [ToString](core_package_interfaces.html#interface-tostring)

### prop message
    
    public open prop message: String
    

功能：获取异常信息。

类型：[String](core_package_structs.html#struct-string)

### init()
    
    public init()
    

功能：构造一个默认的 [Exception](core_package_exceptions.html#class-exception) 实例，默认异常信息为空。

### init(String)
    
    public init(message: String)
    

功能：根据异常信息构造一个 [Exception](core_package_exceptions.html#class-exception) 实例。

参数：

            * message: [String](core_package_structs.html#struct-string) - 异常提示信息。

### func getClassName()
    
    protected open func getClassName(): String
    

功能：获得类名。

返回值：

            * [String](core_package_structs.html#struct-string) - 类名。

### func getStackTrace()
    
    public func getStackTrace(): Array<StackTraceElement>
    

功能：获取堆栈信息，每一条堆栈信息用一个 [StackTraceElement](core_package_classes.html#class-stacktraceelement) 实例表示，最终返回一个 [StackTraceElement](core_package_classes.html#class-stacktraceelement) 的数组。

返回值：

            * [Array](core_package_structs.html#struct-arrayt)<[StackTraceElement](core_package_classes.html#class-stacktraceelement)> - 堆栈信息数组。

### func printStackTrace()
    
    public func printStackTrace(): Unit
    

功能：向控制台打印堆栈信息。

### func toString()
    
    public open func toString(): String
    

功能：获取当前 [Exception](core_package_exceptions.html#class-exception) 实例的字符串值，包括类名和异常信息。

返回值：

            * [String](core_package_structs.html#struct-string) - 异常字符串。

## class IllegalArgumentException
    
    public open class IllegalArgumentException <: Exception {
        public init()
        public init(message: String)
    }
    

功能：表示参数非法的异常类。

父类型：

            * Exception# 异常类

## class ArithmeticException
    
    public open class ArithmeticException <: Exception {
        public init()
        public init(message: String)
    }
    

功能：算术异常类，发生算术异常时使用。

父类型：

              * Exception

### init()
    
    public init()
    

功能：构造一个默认的 [ArithmeticException](core_package_exceptions.html#class-arithmeticexception) 实例，默认异常信息为空。

### init(String)
    
    public init(message: String)
    

功能：根据异常信息构造一个 [ArithmeticException](core_package_exceptions.html#class-arithmeticexception) 实例。

参数：

              * message: [String](core_package_structs.html#struct-string) - 异常提示信息。

### func getClassName()
    
    protected open override func getClassName(): String
    

功能：获得类名。

返回值：

              * [String](core_package_structs.html#struct-string) - 类名字符串。

## class Error
    
    public open class Error <: ToString
    

功能：[Error](core_package_exceptions.html#class-error) 是所有错误类的基类。该类不可被继承，不可初始化，但是可以被捕获到。

父类型：

              * [ToString](core_package_interfaces.html#interface-tostring)

### prop message
    
    public open prop message: String
    

功能：获取错误信息。

类型：[String](core_package_structs.html#struct-string)

### func getClassName()
    
    protected open func getClassName(): String
    

功能：获得类名。

返回值：

              * [String](core_package_structs.html#struct-string) - 类名。

### func getStackTrace()
    
    public func getStackTrace(): Array<StackTraceElement>
    

功能：获取堆栈信息，每一条堆栈信息用一个 [StackTraceElement](core_package_classes.html#class-stacktraceelement) 实例表示，最终返回一个 [StackTraceElement](core_package_classes.html#class-stacktraceelement) 的数组。

返回值：

              * [Array](core_package_structs.html#struct-arrayt)<[StackTraceElement](core_package_classes.html#class-stacktraceelement)> - 堆栈信息数组。

### func getStackTraceMessage()
    
    public open func getStackTraceMessage(): String
    

功能：获取堆栈信息。

返回值：

              * [String](core_package_structs.html#struct-string) - 堆栈信息。

### func printStackTrace()
    
    public open func printStackTrace(): Unit
    

功能：向控制台打印堆栈信息。

### func toString()
    
    public open func toString(): String
    

功能：获取当前 [Error](core_package_exceptions.html#class-error) 实例的字符串值，包括类名和错误信息。

返回值：

              * [String](core_package_structs.html#struct-string) - 错误信息字符串。

## class Exception
    
    public open class Exception <: ToString {
        public init()
        public init(message: String)
    }
    

功能：[Exception](core_package_exceptions.html#class-exception) 是所有异常类的父类。

支持构造一个异常类，设置、获取异常信息，转换为字符串，获取、打印堆栈，设置异常名（用于字符串表示）。

父类型：

              * [ToString](core_package_interfaces.html#interface-tostring)

### prop message
    
    public open prop message: String
    

功能：获取异常信息。

类型：[String](core_package_structs.html#struct-string)

### init()
    
    public init()
    

功能：构造一个默认的 [Exception](core_package_exceptions.html#class-exception) 实例，默认异常信息为空。

### init(String)
    
    public init(message: String)
    

功能：根据异常信息构造一个 [Exception](core_package_exceptions.html#class-exception) 实例。

参数：

              * message: [String](core_package_structs.html#struct-string) - 异常提示信息。

### func getClassName()
    
    protected open func getClassName(): String
    

功能：获得类名。

返回值：

              * [String](core_package_structs.html#struct-string) - 类名。

### func getStackTrace()
    
    public func getStackTrace(): Array<StackTraceElement>
    

功能：获取堆栈信息，每一条堆栈信息用一个 [StackTraceElement](core_package_classes.html#class-stacktraceelement) 实例表示，最终返回一个 [StackTraceElement](core_package_classes.html#class-stacktraceelement) 的数组。

返回值：

              * [Array](core_package_structs.html#struct-arrayt)<[StackTraceElement](core_package_classes.html#class-stacktraceelement)> - 堆栈信息数组。

### func printStackTrace()
    
    public func printStackTrace(): Unit
    

功能：向控制台打印堆栈信息。

### func toString()
    
    public open func toString(): String
    

功能：获取当前 [Exception](core_package_exceptions.html#class-exception) 实例的字符串值，包括类名和异常信息。

返回值：

              * [String](core_package_structs.html#struct-string) - 异常字符串。

## class IllegalArgumentException
    
    public open class IllegalArgumentException <: Exception {
        public init()
        public init(message: String)
    }
    

功能：表示参数非法的异常类。

父类型：

              * Exception

### init()
    
    public init()
    

功能：构造一个默认的 [IllegalArgumentException](core_package_exceptions.html#class-illegalargumentexception) 实例，默认异常信息为空。

### init(String)
    
    public init(message: String)
    

功能：根据异常信息构造一个 [IllegalArgumentException](core_package_exceptions.html#class-illegalargumentexception) 实例。

参数：

              * message: [String](core_package_structs.html#struct-string) - 异常提示信息。

### func getClassName()
    
    protected override open func getClassName(): String
    

功能：获得类名。

返回值：

              * [String](core_package_structs.html#struct-string) - 类名。

## class IllegalFormatException
    
    public open class IllegalFormatException <: IllegalArgumentException {
        public init()
        public init(message: String)
    }
    

功能：表示变量的格式无效或不标准时的异常类。

父类型：

              * IllegalArgumentException

### init()
    
    public init()
    

功能：构造一个默认的 [IllegalFormatException](core_package_exceptions.html#class-illegalformatexception) 实例，默认异常信息为空。

### init(String)
    
    public init(message: String)
    

功能：根据异常信息构造一个 [IllegalFormatException](core_package_exceptions.html#class-illegalformatexception) 实例。

参数：

              * message: [String](core_package_structs.html#struct-string) - 异常提示信息。

## class IllegalMemoryException
    
    public class IllegalMemoryException <: Exception {
        public init()
        public init(message: String)
    }
    

功能：表示内存操作错误的异常类。

父类型：

              * Exception

### init()
    
    public init()
    

功能：构造一个默认的 [IllegalMemoryException](core_package_exceptions.html#class-illegalmemoryexception) 实例，默认异常信息为空。

### init(String)
    
    public init(message: String)
    

功能：根据指定异常信息构造 [IllegalMemoryException](core_package_exceptions.html#class-illegalmemoryexception) 实例。

参数：

              * message: [String](core_package_structs.html#struct-string) - 异常提示信息。

## class IllegalStateException
    
    public class IllegalStateException <: Exception {
        public init()
        public init(message: String)
    }
    

功能：表示状态非法的异常类。

父类型：

              * Exception

### init()
    
    public init()
    

功能：构造一个默认的 [IllegalStateException](core_package_exceptions.html#class-illegalstateexception) 实例，默认异常信息为空。

### init(String)
    
    public init(message: String)
    

功能：根据异常信息构造一个 [IllegalStateException](core_package_exceptions.html#class-illegalstateexception) 实例。

参数：

              * message: [String](core_package_structs.html#struct-string) - 异常提示信息。

## class IncompatiblePackageException
    
    public class IncompatiblePackageException <: Exception {
        public init()
        public init(message: String)
    }
    

功能：表示包不兼容的异常类。

父类型：

              * Exception

### init()
    
    public init()
    

功能：构造一个默认的 [IncompatiblePackageException](core_package_exceptions.html#class-incompatiblepackageexception) 实例，默认异常信息为空。

### init(String)
    
    public init(message: String)
    

功能：根据异常信息构造一个 [IncompatiblePackageException](core_package_exceptions.html#class-incompatiblepackageexception)实例。

参数：

              * message: [String](core_package_structs.html#struct-string) - 异常提示信息。

## class IndexOutOfBoundsException
    
    public class IndexOutOfBoundsException <: Exception {
        public init()
        public init(message: String)
    }
    

功能：表示索引越界的异常类。

父类型：

              * Exception

### init()
    
    public init()
    

功能：构造一个默认的 [IndexOutOfBoundsException](core_package_exceptions.html#class-indexoutofboundsexception) 实例，默认异常信息为空。

### init(String)
    
    public init(message: String)
    

功能：根据异常信息构造一个 [IndexOutOfBoundsException](core_package_exceptions.html#class-indexoutofboundsexception) 实例。

参数：

              * message: [String](core_package_structs.html#struct-string) - 异常提示信息。

## class InternalError
    
    public class InternalError <: Error
    

功能：表示内部错误的错误类，该类不可初始化，但是可以被捕获到。

父类型：

              * Error

## class NegativeArraySizeException
    
    public class NegativeArraySizeException <: Exception {
        public init()
        public init(message: String)
    }
    

功能：表示数组大小为负数的异常类。

父类型：

              * Exception

### init()
    
    public init()
    

功能：构造一个默认的 [NegativeArraySizeException](core_package_exceptions.html#class-negativearraysizeexception) 实例，默认异常信息为空。

### init(String)
    
    public init(message: String)
    

功能：根据异常信息构造一个 [NegativeArraySizeException](core_package_exceptions.html#class-negativearraysizeexception) 实例。

参数：

              * message: [String](core_package_structs.html#struct-string) - 异常提示信息。

## class NoneValueException
    
    public class NoneValueException <: Exception {
        public init()
        public init(message: String)
    }
    

功能：表示 [Option](core_package_enums.html#enum-optiont)<T> 实例的值为 `None` 的异常类，通常在 `getOrThrow` 函数中被抛出。

父类型：

              * Exception

### init()
    
    public init()
    

功能：构造一个默认的 [NoneValueException](core_package_exceptions.html#class-nonevalueexception) 实例，默认异常信息为空。

### init(String)
    
    public init(message: String)
    

功能：根据异常信息构造一个 [NoneValueException](core_package_exceptions.html#class-nonevalueexception) 实例。

参数：

              * message: [String](core_package_structs.html#struct-string) - 异常提示信息。

## class OutOfMemoryError
    
    public class OutOfMemoryError <: Error
    

功能：表示内存不足错误的错误类，该类不可被继承，不可初始化，但是可以被捕获到。

父类型：

              * Error

## class OverflowException
    
    public class OverflowException <: ArithmeticException {
        public init()
        public init(message: String)
    }
    

功能：表示算术运算溢出的异常类。

父类型：

              * ArithmeticException

### init()
    
    public init()
    

功能：构造一个默认的 [OverflowException](core_package_exceptions.html#class-overflowexception) 实例，默认异常信息为空。

### init(String)
    
    public init(message: String)
    

功能：根据指定异常信息构造 [OverflowException](core_package_exceptions.html#class-overflowexception) 实例。

参数：

              * message: [String](core_package_structs.html#struct-string) - 异常提示信息。

## class SpawnException
    
    public class SpawnException <: Exception {
        public init()
        public init(message: String)
    }
    

功能：线程异常类，表示线程处理过程中发生异常。

父类型：

              * Exception

### init()
    
    public init()
    

功能：构造一个默认的 [SpawnException](core_package_exceptions.html#class-spawnexception) 实例，默认错误信息为空。

### init(String)
    
    public init(message: String)
    

功能：根据异常信息构造一个 [SpawnException](core_package_exceptions.html#class-spawnexception) 实例。

参数：

              * message: [String](core_package_structs.html#struct-string) - 异常提示信息。

## class StackOverflowError
    
    public class StackOverflowError <: Error
    

功能：表示堆栈溢出错误的错误类，该类不可被继承，不可初始化，但是可以被捕获到。

父类型：

              * Error

### func printStackTrace()
    
    public override func printStackTrace(): Unit
    

功能：向控制台打印堆栈信息。

## class TimeoutException
    
    public class TimeoutException <: Exception {
        public init()
        public init(message: String)
    }
    

功能：当阻塞操作超时时引发异常。

父类型：

              * Exception

### init()
    
    public init()
    

功能：构造一个默认的 [TimeoutException](core_package_exceptions.html#class-timeoutexception) 实例，默认异常信息为空。

### init(String)
    
    public init(message: String)
    

功能：根据指定异常信息构造 [TimeoutException](core_package_exceptions.html#class-timeoutexception) 实例。

参数：

              * message: [String](core_package_structs.html#struct-string) - 异常提示信息。

## class UnsupportedException
    
    public class UnsupportedException <: Exception {
        public init()
        public init(message: String)
    }
    

功能：表示功能未支持的异常类。

父类型：

              * Exception

### init()
    
    public init()
    

功能：构造一个默认的 [UnsupportedException](core_package_exceptions.html#class-unsupportedexception) 实例，默认异常信息为空。

### init(String)
    
    public init(message: String)
    

功能：根据指定异常信息构造 [UnsupportedException](core_package_exceptions.html#class-unsupportedexception) 实例。

参数：

              * message: [String](core_package_structs.html#struct-string) - 异常提示信息。

# 函数

## func acquireArrayRawData<T>(Array<T>) where T <: CType
    
    public unsafe func acquireArrayRawData<T>(arr: Array<T>): CPointerHandle<T> where T <: CType
    

功能：获取 [Array](core_package_structs.html#struct-arrayt)<T> 中数据的原始指针实例，指针实例指向数组首元素的地址，T 需要满足 [CType](core_package_interfaces.html#interface-ctype) 约束。

> **注意：**
> 
> 指针使用完后需要及时用 [releaseArrayRawData](core_package_funcs.html#func-releasearrayrawdatatcpointerhandlet-where-t--ctype) 函数释放该指针。 指针的获取和释放之间仅可包含简单的 foreign C 函数调用等逻辑，不构造例如 [CString](core_package_intrinsics.html#cstring) 等的仓颉对象，否则可能造成不可预期现象。

参数：

              * arr: [Array](./core_package_structs.html#struct-arrayt)<T> - 待获取原始指针的数组。

返回值：

              * [CPointerHandle](core_package_structs.html#struct-cpointerhandlet-where-t--ctype)<T> - 数组的原始指针实例。

示例：
    
    main() {
        var arr: Array<Int64> = [1, 2, 3, 4]
        var cptrHandle: CPointerHandle<Int64> = unsafe { acquireArrayRawData(arr) }
        var cptr: CPointer<Int64> = cptrHandle.pointer
    
        let num: Int64 = unsafe { cptr.read() }
        println("The first element of the array is ${num} ")
    
        unsafe { releaseArrayRawData<Int64>(cptrHandle) }
    }
    

运行结果：
    
    The first element of the array is 1
    

## func alignOf<T>() where T <: CType
    
    public func alignOf<T>(): UIntNative where T <: CType
    

功能：获取类型 T 的内存对齐值。

返回值：

              * [UIntNative](core_package_intrinsics.html#uintnative) - 类型 T 满足内存对齐要求的字节数。

示例：
    
    @C
    struct Data {
        var a: Int64 = 0
        var b: Float32 = 0.0
    }
    
    main() {
        let alignSizeInt8: UIntNative = alignOf<Int8>()
        println("The memory alignment requirement for Int64 type is ${alignSizeInt8} byte")
    
        let alignSizeInt32: UIntNative = alignOf<Int32>()
        println("The memory alignment requirement for Int64 type is ${alignSizeInt32} bytes")
    
        let alignSizeInt64: UIntNative = alignOf<Int64>()
        println("The memory alignment requirement for Int64 type is ${alignSizeInt64} bytes")
    
        let alignSizeData: UIntNative = alignOf<Data>()
        println("The memory alignment requirement for Int64 type is ${alignSizeData} bytes")
    }
    

运行结果：
    
    The memory alignment requirement for Int64 type is 1 byte
    The memory alignment requirement for Int64 type is 4 bytes
    The memory alignment requirement for Int64 type is 8 bytes
    The memory alignment requirement for Int64 type is 8 bytes
    

## func eprint(String, Bool)
    
    public func eprint(str: String, flush!: Bool = true): Unit
    

功能：将指定字符串打印到标准错误文本流。

如抛出异常时，消息将打印到标准错误文本流（stderr），而不是标准输出（stdout）。

参数：

              * str: [String](core_package_structs.html#struct-string) - 待输出的字符串。
              * flush!: [Bool](core_package_intrinsics.html#bool) - 是否将缓存数据区的内容立即刷新写入与标准错误流相关的文件和设备中，true表示立即刷新，false表示暂不刷新 ，默认 false。

示例：
    
    main() {
        try {
            throw NegativeArraySizeException("I am an Exception!")
        } catch (e: NegativeArraySizeException) {
            eprint("NegativeArraySizeException is caught!", flush: true)
        }
    }
    

运行结果：
    
    NegativeArraySizeException is caught!
    

## func eprintln(String)
    
    public func eprintln(str: String): Unit
    

功能：将指定字符串打印到标准错误文本流，末尾添加换行。

如抛出异常时，消息将打印到标准错误文本流（stderr），而不是标准输出（stdout）。

参数：

              * str: [String](core_package_structs.html#struct-string) - 待输出的字符串。

示例：
    
    main() {
        try {
            throw NegativeArraySizeException("I am an Exception!")
        } catch (e: NegativeArraySizeException) {
            eprintln("NegativeArraySizeException is caught!")
        }
    }
    

### init()
    
    public init()
    

功能：构造一个默认的 [IllegalArgumentException](core_package_exceptions.html#class-illegalargumentexception) 实例，默认异常信息为空。

### init(String)
    
    public init(message: String)
    

功能：根据异常信息构造一个 [IllegalArgumentException](core_package_exceptions.html#class-illegalargumentexception) 实例。

参数：

            * message: [String](core_package_structs.html#struct-string) - 异常提示信息。

### func getClassName()
    
    protected override open func getClassName(): String
    

功能：获得类名。

返回值：

            * [String](core_package_structs.html#struct-string) - 类名。

## class IllegalFormatException
    
    public open class IllegalFormatException <: IllegalArgumentException {
        public init()
        public init(message: String)
    }
    

功能：表示变量的格式无效或不标准时的异常类。

父类型：

            * IllegalArgumentException

### init()
    
    public init()
    

功能：构造一个默认的 [IllegalFormatException](core_package_exceptions.html#class-illegalformatexception) 实例，默认异常信息为空。

### init(String)
    
    public init(message: String)
    

功能：根据异常信息构造一个 [IllegalFormatException](core_package_exceptions.html#class-illegalformatexception) 实例。

参数：

            * message: [String](core_package_structs.html#struct-string) - 异常提示信息。

## class IllegalMemoryException
    
    public class IllegalMemoryException <: Exception {
        public init()
        public init(message: String)
    }
    

功能：表示内存操作错误的异常类。

父类型：

            * Exception

### init()
    
    public init()
    

功能：构造一个默认的 [IllegalMemoryException](core_package_exceptions.html#class-illegalmemoryexception) 实例，默认异常信息为空。

### init(String)
    
    public init(message: String)
    

功能：根据指定异常信息构造 [IllegalMemoryException](core_package_exceptions.html#class-illegalmemoryexception) 实例。

参数：

            * message: [String](core_package_structs.html#struct-string) - 异常提示信息。

## class IllegalStateException
    
    public class IllegalStateException <: Exception {
        public init()
        public init(message: String)
    }
    

功能：表示状态非法的异常类。

父类型：

            * Exception

### init()
    
    public init()
    

功能：构造一个默认的 [IllegalStateException](core_package_exceptions.html#class-illegalstateexception) 实例，默认异常信息为空。

### init(String)
    
    public init(message: String)
    

功能：根据异常信息构造一个 [IllegalStateException](core_package_exceptions.html#class-illegalstateexception) 实例。

参数：

            * message: [String](core_package_structs.html#struct-string) - 异常提示信息。

## class IncompatiblePackageException
    
    public class IncompatiblePackageException <: Exception {
        public init()
        public init(message: String)
    }
    

功能：表示包不兼容的异常类。

父类型：

            * Exception

### init()
    
    public init()
    

功能：构造一个默认的 [IncompatiblePackageException](core_package_exceptions.html#class-incompatiblepackageexception) 实例，默认异常信息为空。

### init(String)
    
    public init(message: String)
    

功能：根据异常信息构造一个 [IncompatiblePackageException](core_package_exceptions.html#class-incompatiblepackageexception)实例。

参数：

            * message: [String](core_package_structs.html#struct-string) - 异常提示信息。

## class IndexOutOfBoundsException
    
    public class IndexOutOfBoundsException <: Exception {
        public init()
        public init(message: String)
    }
    

功能：表示索引越界的异常类。

父类型：

            * Exception

### init()
    
    public init()
    

功能：构造一个默认的 [IndexOutOfBoundsException](core_package_exceptions.html#class-indexoutofboundsexception) 实例，默认异常信息为空。

### init(String)
    
    public init(message: String)
    

功能：根据异常信息构造一个 [IndexOutOfBoundsException](core_package_exceptions.html#class-indexoutofboundsexception) 实例。

参数：

            * message: [String](core_package_structs.html#struct-string) - 异常提示信息。

## class InternalError
    
    public class InternalError <: Error
    

功能：表示内部错误的错误类，该类不可初始化，但是可以被捕获到。

父类型：

            * Error

## class NegativeArraySizeException
    
    public class NegativeArraySizeException <: Exception {
        public init()
        public init(message: String)
    }
    

功能：表示数组大小为负数的异常类。

父类型：

            * Exception

### init()
    
    public init()
    

功能：构造一个默认的 [NegativeArraySizeException](core_package_exceptions.html#class-negativearraysizeexception) 实例，默认异常信息为空。

### init(String)
    
    public init(message: String)
    

功能：根据异常信息构造一个 [NegativeArraySizeException](core_package_exceptions.html#class-negativearraysizeexception) 实例。

参数：

            * message: [String](core_package_structs.html#struct-string) - 异常提示信息。

## class NoneValueException
    
    public class NoneValueException <: Exception {
        public init()
        public init(message: String)
    }
    

功能：表示 [Option](core_package_enums.html#enum-optiont)<T> 实例的值为 `None` 的异常类，通常在 `getOrThrow` 函数中被抛出。

父类型：

            * Exception

### init()
    
    public init()
    

功能：构造一个默认的 [NoneValueException](core_package_exceptions.html#class-nonevalueexception) 实例，默认异常信息为空。

### init(String)
    
    public init(message: String)
    

功能：根据异常信息构造一个 [NoneValueException](core_package_exceptions.html#class-nonevalueexception) 实例。

参数：

            * message: [String](core_package_structs.html#struct-string) - 异常提示信息。

## class OutOfMemoryError
    
    public class OutOfMemoryError <: Error
    

功能：表示内存不足错误的错误类，该类不可被继承，不可初始化，但是可以被捕获到。

父类型：

            * Error

## class OverflowException
    
    public class OverflowException <: ArithmeticException {
        public init()
        public init(message: String)
    }
    

功能：表示算术运算溢出的异常类。

父类型：

            * ArithmeticException

### init()
    
    public init()
    

功能：构造一个默认的 [OverflowException](core_package_exceptions.html#class-overflowexception) 实例，默认异常信息为空。

### init(String)
    
    public init(message: String)
    

功能：根据指定异常信息构造 [OverflowException](core_package_exceptions.html#class-overflowexception) 实例。

参数：

            * message: [String](core_package_structs.html#struct-string) - 异常提示信息。

## class SpawnException
    
    public class SpawnException <: Exception {
        public init()
        public init(message: String)
    }
    

功能：线程异常类，表示线程处理过程中发生异常。

父类型：

            * Exception

### init()
    
    public init()
    

功能：构造一个默认的 [SpawnException](core_package_exceptions.html#class-spawnexception) 实例，默认错误信息为空。

### init(String)
    
    public init(message: String)
    

功能：根据异常信息构造一个 [SpawnException](core_package_exceptions.html#class-spawnexception) 实例。

参数：

            * message: [String](core_package_structs.html#struct-string) - 异常提示信息。

## class StackOverflowError
    
    public class StackOverflowError <: Error
    

功能：表示堆栈溢出错误的错误类，该类不可被继承，不可初始化，但是可以被捕获到。

父类型：

            * Error

### func printStackTrace()
    
    public override func printStackTrace(): Unit
    

功能：向控制台打印堆栈信息。

## class TimeoutException
    
    public class TimeoutException <: Exception {
        public init()
        public init(message: String)
    }
    

功能：当阻塞操作超时时引发异常。

父类型：

            * Exception

### init()
    
    public init()
    

功能：构造一个默认的 [TimeoutException](core_package_exceptions.html#class-timeoutexception) 实例，默认异常信息为空。

### init(String)
    
    public init(message: String)
    

功能：根据指定异常信息构造 [TimeoutException](core_package_exceptions.html#class-timeoutexception) 实例。

参数：

            * message: [String](core_package_structs.html#struct-string) - 异常提示信息。

## class UnsupportedException
    
    public class UnsupportedException <: Exception {
        public init()
        public init(message: String)
    }
    

功能：表示功能未支持的异常类。

父类型：

            * Exception

### init()
    
    public init()
    

功能：构造一个默认的 [UnsupportedException](core_package_exceptions.html#class-unsupportedexception) 实例，默认异常信息为空。

### init(String)
    
    public init(message: String)
    

功能：根据指定异常信息构造 [UnsupportedException](core_package_exceptions.html#class-unsupportedexception) 实例。

参数：

            * message: [String](core_package_structs.html#struct-string) - 异常提示信息。
