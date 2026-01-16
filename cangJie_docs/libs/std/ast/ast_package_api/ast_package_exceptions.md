Range异常类 class ASTException
>     
>     public class ASTException <: Exception {
>         public init()
>         public init(message: String)
>     }
>     
> 
> 功能：ast 库的异常类，在 ast 库调用过程中发生异常时使用。 父类型：
>                * [Exception](../../core/core_package_api/core_package_exceptions.html#class-exception)
> init()
>     
>     public init()
>     
> 
> 功能：构造一个默认的 [ASTException](ast_package_exceptions.html#class-astexception) 对象。 init(String)
>     
>     public init(message: String)
>     
> 
> 功能：根据异常信息构造一个 [ASTException](ast_package_exceptions.html#class-astexception) 对象。 参数：
>                * message: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 异常信息。
> class MacroContextException
>     
>     public class MacroContextException <: Exception {
>         public init()
>         public init(message: String)
>     }
>     
> 
> 功能：ast库的上下文宏异常类，在上下文宏的相关接口中发生异常时使用。 父类型：
>                * [Exception](../../core/core_package_api/core_package_exceptions.html#class-exception)
> init()
>     
>     public init()
>     
> 
> 功能：构造一个默认的 [MacroContextException](ast_package_exceptions.html#class-macrocontextexception) 对象。 init(String)
>     
>     public init(message: String)
>     
> 
> 功能：根据异常信息构造一个 [MacroContextException](ast_package_exceptions.html#class-macrocontextexception) 对象。 参数：
>                * message: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 异常信息。
> class ParseASTException
>     
>     public class ParseASTException <: Exception {
>         public init()
>         public init(message: String)
>     }
>     
> 
> 功能：ast 库的解析异常类，在节点解析过程中发生异常时使用。 父类型：
>                * [Exception](../../core/core_package_api/core_package_exceptions.html#class-exception)
> init()
>     
>     public init()
>     
> 
> 功能：构造一个默认的 [ParseASTException](ast_package_exceptions.html#class-parseastexception) 对象。 init(String)
>     
>     public init(message: String)
>     
> 
> 功能：根据异常信息构造一个 [ParseASTException](ast_package_exceptions.html#class-parseastexception) 对象。 参数：
>                * message: [String](../../core/core_package_api/core_package_structs.html#struct-string) \- 异常信息。
