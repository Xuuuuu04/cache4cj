枚举 enum DiagReportLevel
>     
>     public enum DiagReportLevel {
>         ERROR|
>         WARNING
>     }
>     
> 
> 功能：表示报错接口的信息等级，支持 `ERROR` 和 `WARNING` 两种等级。 ERROR
>     
>     ERROR
>     
> 
> 功能：构造一个表示 ERROR 的枚举实例。 WARNING
>     
>     WARNING
>     
> 
> 功能：构造一个表示 WARNING 的枚举实例。 func level()
>     
>     public func level(): Int32
>     
> 
> 功能：返回枚举值对应的整型。 返回值：
>                * [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) \- 枚举值对应的整型。`ERROR` 返回 0，`WARNING` 返回 1。
> enum ImportKind
>     
>     public enum ImportKind <: ToString {
>         Single | Alias | All | Multi
>     }
>     
> 
> 功能：表示导入语句的类型。 父类型：
>                * [ToString](../../core/core_package_api/core_package_interfaces.html#interface-tostring)
> Single
>     
>     Single
>     
> 
> 功能：表示单导入，如 `import a.b`。 Alias
>     
>     Alias
>     
> 
> 功能：表示别名导入，如 `import a.b as c`。 All
>     
>     All
>     
> 
> 功能：表示全导入，如 `import a.b.*`。 Multi
>     
>     Multi
>     
> 
> 功能：表示多导入，如 `import a.{b, c, d}`。 func toString()
>     
>     public func toString(): String
>     
> 
> 功能：将 [ImportKind](ast_package_enums.html#enum-importkind) 类型转化为字符串类型表示。 返回值：
>                * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- [ImportKind](ast_package_enums.html#enum-importkind) 转换后的字符串值。
> enum TokenKind
>     
>     public enum TokenKind <: ToString {
>         DOT|                      /*  "."           */
>         COMMA|                    /*  ","           */
>         LPAREN|                   /*  "("           */
>         RPAREN|                   /*  ")"           */
>         LSQUARE|                  /*  "["           */
>         RSQUARE|                  /*  "]"           */
>         LCURL|                    /*  "{"           */
>         RCURL|                    /*  "}"           */
>         EXP|                      /*  "**"          */
>         MUL|                      /*  "*"           */
>         MOD|                      /*  "%"           */
>         DIV|                      /*  "/"           */
>         ADD|                      /*  "+"           */
>         SUB|                      /*  "-"           */
>         INCR|                     /*  "++"          */
>         DECR|                     /*  "--"          */
>         AND|                      /*  "&&"          */
>         OR|                       /*  "||"          */
>         COALESCING|               /*  "??"          */
>         PIPELINE|                 /*  "|>"          */
>         COMPOSITION|              /*  "~>"          */
>         NOT|                      /*  "!"           */
>         BITAND|                   /*  "&"           */
>         BITOR|                    /*  "|"           */
>         BITXOR|                   /*  "^"           */
>         BITNOT|                   /*  "~"           */
>         LSHIFT|                   /*  "<<"          */
>         RSHIFT|                   /*  ">>"          */
>         COLON|                    /*  ":"           */
>         SEMI|                     /*  ";"           */
>         ASSIGN|                   /*  "="           */
>         ADD_ASSIGN|               /*  "+="          */
>         SUB_ASSIGN|               /*  "-="          */
>         MUL_ASSIGN|               /*  "*="          */
>         EXP_ASSIGN|               /*  "**="         */
>         DIV_ASSIGN|               /*  "/="          */
>         MOD_ASSIGN|               /*  "%="          */
>         AND_ASSIGN|               /*  "&&="         */
>         OR_ASSIGN|                /*  "||="         */
>         BITAND_ASSIGN|            /*  "&="          */
>         BITOR_ASSIGN|             /*  "|="          */
>         BITXOR_ASSIGN|            /*  "^="          */
>         LSHIFT_ASSIGN|            /*  "<<="         */
>         RSHIFT_ASSIGN|            /*  ">>="         */
>         ARROW|                    /*  "->"          */
>         BACKARROW|                /*  "<-"          */
>         DOUBLE_ARROW|             /*  "=>"          */
>         RANGEOP|                  /*  ".."          */
>         CLOSEDRANGEOP|            /*  "..="         */
>         ELLIPSIS|                 /*  "..."         */
>         HASH|                     /*  "#"           */
>         AT|                       /*  "@"           */
>         QUEST|                    /*  "?"           */
>         LT|                       /*  "<"           */
>         GT|                       /*  ">"           */
>         LE|                       /*  "<="          */
>         GE|                       /*  ">="          */
>         IS|                       /*  "is"          */
>         AS|                       /*  "as"          */
>         NOTEQ|                    /*  "!="          */
>         EQUAL|                    /*  "=="          */
>         WILDCARD|                 /*  "_"           */
>         INT8|                     /*  "Int8"        */
>         INT16|                    /*  "Int16"       */
>         INT32|                    /*  "Int32"       */
>         INT64|                    /*  "Int64"       */
>         INTNATIVE|                /*  "IntNative"   */
>         UINT8|                    /*  "UInt8"       */
>         UINT16|                   /*  "UInt16"      */
>         UINT32|                   /*  "UInt32"      */
>         UINT64|                   /*  "UInt64"      */
>         UINTNATIVE|               /*  "UIntNative"  */
>         FLOAT16|                  /*  "Float16"     */
>         FLOAT32|                  /*  "Float32"     */
>         FLOAT64|                  /*  "Float64"     */
>         RUNE|                     /*  "Rune"        */
>         BOOLEAN|                  /*  "Bool"        */
>         NOTHING|                  /*  "Nothing"     */
>         UNIT|                     /*  "Unit"        */
>         STRUCT|                   /*  "struct"      */
>         ENUM|                     /*  "enum"        */
>         VARRAY|                   /*  "VArray"      */
>         THISTYPE|                 /*  "This"        */
>         PACKAGE|                  /*  "package"     */
>         IMPORT|                   /*  "import"      */
>         CLASS|                    /*  "class"       */
>         INTERFACE|                /*  "interface"   */
>         FUNC|                     /*  "func"        */
>         MACRO|                    /*  "macro"       */
>         QUOTE|                    /*  "quote"       */
>         DOLLAR|                   /*  "$"           */
>         LET|                      /*  "let"         */
>         VAR|                      /*  "var"         */
>         CONST|                    /*  "const"       */
>         TYPE|                     /*  "type"        */
>         INIT|                     /*  "init"        */
>         THIS|                     /*  "this"        */
>         SUPER|                    /*  "super"       */
>         IF|                       /*  "if"          */
>         ELSE|                     /*  "else"        */
>         CASE|                     /*  "case"        */
>         TRY|                      /*  "try"         */
>         CATCH|                    /*  "catch"       */
>         FINALLY|                  /*  "finally"     */
>         FOR|                      /*  "for"         */
>         DO|                       /*  "do"          */
>         WHILE|                    /*  "while"       */
>         THROW|                    /*  "throw"       */
>         RETURN|                   /*  "return"      */
>         CONTINUE|                 /*  "continue"    */
>         BREAK|                    /*  "break"       */
>         IN|                       /*  "in"          */
>         NOT_IN|                   /*  "!in"         */
>         MATCH|                    /*  "match"       */
>         WHERE|                    /*  "where"       */
>         EXTEND|                   /*  "extend"      */
>         WITH|                     /*  "with"        */
>         PROP|                     /*  "prop"        */
>         STATIC|                   /*  "static"      */
>         PUBLIC|                   /*  "public"      */
>         PRIVATE|                  /*  "private"     */
>         INTERNAL|                 /*  "internal"    */
>         PROTECTED|                /*  "protected"   */
>         OVERRIDE|                 /*  "override"    */
>         REDEF|                    /*  "redef"       */
>         ABSTRACT|                 /*  "abstract"    */
>         SEALED|                   /*  "sealed"      */
>         OPEN|                     /*  "open"        */
>         FOREIGN|                  /*  "foreign"     */
>         INOUT|                    /*  "inout"       */
>         MUT|                      /*  "mut"         */
>         UNSAFE|                   /*  "unsafe"      */
>         OPERATOR|                 /*  "operator"    */
>         SPAWN|                    /*  "spawn"       */
>         SYNCHRONIZED|             /*  "synchronized" */
>         UPPERBOUND|               /*  "<:"          */
>         MAIN|                     /*  "main"        */
>         IDENTIFIER|               /*  "x"           */
>         PACKAGE_IDENTIFIER|       /*  e.g. "x-y"  */
>         INTEGER_LITERAL|          /*  e.g. "1"      */
>         RUNE_BYTE_LITERAL|        /*  e.g. "b'x'"   */
>         FLOAT_LITERAL|            /*  e.g. "'1.0'"  */
>         COMMENT|                  /*  e.g. "/*xx*/" */
>         NL|                       /*  newline         */
>         END|                      /*  end of file     */
>         SENTINEL|                 /*  ";"             */
>         RUNE_LITERAL|             /*  e.g. "r'x'"      */
>         STRING_LITERAL|           /*  e.g. ""xx""     */
>         SINGLE_QUOTED_STRING_LITERAL|
>                                   /*  e.g. "'xx'"    */
>         JSTRING_LITERAL|          /*  e.g. "J"xx""     */
>         MULTILINE_STRING|         /*  e.g. """"aaa""""   */
>         MULTILINE_RAW_STRING|     /*  e.g. "#"aaa"#"     */
>         BOOL_LITERAL|             /*  "true" or "false"  */
>         UNIT_LITERAL|             /*  "()"               */
>         DOLLAR_IDENTIFIER|        /*  e.g. "$x"          */
>         ANNOTATION|               /*  e.g. "@When"       */
>         AT_EXCL|                  /*  e.g. "@!"          */
>         ILLEGAL|
>         ...
>     }
>     
> 
> 功能：表示仓颉编译内部所有的词法结构，包括符号、关键字、标识符、换行等。 父类型：
>                * [ToString](../../core/core_package_api/core_package_interfaces.html#interface-tostring)
> ABSTRACT
>     
>     ABSTRACT
>     
> 
> 功能：构造一个表示 `abstract` 的枚举实例。 ADD
>     
>     ADD
>     
> 
> 功能：构造一个表示 `+` 的枚举实例。 ADD_ASSIGN
>     
>     ADD_ASSIGN
>     
> 
> 功能：构造一个表示 `+=` 的枚举实例。 AND
>     
>     AND
>     
> 
> 功能：构造一个表示 `&&` 的枚举实例。 AND_ASSIGN
>     
>     AND_ASSIGN
>     
> 
> 功能：构造一个表示 `&&=` 的枚举实例。 ANNOTATION
>     
>     ANNOTATION
>     
> 
> 功能：构造一个表示 _注解_ 的枚举实例。 ARROW
>     
>     ARROW
>     
> 
> 功能：构造一个表示 `->` 的枚举实例。 AS
>     
>     AS
>     
> 
> 功能：构造一个表示 `as` 的枚举实例。 ASSIGN
>     
>     ASSIGN
>     
> 
> 功能：构造一个表示 `=` 的枚举实例。 AT
>     
>     AT
>     
> 
> 功能：构造一个表示 `@` 的枚举实例。 AT_EXCL
>     
>     AT_EXCL
>     
> 
> 功能：构造一个表示 `@!` 的枚举实例。 BACKARROW
>     
>     BACKARROW
>     
> 
> 功能：构造一个表示 `<-` 的枚举实例。 BITAND
>     
>     BITAND
>     
> 
> 功能：构造一个表示 `&` 的枚举实例。 BITAND_ASSIGN
>     
>     BITAND_ASSIGN
>     
> 
> 功能：构造一个表示 `&=` 的枚举实例。 BITNOT
>     
>     BITNOT
>     
> 
> 功能：构造一个表示 `~` 的枚举实例。 BITOR
>     
>     BITOR
>     
> 
> 功能：构造一个表示 `|` 的枚举实例。 BITOR_ASSIGN
>     
>     BITOR_ASSIGN
>     
> 
> 功能：构造一个表示 `|=` 的枚举实例。 BITXOR
>     
>     BITXOR
>     
> 
> 功能：构造一个表示 `^` 的枚举实例。 BITXOR_ASSIGN
>     
>     BITXOR_ASSIGN
>     
> 
> 功能：构造一个表示 `^=` 的枚举实例。 BOOLEAN
>     
>     BOOLEAN
>     
> 
> 功能：构造一个表示 `bool` 的枚举实例。 BOOL_LITERAL
>     
>     BOOL_LITERAL
>     
> 
> 功能：构造一个表示 _布尔类型字面量_ 的枚举实例。 BREAK
>     
>     BREAK
>     
> 
> 功能：构造一个表示 `break` 的枚举实例。 CASE
>     
>     CASE
>     
> 
> 功能：构造一个表示 `case` 的枚举实例。 CATCH
>     
>     CATCH
>     
> 
> 功能：构造一个表示 `catch` 的枚举实例。 CLASS
>     
>     CLASS
>     
> 
> 功能：构造一个表示 `class` 的枚举实例。 CLOSEDRANGEOP
>     
>     CLOSEDRANGEOP
>     
> 
> 功能：构造一个表示 `..=` 的枚举实例。 COALESCING
>     
>     COALESCING
>     
> 
> 功能：构造一个表示 `??` 的枚举实例。 COLON
>     
>     COLON
>     
> 
> 功能：构造一个表示 `:` 的枚举实例。 COMMA
>     
>     COMMA
>     
> 
> 功能：构造一个表示 `,` 的枚举实例。 COMMENT
>     
>     COMMENT
>     
> 
> 功能：构造一个表示 _注释_ 的枚举实例。 COMPOSITION
>     
>     COMPOSITION
>     
> 
> 功能：构造一个表示 `~>` 的枚举实例。 CONST
>     
>     CONST
>     
> 
> 功能：构造一个表示 `const` 的枚举实例。 CONTINUE
>     
>     CONTINUE
>     
> 
> 功能：构造一个表示 `continue` 的枚举实例。 DECR
>     
>     DECR
>     
> 
> 功能：构造一个表示 `--` 的枚举实例。 DIV
>     
>     DIV
>     
> 
> 功能：构造一个表示 `/` 的枚举实例。 DIV_ASSIGN
>     
>     DIV_ASSIGN
>     
> 
> 功能：构造一个表示 `/=` 的枚举实例。 DO
>     
>     DO
>     
> 
> 功能：构造一个表示 `do` 的枚举实例。 DOLLAR
>     
>     DOLLAR
>     
> 
> 功能：构造一个表示 `$` 的枚举实例。 DOLLAR_IDENTIFIER
>     
>     DOLLAR_IDENTIFIER
>     
> 
> 功能：构造一个表示 _插值字符串_ 的枚举实例。 DOT
>     
>     DOT
>     
> 
> 功能：构造一个表示 `.` 的枚举实例。 DOUBLE_ARROW
>     
>     DOUBLE_ARROW
>     
> 
> 功能：构造一个表示 `=>` 的枚举实例。 ELLIPSIS
>     
>     ELLIPSIS
>     
> 
> 功能：构造一个表示 `...` 的枚举实例。 ELSE
>     
>     ELSE
>     
> 
> 功能：构造一个表示 `else` 的枚举实例。 END
>     
>     END
>     
> 
> 功能：构造一个表示 `EOF` 的枚举实例。 ENUM
>     
>     ENUM
>     
> 
> 功能：构造一个表示 `enum` 的枚举实例。 EQUAL
>     
>     EQUAL
>     
> 
> 功能：构造一个表示 `==` 的枚举实例。 EXP
>     
>     EXP
>     
> 
> 功能：构造一个表示 `**` 的枚举实例。 EXP_ASSIGN
>     
>     EXP_ASSIGN
>     
> 
> 功能：构造一个表示 `**=` 的枚举实例。 EXTEND
>     
>     EXTEND
>     
> 
> 功能：构造一个表示 `extend` 的枚举实例。 FINALLY
>     
>     FINALLY
>     
> 
> 功能：构造一个表示 `finally` 的枚举实例。 FLOAT16
>     
>     FLOAT16
>     
> 
> 功能：构造一个表示 `float16` 的枚举实例。 FLOAT32
>     
>     FLOAT32
>     
> 
> 功能：构造一个表示 `float32` 的枚举实例。 FLOAT64
>     
>     FLOAT64
>     
> 
> 功能：构造一个表示 `float64` 的枚举实例。 FLOAT_LITERAL
>     
>     FLOAT_LITERAL
>     
> 
> 功能：构造一个表示 _浮点字面量_ 的枚举实例。 FOR
>     
>     FOR
>     
> 
> 功能：构造一个表示 `for` 的枚举实例。 FOREIGN
>     
>     FOREIGN
>     
> 
> 功能：构造一个表示 `foreign` 的枚举实例。 FUNC
>     
>     FUNC
>     
> 
> 功能：构造一个表示 `func` 的枚举实例。 GE
>     
>     GE
>     
> 
> 功能：构造一个表示 `>=` 的枚举实例。 GT
>     
>     GT
>     
> 
> 功能：构造一个表示 `>` 的枚举实例。 HASH
>     
>     HASH
>     
> 
> 功能：构造一个表示 `#` 的枚举实例。 IDENTIFIER
>     
>     IDENTIFIER
>     
> 
> 功能：构造一个表示 _标识符_ 的枚举实例。 PACKAGE_IDENTIFIER
>     
>     PACKAGE_IDENTIFIER
>     
> 
> 功能：构造一个表示 _包标识符_ 的枚举实例。 IF
>     
>     IF
>     
> 
> 功能：构造一个表示 `if` 的枚举实例。 ILLEGAL
>     
>     ILLEGAL
>     
> 
> 功能：构造一个表示 _非法_ 的枚举实例。 IMPORT
>     
>     IMPORT
>     
> 
> 功能：构造一个表示 `import` 的枚举实例。 IN
>     
>     IN
>     
> 
> 功能：构造一个表示 `in` 的枚举实例。 INCR
>     
>     INCR
>     
> 
> 功能：构造一个表示 `++` 的枚举实例。 INIT
>     
>     INIT
>     
> 
> 功能：构造一个表示 `init` 的枚举实例。 INOUT
>     
>     INOUT
>     
> 
> 功能：构造一个表示 `inout` 的枚举实例。 INT16
>     
>     INT16
>     
> 
> 功能：构造一个表示 `int16` 的枚举实例。 INT32
>     
>     INT32
>     
> 
> 功能：构造一个表示 `int32` 的枚举实例。 INT64
>     
>     INT64
>     
> 
> 功能：构造一个表示 `int64` 的枚举实例。 INT8
>     
>     INT8
>     
> 
> 功能：构造一个表示 `int8` 的枚举实例。 INTEGER_LITERAL
>     
>     INTEGER_LITERAL
>     
> 
> 功能：构造一个表示 _整型字面量_ 的枚举实例。 INTERFACE
>     
>     INTERFACE
>     
> 
> 功能：构造一个表示 `interface` 的枚举实例。 INTERNAL
>     
>     INTERNAL
>     
> 
> 功能：构造一个表示 `internal` 的枚举实例。 INTNATIVE
>     
>     INTNATIVE
>     
> 
> 功能：构造一个表示 `intnative` 的枚举实例。 IS
>     
>     IS
>     
> 
> 功能：构造一个表示 `is` 的枚举实例。 JSTRING_LITERAL
>     
>     JSTRING_LITERAL
>     
> 
> 功能：构造一个表示 JavaSTRING字面量 的枚举实例。 LCURL
>     
>     LCURL
>     
> 
> 功能：构造一个表示 `{` 的枚举实例。 LE
>     
>     LE
>     
> 
> 功能：构造一个表示 `<=` 的枚举实例。 LET
>     
>     LET
>     
> 
> 功能：构造一个表示 `let` 的枚举实例。 LPAREN
>     
>     LPAREN
>     
> 
> 功能：构造一个表示 `(` 的枚举实例。 LSHIFT
>     
>     LSHIFT
>     
> 
> 功能：构造一个表示 `<<` 的枚举实例。 LSHIFT_ASSIGN
>     
>     LSHIFT_ASSIGN
>     
> 
> 功能：构造一个表示 `<<=` 的枚举实例。 LSQUARE
>     
>     LSQUARE
>     
> 
> 功能：构造一个表示 `[` 的枚举实例。 LT
>     
>     LT
>     
> 
> 功能：构造一个表示 `<` 的枚举实例。 MACRO
>     
>     MACRO
>     
> 
> 功能：构造一个表示 `macro` 的枚举实例。 MAIN
>     
>     MAIN
>     
> 
> 功能：构造一个表示 `main` 的枚举实例。 MATCH
>     
>     MATCH
>     
> 
> 功能：构造一个表示 `match` 的枚举实例。 MOD
>     
>     MOD
>     
> 
> 功能：构造一个表示 `%` 的枚举实例。 MOD_ASSIGN
>     
>     MOD_ASSIGN
>     
> 
> 功能：构造一个表示 `%=` 的枚举实例。 MUL
>     
>     MUL
>     
> 
> 功能：构造一个表示 `*` 的枚举实例。 MULTILINE_RAW_STRING
>     
>     MULTILINE_RAW_STRING
>     
> 
> 功能：构造一个表示 _多行原始字符串字面量_ 的枚举实例。 MULTILINE_STRING
>     
>     MULTILINE_STRING
>     
> 
> 功能：构造一个表示 _多行字符串字面量_ 的枚举实例。 MUL_ASSIGN
>     
>     MUL_ASSIGN
>     
> 
> 功能：构造一个表示 `*=` 的枚举实例。 MUT
>     
>     MUT
>     
> 
> 功能：构造一个表示 `mut` 的枚举实例。 NL
>     
>     NL
>     
> 
> 功能：构造一个表示 _换行符_ 的枚举实例。 NOT
>     
>     NOT
>     
> 
> 功能：构造一个表示 `!` 的枚举实例。 NOTEQ
>     
>     NOTEQ
>     
> 
> 功能：构造一个表示 `!=` 的枚举实例。 NOTHING
>     
>     NOTHING
>     
> 
> 功能：构造一个表示 `nothing` 的枚举实例。 NOT_IN
>     
>     NOT_IN
>     
> 
> 功能：构造一个表示 `!in` 的枚举实例。 OPEN
>     
>     OPEN
>     
> 
> 功能：构造一个表示 `open` 的枚举实例。 OPERATOR
>     
>     OPERATOR
>     
> 
> 功能：构造一个表示 `operator` 的枚举实例。 OR
>     
>     OR
>     
> 
> 功能：构造一个表示 `||` 的枚举实例。 OR_ASSIGN
>     
>     OR_ASSIGN
>     
> 
> 功能：构造一个表示 `||=` 的枚举实例。 OVERRIDE
>     
>     OVERRIDE
>     
> 
> 功能：构造一个表示 `override` 的枚举实例。 PACKAGE
>     
>     PACKAGE
>     
> 
> 功能：构造一个表示 `package` 的枚举实例。 PIPELINE
>     
>     PIPELINE
>     
> 
> 功能：构造一个表示 `|>` 的枚举实例。 PRIVATE
>     
>     PRIVATE
>     
> 
> 功能：构造一个表示 `private` 的枚举实例。 PROP
>     
>     PROP
>     
> 
> 功能：构造一个表示 `prop` 的枚举实例。 PROTECTED
>     
>     PROTECTED
>     
> 
> 功能：构造一个表示 `protected` 的枚举实例。 PUBLIC
>     
>     PUBLIC
>     
> 
> 功能：构造一个表示 `public` 的枚举实例。 QUEST
>     
>     QUEST
>     
> 
> 功能：构造一个表示 `?` 的枚举实例。 QUOTE
>     
>     QUOTE
>     
> 
> 功能：构造一个表示 `quote` 的枚举实例。 RANGEOP
>     
>     RANGEOP
>     
> 
> 功能：构造一个表示 `..` 的枚举实例。 RCURL
>     
>     RCURL
>     
> 
> 功能：构造一个表示 `}` 的枚举实例。 REDEF
>     
>     REDEF
>     
> 
> 功能：构造一个表示 `redef` 的枚举实例。 RETURN
>     
>     RETURN
>     
> 
> 功能：构造一个表示 `return` 的枚举实例。 RPAREN
>     
>     RPAREN
>     
> 
> 功能：构造一个表示 `)` 的枚举实例。 RSHIFT
>     
>     RSHIFT
>     
> 
> 功能：构造一个表示 `>>` 的枚举实例。 RSHIFT_ASSIGN
>     
>     RSHIFT_ASSIGN
>     
> 
> 功能：构造一个表示 `>>=` 的枚举实例。 RSQUARE
>     
>     RSQUARE
>     
> 
> 功能：构造一个表示 `]` 的枚举实例。 RUNE
>     
>     RUNE
>     
> 
> 功能：构造一个表示 `Rune` 的枚举实例。 RUNE_BYTE_LITERAL
>     
>     RUNE_BYTE_LITERAL
>     
> 
> 功能：构造一个表示 _字符字节字面量_ 的枚举实例。 RUNE_LITERAL
>     
>     RUNE_LITERAL
>     
> 
> 功能：构造一个表示 _字符字面量_ 的枚举实例。 SEALED
>     
>     SEALED
>     
> 
> 功能：构造一个表示 `sealed` 的枚举实例。 SEMI
>     
>     SEMI
>     
> 
> 功能：构造一个表示 `;` 的枚举实例。 SENTINEL
>     
>     SENTINEL
>     
> 
> 功能：构造一个表示 `;` 的枚举实例。 SINGLE_QUOTED_STRING_LITERAL
>     
>     SINGLE_QUOTED_STRING_LITERAL
>     
> 
> 功能：构造一个表示 _单引号字符串字面量_ 的枚举实例。 SPAWN
>     
>     SPAWN
>     
> 
> 功能：构造一个表示 `spawn` 的枚举实例。 STATIC
>     
>     STATIC
>     
> 
> 功能：构造一个表示 `static` 的枚举实例。 STRING_LITERAL
>     
>     STRING_LITERAL
>     
> 
> 功能：构造一个表示 _双引号字符串字面量_ 的枚举实例。 STRUCT
>     
>     STRUCT
>     
> 
> 功能：构造一个表示 `struct` 的枚举实例。 SUB
>     
>     SUB
>     
> 
> 功能：构造一个表示 `-` 的枚举实例。 SUB_ASSIGN
>     
>     SUB_ASSIGN
>     
> 
> 功能：构造一个表示 `-=` 的枚举实例。 SUPER
>     
>     SUPER
>     
> 
> 功能：构造一个表示 `super` 的枚举实例。 SYNCHRONIZED
>     
>     SYNCHRONIZED
>     
> 
> 功能：构造一个表示 `synchronized` 的枚举实例。 THIS
>     
>     THIS
>     
> 
> 功能：构造一个表示 `this` 的枚举实例。 THISTYPE
>     
>     THISTYPE
>     
> 
> 功能：构造一个表示 `This` 的枚举实例。 THROW
>     
>     THROW
>     
> 
> 功能：构造一个表示 `throw` 的枚举实例。 TRY
>     
>     TRY
>     
> 
> 功能：构造一个表示 `try` 的枚举实例。 TYPE
>     
>     TYPE
>     
> 
> 功能：构造一个表示 `type` 的枚举实例。 UINT16
>     
>     UINT16
>     
> 
> 功能：构造一个表示 `uint16` 的枚举实例。 UINT32
>     
>     UINT32
>     
> 
> 功能：构造一个表示 `uint32` 的枚举实例。 UINT64
>     
>     UINT64
>     
> 
> 功能：构造一个表示 `uint64` 的枚举实例。 UINT8
>     
>     UINT8
>     
> 
> 功能：构造一个表示 `uint8` 的枚举实例。 UINTNATIVE
>     
>     UINTNATIVE
>     
> 
> 功能：构造一个表示 `uintnative` 的枚举实例。 UNIT
>     
>     UNIT
>     
> 
> 功能：构造一个表示 `unit` 的枚举实例。 UNIT_LITERAL
>     
>     UNIT_LITERAL
>     
> 
> 功能：构造一个表示 `unit` 字面量的枚举实例。 UNSAFE
>     
>     UNSAFE
>     
> 
> 功能：构造一个表示 `unsafe` 的枚举实例。 UPPERBOUND
>     
>     UPPERBOUND
>     
> 
> 功能：构造一个表示 `<:` 的枚举实例。 VAR
>     
>     VAR
>     
> 
> 功能：构造一个表示 `var` 的枚举实例。 VARRAY
>     
>     VARRAY
>     
> 
> 功能：构造一个表示 `varray` 的枚举实例。 WHERE
>     
>     WHERE
>     
> 
> 功能：构造一个表示 `where` 的枚举实例。 WHILE
>     
>     WHILE
>     
> 
> 功能：构造一个表示 `while` 的枚举实例。 WILDCARD
>     
>     WILDCARD
>     
> 
> 功能：构造一个表示 `_` 的枚举实例。 WITH
>     
>     WITH
>     
> 
> 功能：构造一个表示 `with` 的枚举实例。枚举 enum DiagReportLevel
>     
>     public enum DiagReportLevel {
>         ERROR|
>         WARNING
>     }
>     
> 
> 功能：表示报错接口的信息等级，支持 `ERROR` 和 `WARNING` 两种等级。 ERROR
>     
>     ERROR
>     
> 
> 功能：构造一个表示 ERROR 的枚举实例。 WARNING
>     
>     WARNING
>     
> 
> 功能：构造一个表示 WARNING 的枚举实例。 func level()
>     
>     public func level(): Int32
>     
> 
> 功能：返回枚举值对应的整型。 返回值：
>                * [Int32](../../core/core_package_api/core_package_intrinsics.html#int32) \- 枚举值对应的整型。`ERROR` 返回 0，`WARNING` 返回 1。
> enum ImportKind
>     
>     public enum ImportKind <: ToString {
>         Single | Alias | All | Multi
>     }
>     
> 
> 功能：表示导入语句的类型。 父类型：
>                * [ToString](../../core/core_package_api/core_package_interfaces.html#interface-tostring)
> Single
>     
>     Single
>     
> 
> 功能：表示单导入，如 `import a.b`。 Alias
>     
>     Alias
>     
> 
> 功能：表示别名导入，如 `import a.b as c`。 All
>     
>     All
>     
> 
> 功能：表示全导入，如 `import a.b.*`。 Multi
>     
>     Multi
>     
> 
> 功能：表示多导入，如 `import a.{b, c, d}`。 func toString()
>     
>     public func toString(): String
>     
> 
> 功能：将 [ImportKind](ast_package_enums.html#enum-importkind) 类型转化为字符串类型表示。 返回值：
>                * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- [ImportKind](ast_package_enums.html#enum-importkind) 转换后的字符串值。
> enum TokenKind
>     
>     public enum TokenKind <: ToString {
>         DOT|                      /*  "."           */
>         COMMA|                    /*  ","           */
>         LPAREN|                   /*  "("           */
>         RPAREN|                   /*  ")"           */
>         LSQUARE|                  /*  "["           */
>         RSQUARE|                  /*  "]"           */
>         LCURL|                    /*  "{"           */
>         RCURL|                    /*  "}"           */
>         EXP|                      /*  "**"          */
>         MUL|                      /*  "*"           */
>         MOD|                      /*  "%"           */
>         DIV|                      /*  "/"           */
>         ADD|                      /*  "+"           */
>         SUB|                      /*  "-"           */
>         INCR|                     /*  "++"          */
>         DECR|                     /*  "--"          */
>         AND|                      /*  "&&"          */
>         OR|                       /*  "||"          */
>         COALESCING|               /*  "??"          */
>         PIPELINE|                 /*  "|>"          */
>         COMPOSITION|              /*  "~>"          */
>         NOT|                      /*  "!"           */
>         BITAND|                   /*  "&"           */
>         BITOR|                    /*  "|"           */
>         BITXOR|                   /*  "^"           */
>         BITNOT|                   /*  "~"           */
>         LSHIFT|                   /*  "<<"          */
>         RSHIFT|                   /*  ">>"          */
>         COLON|                    /*  ":"           */
>         SEMI|                     /*  ";"           */
>         ASSIGN|                   /*  "="           */
>         ADD_ASSIGN|               /*  "+="          */
>         SUB_ASSIGN|               /*  "-="          */
>         MUL_ASSIGN|               /*  "*="          */
>         EXP_ASSIGN|               /*  "**="         */
>         DIV_ASSIGN|               /*  "/="          */
>         MOD_ASSIGN|               /*  "%="          */
>         AND_ASSIGN|               /*  "&&="         */
>         OR_ASSIGN|                /*  "||="         */
>         BITAND_ASSIGN|            /*  "&="          */
>         BITOR_ASSIGN|             /*  "|="          */
>         BITXOR_ASSIGN|            /*  "^="          */
>         LSHIFT_ASSIGN|            /*  "<<="         */
>         RSHIFT_ASSIGN|            /*  ">>="         */
>         ARROW|                    /*  "->"          */
>         BACKARROW|                /*  "<-"          */
>         DOUBLE_ARROW|             /*  "=>"          */
>         RANGEOP|                  /*  ".."          */
>         CLOSEDRANGEOP|            /*  "..="         */
>         ELLIPSIS|                 /*  "..."         */
>         HASH|                     /*  "#"           */
>         AT|                       /*  "@"           */
>         QUEST|                    /*  "?"           */
>         LT|                       /*  "<"           */
>         GT|                       /*  ">"           */
>         LE|                       /*  "<="          */
>         GE|                       /*  ">="          */
>         IS|                       /*  "is"          */
>         AS|                       /*  "as"          */
>         NOTEQ|                    /*  "!="          */
>         EQUAL|                    /*  "=="          */
>         WILDCARD|                 /*  "_"           */
>         INT8|                     /*  "Int8"        */
>         INT16|                    /*  "Int16"       */
>         INT32|                    /*  "Int32"       */
>         INT64|                    /*  "Int64"       */
>         INTNATIVE|                /*  "IntNative"   */
>         UINT8|                    /*  "UInt8"       */
>         UINT16|                   /*  "UInt16"      */
>         UINT32|                   /*  "UInt32"      */
>         UINT64|                   /*  "UInt64"      */
>         UINTNATIVE|               /*  "UIntNative"  */
>         FLOAT16|                  /*  "Float16"     */
>         FLOAT32|                  /*  "Float32"     */
>         FLOAT64|                  /*  "Float64"     */
>         RUNE|                     /*  "Rune"        */
>         BOOLEAN|                  /*  "Bool"        */
>         NOTHING|                  /*  "Nothing"     */
>         UNIT|                     /*  "Unit"        */
>         STRUCT|                   /*  "struct"      */
>         ENUM|                     /*  "enum"        */
>         VARRAY|                   /*  "VArray"      */
>         THISTYPE|                 /*  "This"        */
>         PACKAGE|                  /*  "package"     */
>         IMPORT|                   /*  "import"      */
>         CLASS|                    /*  "class"       */
>         INTERFACE|                /*  "interface"   */
>         FUNC|                     /*  "func"        */
>         MACRO|                    /*  "macro"       */
>         QUOTE|                    /*  "quote"       */
>         DOLLAR|                   /*  "$"           */
>         LET|                      /*  "let"         */
>         VAR|                      /*  "var"         */
>         CONST|                    /*  "const"       */
>         TYPE|                     /*  "type"        */
>         INIT|                     /*  "init"        */
>         THIS|                     /*  "this"        */
>         SUPER|                    /*  "super"       */
>         IF|                       /*  "if"          */
>         ELSE|                     /*  "else"        */
>         CASE|                     /*  "case"        */
>         TRY|                      /*  "try"         */
>         CATCH|                    /*  "catch"       */
>         FINALLY|                  /*  "finally"     */
>         FOR|                      /*  "for"         */
>         DO|                       /*  "do"          */
>         WHILE|                    /*  "while"       */
>         THROW|                    /*  "throw"       */
>         RETURN|                   /*  "return"      */
>         CONTINUE|                 /*  "continue"    */
>         BREAK|                    /*  "break"       */
>         IN|                       /*  "in"          */
>         NOT_IN|                   /*  "!in"         */
>         MATCH|                    /*  "match"       */
>         WHERE|                    /*  "where"       */
>         EXTEND|                   /*  "extend"      */
>         WITH|                     /*  "with"        */
>         PROP|                     /*  "prop"        */
>         STATIC|                   /*  "static"      */
>         PUBLIC|                   /*  "public"      */
>         PRIVATE|                  /*  "private"     */
>         INTERNAL|                 /*  "internal"    */
>         PROTECTED|                /*  "protected"   */
>         OVERRIDE|                 /*  "override"    */
>         REDEF|                    /*  "redef"       */
>         ABSTRACT|                 /*  "abstract"    */
>         SEALED|                   /*  "sealed"      */
>         OPEN|                     /*  "open"        */
>         FOREIGN|                  /*  "foreign"     */
>         INOUT|                    /*  "inout"       */
>         MUT|                      /*  "mut"         */
>         UNSAFE|                   /*  "unsafe"      */
>         OPERATOR|                 /*  "operator"    */
>         SPAWN|                    /*  "spawn"       */
>         SYNCHRONIZED|             /*  "synchronized" */
>         UPPERBOUND|               /*  "<:"          */
>         MAIN|                     /*  "main"        */
>         IDENTIFIER|               /*  "x"           */
>         PACKAGE_IDENTIFIER|       /*  e.g. "x-y"  */
>         INTEGER_LITERAL|          /*  e.g. "1"      */
>         RUNE_BYTE_LITERAL|        /*  e.g. "b'x'"   */
>         FLOAT_LITERAL|            /*  e.g. "'1.0'"  */
>         COMMENT|                  /*  e.g. "/*xx*/" */
>         NL|                       /*  newline         */
>         END|                      /*  end of file     */
>         SENTINEL|                 /*  ";"             */
>         RUNE_LITERAL|             /*  e.g. "r'x'"      */
>         STRING_LITERAL|           /*  e.g. ""xx""     */
>         SINGLE_QUOTED_STRING_LITERAL|
>                                   /*  e.g. "'xx'"    */
>         JSTRING_LITERAL|          /*  e.g. "J"xx""     */
>         MULTILINE_STRING|         /*  e.g. """"aaa""""   */
>         MULTILINE_RAW_STRING|     /*  e.g. "#"aaa"#"     */
>         BOOL_LITERAL|             /*  "true" or "false"  */
>         UNIT_LITERAL|             /*  "()"               */
>         DOLLAR_IDENTIFIER|        /*  e.g. "$x"          */
>         ANNOTATION|               /*  e.g. "@When"       */
>         AT_EXCL|                  /*  e.g. "@!"          */
>         ILLEGAL|
>         ...
>     }
>     
> 
> 功能：表示仓颉编译内部所有的词法结构，包括符号、关键字、标识符、换行等。 父类型：
>                * [ToString](../../core/core_package_api/core_package_interfaces.html#interface-tostring)
> ABSTRACT
>     
>     ABSTRACT
>     
> 
> 功能：构造一个表示 `abstract` 的枚举实例。 ADD
>     
>     ADD
>     
> 
> 功能：构造一个表示 `+` 的枚举实例。 ADD_ASSIGN
>     
>     ADD_ASSIGN
>     
> 
> 功能：构造一个表示 `+=` 的枚举实例。 AND
>     
>     AND
>     
> 
> 功能：构造一个表示 `&&` 的枚举实例。 AND_ASSIGN
>     
>     AND_ASSIGN
>     
> 
> 功能：构造一个表示 `&&=` 的枚举实例。 ANNOTATION
>     
>     ANNOTATION
>     
> 
> 功能：构造一个表示 _注解_ 的枚举实例。 ARROW
>     
>     ARROW
>     
> 
> 功能：构造一个表示 `->` 的枚举实例。 AS
>     
>     AS
>     
> 
> 功能：构造一个表示 `as` 的枚举实例。 ASSIGN
>     
>     ASSIGN
>     
> 
> 功能：构造一个表示 `=` 的枚举实例。 AT
>     
>     AT
>     
> 
> 功能：构造一个表示 `@` 的枚举实例。 AT_EXCL
>     
>     AT_EXCL
>     
> 
> 功能：构造一个表示 `@!` 的枚举实例。 BACKARROW
>     
>     BACKARROW
>     
> 
> 功能：构造一个表示 `<-` 的枚举实例。 BITAND
>     
>     BITAND
>     
> 
> 功能：构造一个表示 `&` 的枚举实例。 BITAND_ASSIGN
>     
>     BITAND_ASSIGN
>     
> 
> 功能：构造一个表示 `&=` 的枚举实例。 BITNOT
>     
>     BITNOT
>     
> 
> 功能：构造一个表示 `~` 的枚举实例。 BITOR
>     
>     BITOR
>     
> 
> 功能：构造一个表示 `|` 的枚举实例。 BITOR_ASSIGN
>     
>     BITOR_ASSIGN
>     
> 
> 功能：构造一个表示 `|=` 的枚举实例。 BITXOR
>     
>     BITXOR
>     
> 
> 功能：构造一个表示 `^` 的枚举实例。 BITXOR_ASSIGN
>     
>     BITXOR_ASSIGN
>     
> 
> 功能：构造一个表示 `^=` 的枚举实例。 BOOLEAN
>     
>     BOOLEAN
>     
> 
> 功能：构造一个表示 `bool` 的枚举实例。 BOOL_LITERAL
>     
>     BOOL_LITERAL
>     
> 
> 功能：构造一个表示 _布尔类型字面量_ 的枚举实例。 BREAK
>     
>     BREAK
>     
> 
> 功能：构造一个表示 `break` 的枚举实例。 CASE
>     
>     CASE
>     
> 
> 功能：构造一个表示 `case` 的枚举实例。 CATCH
>     
>     CATCH
>     
> 
> 功能：构造一个表示 `catch` 的枚举实例。 CLASS
>     
>     CLASS
>     
> 
> 功能：构造一个表示 `class` 的枚举实例。 CLOSEDRANGEOP
>     
>     CLOSEDRANGEOP
>     
> 
> 功能：构造一个表示 `..=` 的枚举实例。 COALESCING
>     
>     COALESCING
>     
> 
> 功能：构造一个表示 `??` 的枚举实例。 COLON
>     
>     COLON
>     
> 
> 功能：构造一个表示 `:` 的枚举实例。 COMMA
>     
>     COMMA
>     
> 
> 功能：构造一个表示 `,` 的枚举实例。 COMMENT
>     
>     COMMENT
>     
> 
> 功能：构造一个表示 _注释_ 的枚举实例。 COMPOSITION
>     
>     COMPOSITION
>     
> 
> 功能：构造一个表示 `~>` 的枚举实例。 CONST
>     
>     CONST
>     
> 
> 功能：构造一个表示 `const` 的枚举实例。 CONTINUE
>     
>     CONTINUE
>     
> 
> 功能：构造一个表示 `continue` 的枚举实例。 DECR
>     
>     DECR
>     
> 
> 功能：构造一个表示 `--` 的枚举实例。 DIV
>     
>     DIV
>     
> 
> 功能：构造一个表示 `/` 的枚举实例。 DIV_ASSIGN
>     
>     DIV_ASSIGN
>     
> 
> 功能：构造一个表示 `/=` 的枚举实例。 DO
>     
>     DO
>     
> 
> 功能：构造一个表示 `do` 的枚举实例。 DOLLAR
>     
>     DOLLAR
>     
> 
> 功能：构造一个表示 `$` 的枚举实例。 DOLLAR_IDENTIFIER
>     
>     DOLLAR_IDENTIFIER
>     
> 
> 功能：构造一个表示 _插值字符串_ 的枚举实例。 DOT
>     
>     DOT
>     
> 
> 功能：构造一个表示 `.` 的枚举实例。 DOUBLE_ARROW
>     
>     DOUBLE_ARROW
>     
> 
> 功能：构造一个表示 `=>` 的枚举实例。 ELLIPSIS
>     
>     ELLIPSIS
>     
> 
> 功能：构造一个表示 `...` 的枚举实例。 ELSE
>     
>     ELSE
>     
> 
> 功能：构造一个表示 `else` 的枚举实例。 END
>     
>     END
>     
> 
> 功能：构造一个表示 `EOF` 的枚举实例。 ENUM
>     
>     ENUM
>     
> 
> 功能：构造一个表示 `enum` 的枚举实例。 EQUAL
>     
>     EQUAL
>     
> 
> 功能：构造一个表示 `==` 的枚举实例。 EXP
>     
>     EXP
>     
> 
> 功能：构造一个表示 `**` 的枚举实例。 EXP_ASSIGN
>     
>     EXP_ASSIGN
>     
> 
> 功能：构造一个表示 `**=` 的枚举实例。 EXTEND
>     
>     EXTEND
>     
> 
> 功能：构造一个表示 `extend` 的枚举实例。 FINALLY
>     
>     FINALLY
>     
> 
> 功能：构造一个表示 `finally` 的枚举实例。 FLOAT16
>     
>     FLOAT16
>     
> 
> 功能：构造一个表示 `float16` 的枚举实例。 FLOAT32
>     
>     FLOAT32
>     
> 
> 功能：构造一个表示 `float32` 的枚举实例。 FLOAT64
>     
>     FLOAT64
>     
> 
> 功能：构造一个表示 `float64` 的枚举实例。 FLOAT_LITERAL
>     
>     FLOAT_LITERAL
>     
> 
> 功能：构造一个表示 _浮点字面量_ 的枚举实例。 FOR
>     
>     FOR
>     
> 
> 功能：构造一个表示 `for` 的枚举实例。 FOREIGN
>     
>     FOREIGN
>     
> 
> 功能：构造一个表示 `foreign` 的枚举实例。 FUNC
>     
>     FUNC
>     
> 
> 功能：构造一个表示 `func` 的枚举实例。 GE
>     
>     GE
>     
> 
> 功能：构造一个表示 `>=` 的枚举实例。 GT
>     
>     GT
>     
> 
> 功能：构造一个表示 `>` 的枚举实例。 HASH
>     
>     HASH
>     
> 
> 功能：构造一个表示 `#` 的枚举实例。 IDENTIFIER
>     
>     IDENTIFIER
>     
> 
> 功能：构造一个表示 _标识符_ 的枚举实例。 PACKAGE_IDENTIFIER
>     
>     PACKAGE_IDENTIFIER
>     
> 
> 功能：构造一个表示 _包标识符_ 的枚举实例。 IF
>     
>     IF
>     
> 
> 功能：构造一个表示 `if` 的枚举实例。 ILLEGAL
>     
>     ILLEGAL
>     
> 
> 功能：构造一个表示 _非法_ 的枚举实例。 IMPORT
>     
>     IMPORT
>     
> 
> 功能：构造一个表示 `import` 的枚举实例。 IN
>     
>     IN
>     
> 
> 功能：构造一个表示 `in` 的枚举实例。 INCR
>     
>     INCR
>     
> 
> 功能：构造一个表示 `++` 的枚举实例。 INIT
>     
>     INIT
>     
> 
> 功能：构造一个表示 `init` 的枚举实例。 INOUT
>     
>     INOUT
>     
> 
> 功能：构造一个表示 `inout` 的枚举实例。 INT16
>     
>     INT16
>     
> 
> 功能：构造一个表示 `int16` 的枚举实例。 INT32
>     
>     INT32
>     
> 
> 功能：构造一个表示 `int32` 的枚举实例。 INT64
>     
>     INT64
>     
> 
> 功能：构造一个表示 `int64` 的枚举实例。 INT8
>     
>     INT8
>     
> 
> 功能：构造一个表示 `int8` 的枚举实例。 INTEGER_LITERAL
>     
>     INTEGER_LITERAL
>     
> 
> 功能：构造一个表示 _整型字面量_ 的枚举实例。 INTERFACE
>     
>     INTERFACE
>     
> 
> 功能：构造一个表示 `interface` 的枚举实例。 INTERNAL
>     
>     INTERNAL
>     
> 
> 功能：构造一个表示 `internal` 的枚举实例。 INTNATIVE
>     
>     INTNATIVE
>     
> 
> 功能：构造一个表示 `intnative` 的枚举实例。 IS
>     
>     IS
>     
> 
> 功能：构造一个表示 `is` 的枚举实例。 JSTRING_LITERAL
>     
>     JSTRING_LITERAL
>     
> 
> 功能：构造一个表示 JavaSTRING字面量 的枚举实例。 LCURL
>     
>     LCURL
>     
> 
> 功能：构造一个表示 `{` 的枚举实例。 LE
>     
>     LE
>     
> 
> 功能：构造一个表示 `<=` 的枚举实例。 LET
>     
>     LET
>     
> 
> 功能：构造一个表示 `let` 的枚举实例。 LPAREN
>     
>     LPAREN
>     
> 
> 功能：构造一个表示 `(` 的枚举实例。 LSHIFT
>     
>     LSHIFT
>     
> 
> 功能：构造一个表示 `<<` 的枚举实例。 LSHIFT_ASSIGN
>     
>     LSHIFT_ASSIGN
>     
> 
> 功能：构造一个表示 `<<=` 的枚举实例。 LSQUARE
>     
>     LSQUARE
>     
> 
> 功能：构造一个表示 `[` 的枚举实例。 LT
>     
>     LT
>     
> 
> 功能：构造一个表示 `<` 的枚举实例。 MACRO
>     
>     MACRO
>     
> 
> 功能：构造一个表示 `macro` 的枚举实例。 MAIN
>     
>     MAIN
>     
> 
> 功能：构造一个表示 `main` 的枚举实例。 MATCH
>     
>     MATCH
>     
> 
> 功能：构造一个表示 `match` 的枚举实例。 MOD
>     
>     MOD
>     
> 
> 功能：构造一个表示 `%` 的枚举实例。 MOD_ASSIGN
>     
>     MOD_ASSIGN
>     
> 
> 功能：构造一个表示 `%=` 的枚举实例。 MUL
>     
>     MUL
>     
> 
> 功能：构造一个表示 `*` 的枚举实例。 MULTILINE_RAW_STRING
>     
>     MULTILINE_RAW_STRING
>     
> 
> 功能：构造一个表示 _多行原始字符串字面量_ 的枚举实例。 MULTILINE_STRING
>     
>     MULTILINE_STRING
>     
> 
> 功能：构造一个表示 _多行字符串字面量_ 的枚举实例。 MUL_ASSIGN
>     
>     MUL_ASSIGN
>     
> 
> 功能：构造一个表示 `*=` 的枚举实例。 MUT
>     
>     MUT
>     
> 
> 功能：构造一个表示 `mut` 的枚举实例。 NL
>     
>     NL
>     
> 
> 功能：构造一个表示 _换行符_ 的枚举实例。 NOT
>     
>     NOT
>     
> 
> 功能：构造一个表示 `!` 的枚举实例。 NOTEQ
>     
>     NOTEQ
>     
> 
> 功能：构造一个表示 `!=` 的枚举实例。 NOTHING
>     
>     NOTHING
>     
> 
> 功能：构造一个表示 `nothing` 的枚举实例。 NOT_IN
>     
>     NOT_IN
>     
> 
> 功能：构造一个表示 `!in` 的枚举实例。 OPEN
>     
>     OPEN
>     
> 
> 功能：构造一个表示 `open` 的枚举实例。 OPERATOR
>     
>     OPERATOR
>     
> 
> 功能：构造一个表示 `operator` 的枚举实例。 OR
>     
>     OR
>     
> 
> 功能：构造一个表示 `||` 的枚举实例。 OR_ASSIGN
>     
>     OR_ASSIGN
>     
> 
> 功能：构造一个表示 `||=` 的枚举实例。 OVERRIDE
>     
>     OVERRIDE
>     
> 
> 功能：构造一个表示 `override` 的枚举实例。 PACKAGE
>     
>     PACKAGE
>     
> 
> 功能：构造一个表示 `package` 的枚举实例。 PIPELINE
>     
>     PIPELINE
>     
> 
> 功能：构造一个表示 `|>` 的枚举实例。 PRIVATE
>     
>     PRIVATE
>     
> 
> 功能：构造一个表示 `private` 的枚举实例。 PROP
>     
>     PROP
>     
> 
> 功能：构造一个表示 `prop` 的枚举实例。 PROTECTED
>     
>     PROTECTED
>     
> 
> 功能：构造一个表示 `protected` 的枚举实例。 PUBLIC
>     
>     PUBLIC
>     
> 
> 功能：构造一个表示 `public` 的枚举实例。 QUEST
>     
>     QUEST
>     
> 
> 功能：构造一个表示 `?` 的枚举实例。 QUOTE
>     
>     QUOTE
>     
> 
> 功能：构造一个表示 `quote` 的枚举实例。 RANGEOP
>     
>     RANGEOP
>     
> 
> 功能：构造一个表示 `..` 的枚举实例。 RCURL
>     
>     RCURL
>     
> 
> 功能：构造一个表示 `}` 的枚举实例。 REDEF
>     
>     REDEF
>     
> 
> 功能：构造一个表示 `redef` 的枚举实例。 RETURN
>     
>     RETURN
>     
> 
> 功能：构造一个表示 `return` 的枚举实例。 RPAREN
>     
>     RPAREN
>     
> 
> 功能：构造一个表示 `)` 的枚举实例。 RSHIFT
>     
>     RSHIFT
>     
> 
> 功能：构造一个表示 `>>` 的枚举实例。 RSHIFT_ASSIGN
>     
>     RSHIFT_ASSIGN
>     
> 
> 功能：构造一个表示 `>>=` 的枚举实例。 RSQUARE
>     
>     RSQUARE
>     
> 
> 功能：构造一个表示 `]` 的枚举实例。 RUNE
>     
>     RUNE
>     
> 
> 功能：构造一个表示 `Rune` 的枚举实例。 RUNE_BYTE_LITERAL
>     
>     RUNE_BYTE_LITERAL
>     
> 
> 功能：构造一个表示 _字符字节字面量_ 的枚举实例。 RUNE_LITERAL
>     
>     RUNE_LITERAL
>     
> 
> 功能：构造一个表示 _字符字面量_ 的枚举实例。 SEALED
>     
>     SEALED
>     
> 
> 功能：构造一个表示 `sealed` 的枚举实例。 SEMI
>     
>     SEMI
>     
> 
> 功能：构造一个表示 `;` 的枚举实例。 SENTINEL
>     
>     SENTINEL
>     
> 
> 功能：构造一个表示 `;` 的枚举实例。 SINGLE_QUOTED_STRING_LITERAL
>     
>     SINGLE_QUOTED_STRING_LITERAL
>     
> 
> 功能：构造一个表示 _单引号字符串字面量_ 的枚举实例。 SPAWN
>     
>     SPAWN
>     
> 
> 功能：构造一个表示 `spawn` 的枚举实例。 STATIC
>     
>     STATIC
>     
> 
> 功能：构造一个表示 `static` 的枚举实例。 STRING_LITERAL
>     
>     STRING_LITERAL
>     
> 
> 功能：构造一个表示 _双引号字符串字面量_ 的枚举实例。 STRUCT
>     
>     STRUCT
>     
> 
> 功能：构造一个表示 `struct` 的枚举实例。 SUB
>     
>     SUB
>     
> 
> 功能：构造一个表示 `-` 的枚举实例。 SUB_ASSIGN
>     
>     SUB_ASSIGN
>     
> 
> 功能：构造一个表示 `-=` 的枚举实例。 SUPER
>     
>     SUPER
>     
> 
> 功能：构造一个表示 `super` 的枚举实例。 SYNCHRONIZED
>     
>     SYNCHRONIZED
>     
> 
> 功能：构造一个表示 `synchronized` 的枚举实例。 THIS
>     
>     THIS
>     
> 
> 功能：构造一个表示 `this` 的枚举实例。 THISTYPE
>     
>     THISTYPE
>     
> 
> 功能：构造一个表示 `This` 的枚举实例。 THROW
>     
>     THROW
>     
> 
> 功能：构造一个表示 `throw` 的枚举实例。 TRY
>     
>     TRY
>     
> 
> 功能：构造一个表示 `try` 的枚举实例。 TYPE
>     
>     TYPE
>     
> 
> 功能：构造一个表示 `type` 的枚举实例。 UINT16
>     
>     UINT16
>     
> 
> 功能：构造一个表示 `uint16` 的枚举实例。 UINT32
>     
>     UINT32
>     
> 
> 功能：构造一个表示 `uint32` 的枚举实例。 UINT64
>     
>     UINT64
>     
> 
> 功能：构造一个表示 `uint64` 的枚举实例。 UINT8
>     
>     UINT8
>     
> 
> 功能：构造一个表示 `uint8` 的枚举实例。 UINTNATIVE
>     
>     UINTNATIVE
>     
> 
> 功能：构造一个表示 `uintnative` 的枚举实例。 UNIT
>     
>     UNIT
>     
> 
> 功能：构造一个表示 `unit` 的枚举实例。 UNIT_LITERAL
>     
>     UNIT_LITERAL
>     
> 
> 功能：构造一个表示 `unit` 字面量的枚举实例。 UNSAFE
>     
>     UNSAFE
>     
> 
> 功能：构造一个表示 `unsafe` 的枚举实例。 UPPERBOUND
>     
>     UPPERBOUND
>     
> 
> 功能：构造一个表示 `<:` 的枚举实例。 VAR
>     
>     VAR
>     
> 
> 功能：构造一个表示 `var` 的枚举实例。 VARRAY
>     
>     VARRAY
>     
> 
> 功能：构造一个表示 `varray` 的枚举实例。 WHERE
>     
>     WHERE
>     
> 
> 功能：构造一个表示 `where` 的枚举实例。 WHILE
>     
>     WHILE
>     
> 
> 功能：构造一个表示 `while` 的枚举实例。 WILDCARD
>     
>     WILDCARD
>     
> 
> 功能：构造一个表示 `_` 的枚举实例。 WITH
>     
>     WITH
>     
> 
> 功能：构造一个表示 `with` 的枚举实例。 func !=(TokenKind)
>     
>     public operator func !=(right: TokenKind): Bool
>     
> 
> 功能：重载不等号操作符，用于比较两个 [TokenKind](ast_package_enums.html#enum-tokenkind) 是否相等。 返回值：
>                * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) \- 布尔类型。
> func ==(TokenKind)
>     
>     public operator func ==(right: TokenKind): Bool
>     
> 
> 功能：重载等号操作符，用于比较两个 [TokenKind](ast_package_enums.html#enum-tokenkind) 是否相等。 返回值：
>                * [Bool](../../core/core_package_api/core_package_intrinsics.html#bool) \- 布尔类型。
> func toString()
>     
>     public func toString(): String
>     
> 
> 功能：将 [TokenKind](ast_package_enums.html#enum-tokenkind) 类型转化为字符串类型表示。 返回值：
>                * [String](../../core/core_package_api/core_package_structs.html#struct-string) \- [TokenKind](ast_package_enums.html#enum-tokenkind) 转换后的字符串值。
> 将仓颉源码解析为 AST 对象示例 如下有一个类 Data：
>     
>     class Data {
>         var a: Int32
>         init(a_: Int32) {
>             a = a_
>         }
>     }
>     
> 
> 利用解析函数将上述代码解析为一个 Decl 对象，代码如下所示：
>     
>     import std.ast.*
>     
>     main() {
>         let input: Tokens = quote(
>             class Data {
>                 var a: Int32
>                 init(a_: Int32) {
>                     a = a_
>                 }
>             }
>         )
>         let decl = parseDecl(input) // 获取一个 Decl 声明节点
>         var classDecl = match (decl as ClassDecl) { // decl 的具体类型为 ClassDecl, 将其进行类型转化。
>             case Some(v) => v
>             case None => throw Exception()
>         }
>         classDecl.dump()
>     }
>     
> 
> 运行结果：
>     
>     ClassDecl {
>       -keyword: Token {
>         value: "class"
>         kind: CLASS
>         pos: 5: 9
>       }
>       -identifier: Token {
>         value: "Data"
>         kind: IDENTIFIER
>         pos: 5: 15
>       }
>       -body: Body {
>         -decls: 0, VarDecl {
>           -keyword: Token {
>             value: "var"
>             kind: VAR
>             pos: 6: 13
>           }
>           -identifier: Token {
>             value: "a"
>             kind: IDENTIFIER
>             pos: 6: 17
>           }
>           -declType: PrimitiveType {
>             -keyword: Token {
>               value: "Int32"
>               kind: INT32
>               pos: 6: 20
>             }
>           }
>         }
>         -decls: 1, FuncDecl {
>           -keyword: Token {
>             value: "init"
>             kind: INIT
>             pos: 7: 13
>           }
>           -identifier: Token {
>             value: "init"
>             kind: IDENTIFIER
>             pos: 7: 13
>           }
>           -funcParams: 0, FuncParam {
>             -identifier: Token {
>               value: "a_"
>               kind: IDENTIFIER
>               pos: 7: 18
>             }
>             -colon: Token {
>               value: ":"
>               kind: COLON
>               pos: 7: 20
>             }
>             -paramType: PrimitiveType {
>               -keyword: Token {
>                 value: "Int32"
>                 kind: INT32
>                 pos: 7: 22
>               }
>             }
>           }
>           -block: Block {
>             -nodes: 0, AssignExpr {
>               -leftExpr: RefExpr {
>                 -identifier: Token {
>                   value: "a"
>                   kind: IDENTIFIER
>                   pos: 8: 17
>                 }
>               }
>               -assign: Token {
>                 value: "="
>                 kind: ASSIGN
>                 pos: 8: 19
>               }
>               -rightExpr: RefExpr {
>                 -identifier: Token {
>                   value: "a_"
>                   kind: IDENTIFIER
>                   pos: 8: 21
>                 }
>               }
>             }
>           }
>         }
>       }
>     }
>     
