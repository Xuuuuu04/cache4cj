# 操作符重载

如果希望在某个类型上支持此类型默认不支持的操作符，可以使用操作符重载实现。

如果需要在某个类型上重载某个操作符，可以通过为类型定义一个函数名为此操作符的函数的方式实现，这样，在该类型的实例使用该操作符时，就会自动调用此操作符函数。

操作符函数定义与普通函数定义相似，区别如下：

        * 定义操作符函数时需要在 `func` 关键字前面添加 `operator` 修饰符；
        * 操作符函数的参数个数需要匹配对应操作符的要求（详见附录[操作符](../Appendix/operator.html)）；
        * 操作符函数只能定义在 class、interface、struct、enum 和 extend 中；
        * 操作符函数具有实例成员函数的语义，所以禁止使用 `static` 修饰符；
        * 操作符函数不能为泛型函数。

另外，需要注意的是，被重载后的操作符不改变它们固有的优先级和结合性（详见附录[操作符](../Appendix/operator.html)）。

## 操作符重载函数定义和使用

定义操作符函数有两种方式：

        1. 对于可以直接包含函数定义的类型 (包括 `struct`、`enum`、`class` 和 `interface` )，可以直接在其内部定义操作符函数的方式实现操作符的重载。
        2. 使用 `extend` 的方式为其添加操作符函数，从而实现操作符在这些类型上的重载。对于无法直接包含函数定义的类型（是指除 `struct`、`class`、`enum` 和 `interface` 之外其他的类型）或无法改变其实现的类型，比如第三方定义的 `struct`、`class`、`enum` 和 `interface`，只能采用这种方式（参见[扩展](../extension/extend_overview.html)）。

操作符函数对参数类型的约定如下：

        1. 对于一元操作符，操作符函数没有参数，对返回值的类型没有要求。

        2. 对于二元操作符，操作符函数只有一个参数，对返回值的类型没有要求。

如下示例中介绍了一元操作符和二元操作符的定义和使用：

`-` 实现对一个 `Point` 实例中两个成员变量 `x` 和 `y` 取负值，然后返回一个新的 `Point` 对象，`+` 实现对两个 `Point` 实例中两个成员变量 `x` 和 `y` 分别求和，然后返回一个新的 `Point` 对象。
               
               open class Point {
                   var x: Int64 = 0
                   var y: Int64 = 0
                   public init (a: Int64, b: Int64) {
                       x = a
                       y = b
                   }
               
                   public operator func -(): Point {
                       Point(-x, -y)
                   }
                   public operator func +(right: Point): Point {
                       Point(this.x + right.x, this.y + right.y)
                   }
               }
               

接下来，就可以在 `Point` 的实例上直接使用一元 `-` 操作符和二元 `+` 操作符：
               
               main() {
                   let p1 = Point(8, 24)
                   let p2 = -p1      // p2 = Point(-8, -24)
                   let p3 = p1 + p2  // p3 = Point(0, 0)
               }
               

        3. 索引操作符（`[]`）分为取值 `let a = arr[i]` 和赋值 `arr[i] = a` 两种形式，它们通过是否存在特殊的命名参数 value 来区分不同的重载。索引操作符重载不要求同时重载两种形式，可以只重载赋值不重载取值，反之亦可。

索引操作符取值形式 `[]` 内的参数序列对应操作符重载的非命名参数，可以是 1 个或多个，可以是任意类型。不可以有其他命名参数。返回类型可以是任意类型。
               
               class A {
                   operator func [](arg1: Int64, arg2: String): Int64 {
                       return 0
                   }
               }
               
               func f() {
                   let a = A()
                   let b: Int64 = a[1, "2"]
                   // b == 0
               }
               

索引操作符赋值形式 `[]` 内的参数序列对应操作符重载的非命名参数，可以是 1 个或多个，可以是任意类型。`=` 右侧的表达式对应操作符重载的命名参数，有且只能有一个命名参数，该命名参数的名称必须是 value, 不能有默认值，value 可以是任意类型。返回类型必须是 Unit 类型。

需要注意的是，value 只是一种特殊的标记，在索引操作符赋值时并不需要使用命名参数的形式调用。
               
               class A {
                   operator func [](arg1: Int64, arg2: String, value!: Int64): Unit {
                       return
                   }
               }
               
               func f() {
                   let a = A()
                   a[1, "2"] = 0
               }
               

特别的，除 `enum` 外的不可变类型不支持重载索引操作符赋值形式。

        4. 函数调用操作符（`()`）重载函数，输入参数和返回值类型可以是任意类型。示例如下：
               
               open class A {
                   public init() {}
               
                   public operator func ()(): Unit {}
               }
               
               func test1() {
                   let a = A() // Ok, A() is call the constructor of A
                   a() // Ok, a() is to call the operator () overloading function
               }
               

不能使用 `this` 或 `super` 调用 `()` 操作符重载函数。示例如下：
               
               open class A {
                   public init() {}
                   public init(x: Int64) {
                       this() // Ok, this() calls the constructor of A
                   }
               
                   public operator func ()(): Unit {}
               
                   public func foo() {
                       this()  // Error, this() calls the constructor of A
                       super() // Error
                   }
               }
               
               class B <: A {
                   public init() {
                       super() // Ok, super()  calls the constuctor of the super class
                   }
               
                   public func goo() {
                       super() // Error
                   }
               }
               

对于枚举类型，当构造器形式和 `()` 操作符重载函数形式都满足时，优先匹配构造器形式。示例如下：
               
               enum E {
                   Y | X | X(Int64)
               
                   public operator func ()(p: Int64) {}
                   public operator func ()(p: Float64) {}
               }
               
               main() {
                   let e = X(1) // Ok, X(1) is to call the constructor X(Int64)
                   X(1.0) // Ok, X(1.0) is to call the operator () overloading function
                   let e1 = X
                   e1(1) // Ok, e1(1) is to call the operator () overloading function
                   Y(1) // oK, Y(1) is to call the operator () overloading function
               }
               

## 可以被重载的操作符

下表列出了所有可以被重载的操作符（优先级从高到低）：

Operator| Description  
---|---  
`()`| Function call  
`[]`| Indexing  
`!`| NOT  
`-`| Negative  
`**`| Power  
`*`| Multiply  
`/`| Divide  
`%`| Remainder  
`+`| Add  
`-`| Subtract  
`<<`| Bitwise left shift  
`>>`| Bitwise right shift  
`<`| Less than  
`<=`| Less than or equal  
`>`| Greater than  
`>=`| Greater than or equal  
`==`# 操作符重载

如果希望在某个类型上支持此类型默认不支持的操作符，可以使用操作符重载实现。 如果需要在某个类型上重载某个操作符，可以通过为类型定义一个函数名为此操作符的函数的方式实现，这样，在该类型的实例使用该操作符时，就会自动调用此操作符函数。 操作符函数定义与普通函数定义相似，区别如下：
        * 定义操作符函数时需要在 `func` 关键字前面添加 `operator` 修饰符；
        * 操作符函数的参数个数需要匹配对应操作符的要求（详见附录[操作符](../Appendix/operator.html)）；
        * 操作符函数只能定义在 class、interface、struct、enum 和 extend 中；
        * 操作符函数具有实例成员函数的语义，所以禁止使用 `static` 修饰符；
        * 操作符函数不能为泛型函数。
另外，需要注意的是，被重载后的操作符不改变它们固有的优先级和结合性（详见附录[操作符](../Appendix/operator.html)）。

## 操作符重载函数定义和使用

定义操作符函数有两种方式：
        1. 对于可以直接包含函数定义的类型 (包括 `struct`、`enum`、`class` 和 `interface` )，可以直接在其内部定义操作符函数的方式实现操作符的重载。
        2. 使用 `extend` 的方式为其添加操作符函数，从而实现操作符在这些类型上的重载。对于无法直接包含函数定义的类型（是指除 `struct`、`class`、`enum` 和 `interface` 之外其他的类型）或无法改变其实现的类型，比如第三方定义的 `struct`、`class`、`enum` 和 `interface`，只能采用这种方式（参见[扩展](../extension/extend_overview.html)）。
操作符函数对参数类型的约定如下：
        1. 对于一元操作符，操作符函数没有参数，对返回值的类型没有要求。
        2. 对于二元操作符，操作符函数只有一个参数，对返回值的类型没有要求。 如下示例中介绍了一元操作符和二元操作符的定义和使用： `-` 实现对一个 `Point` 实例中两个成员变量 `x` 和 `y` 取负值，然后返回一个新的 `Point` 对象，`+` 实现对两个 `Point` 实例中两个成员变量 `x` 和 `y` 分别求和，然后返回一个新的 `Point` 对象。
               
               open class Point {
                   var x: Int64 = 0
                   var y: Int64 = 0
                   public init (a: Int64, b: Int64) {
                       x = a
                       y = b
                   }
               
                   public operator func -(): Point {
                       Point(-x, -y)
                   }
                   public operator func +(right: Point): Point {
                       Point(this.x + right.x, this.y + right.y)
                   }
               }
               

接下来，就可以在 `Point` 的实例上直接使用一元 `-` 操作符和二元 `+` 操作符：
               
               main() {
                   let p1 = Point(8, 24)
                   let p2 = -p1      // p2 = Point(-8, -24)
                   let p3 = p1 + p2  // p3 = Point(0, 0)
               }
               

        3. 索引操作符（`[]`）分为取值 `let a = arr[i]` 和赋值 `arr[i] = a` 两种形式，它们通过是否存在特殊的命名参数 value 来区分不同的重载。索引操作符重载不要求同时重载两种形式，可以只重载赋值不重载取值，反之亦可。 索引操作符取值形式 `[]` 内的参数序列对应操作符重载的非命名参数，可以是 1 个或多个，可以是任意类型。不可以有其他命名参数。返回类型可以是任意类型。
               
               class A {
                   operator func [](arg1: Int64, arg2: String): Int64 {
                       return 0
                   }
               }
               
               func f() {
                   let a = A()
                   let b: Int64 = a[1, "2"]
                   // b == 0
               }
               

索引操作符赋值形式 `[]` 内的参数序列对应操作符重载的非命名参数，可以是 1 个或多个，可以是任意类型。`=` 右侧的表达式对应操作符重载的命名参数，有且只能有一个命名参数，该命名参数的名称必须是 value, 不能有默认值，value 可以是任意类型。返回类型必须是 Unit 类型。 需要注意的是，value 只是一种特殊的标记，在索引操作符赋值时并不需要使用命名参数的形式调用。
               
               class A {
                   operator func [](arg1: Int64, arg2: String, value!: Int64): Unit {
                       return
                   }
               }
               
               func f() {
                   let a = A()
                   a[1, "2"] = 0
               }
               

特别的，除 `enum` 外的不可变类型不支持重载索引操作符赋值形式。
        4. 函数调用操作符（`()`）重载函数，输入参数和返回值类型可以是任意类型。示例如下：
               
               open class A {
                   public init() {}
               
                   public operator func ()(): Unit {}
               }
               
               func test1() {
                   let a = A() // Ok, A() is call the constructor of A
                   a() // Ok, a() is to call the operator () overloading function
               }
               

不能使用 `this` 或 `super` 调用 `()` 操作符重载函数。示例如下：
               
               open class A {
                   public init() {}
                   public init(x: Int64) {
                       this() // Ok, this() calls the constructor of A
                   }
               
                   public operator func ()(): Unit {}
               
                   public func foo() {
                       this()  // Error, this() calls the constructor of A
                       super() // Error
                   }
               }
               
               class B <: A {
                   public init() {
                       super() // Ok, super()  calls the constuctor of the super class
                   }
               
                   public func goo() {
                       super() // Error
                   }
               }
               

对于枚举类型，当构造器形式和 `()` 操作符重载函数形式都满足时，优先匹配构造器形式。示例如下：
               
               enum E {
                   Y | X | X(Int64)
               
                   public operator func ()(p: Int64) {}
                   public operator func ()(p: Float64) {}
               }
               
               main() {
                   let e = X(1) // Ok, X(1) is to call the constructor X(Int64)
                   X(1.0) // Ok, X(1.0) is to call the operator () overloading function
                   let e1 = X
                   e1(1) // Ok, e1(1) is to call the operator () overloading function
                   Y(1) // oK, Y(1) is to call the operator () overloading function
               }
               

## 可以被重载的操作符

下表列出了所有可以被重载的操作符（优先级从高到低）： | Operator| Description  
---|---  
`()`| Function call  
`[]`| Indexing  
`!`| NOT  
`-`| Negative  
`**`| Power  
`*`| Multiply  
`/`| Divide  
`%`| Remainder  
`+`| Add  
`-`| Subtract  
`<<`| Bitwise left shift  
`>>`| Bitwise right shift  
`<`| Less than  
`<=`| Less than or equal  
`>`| Greater than  
`>=`| Greater than or equal  
`==`| Equal  
`!=`| Not equal  
`&`| Bitwise AND  
`^`| Bitwise XOR  
`|`| Bitwise OR  
  
需要注意的是：

> **注意：**
> 
>         * 一旦在某个类型上重载了除关系操作符（`<`、`<=`、`>`、`>=`、`==` 和 `!=`）之外的其他二元操作符，并且操作符函数的返回类型与左操作数的类型一致或是其子类型，那么此类型支持对应的复合赋值操作符。当操作符函数的返回类型与左操作数的类型不一致且不是其子类型时，在使用对应的复合赋值符号时将报类型不匹配错误。
>         * 仓颉编程语言不支持自定义操作符，即不允许定义除上表中所列 `operator` 之外的其他操作符函数。
>         * 对于类型 `T`, 如果 `T` 已经默认支持了上述若干可重载操作符，那么通过扩展的方式再次为其实现同签名的操作符函数时将报重定义错误。例如，为数值类型重载其已支持的同签名算术操作符、位操作符或关系操作符等操作符时，为 `Rune` 重载同签名的关系操作符时，为 `Bool` 类型重载同签名的逻辑操作符、判等或不等操作符时，等等这些情况，均会报重定义错误。

# 函数调用语法糖

## 尾随 lambda

尾随 lambda 可以使函数的调用看起来像是语言内置的语法一样，增加语言的可扩展性。

当函数最后一个形参是函数类型，并且函数调用对应的实参是 lambda 时，可以使用尾随 lambda 语法，将 lambda 放在函数调用的尾部，圆括号外面。

例如，下例中定义了一个 `myIf` 函数，它的第一个参数是 `Bool` 类型，第二个参数是函数类型。当第一个参数的值为 `true` 时，返回第二个参数调用后的值，否则返回 `0`。调用 `myIf` 时可以像普通函数一样调用，也可以使用尾随 lambda 的方式调用。
    
    func myIf(a: Bool, fn: () -> Int64) {
        if(a) {
            fn()
        } else {
            0
        }
    }
    
    func test() {
        myIf(true, { => 100 }) // General function call
    
        myIf(true) {        // Trailing closure call
            100
        }
    }
    

当函数调用有且只有一个 lambda 实参时，还可以省略 `()`，只写 lambda。

示例：
    
    func f(fn: (Int64) -> Int64) { fn(1) }
    
    func test() {
        f { i => i * i }
    }
    

## Flow 表达式

流操作符包括两种：表示数据流向的中缀操作符 `|>` （称为 `pipeline`）和表示函数组合的中缀操作符 `~>` （称为 `composition`）。

### Pipeline 表达式

当需要对输入数据做一系列的处理时，可以使用 `pipeline` 表达式来简化描述。`pipeline` 表达式的语法形式如下：`e1 |> e2`。等价于如下形式的语法糖：`let v = e1; e2(v)` 。

其中 `e2` 是函数类型的表达式，`e1` 的类型是 `e2` 的参数类型的子类型。

示例：
    
    func inc(x: Array<Int64>): Array<Int64> { // Increasing the value of each element in the array by '1'
        let s = x.size
        var i = 0
        for (e in x where i < s) {
            x[i] = e + 1
            i++
        }
        x
    }
    
    func sum(y: Array<Int64>): Int64 { // Get the sum of elements in the array
        var s = 0
        for (j in y) {
            s += j
        }
        s
    }
    
    let arr: Array<Int64> = [1, 3, 5]
    let res = arr |> inc |> sum // res = 12
    

### Composition 表达式

`composition` 表达式表示两个单参函数的组合。`composition` 表达式语法为 `f ~> g`，等价于 `{ x => g(f(x)) }`。

其中 `f`，`g` 均为只有一个参数的函数类型的表达式。

`f` 和 `g` 组合，则要求 `f(x)` 的返回类型是 `g(...)` 的参数类型的子类型。

示例 1：
    
    func f(x: Int64): Float64 {
        Float64(x)
    }
    func g(x: Float64): Float64 {
        x
    }
    
    var fg = f ~> g // The same as { x: Int64 => g(f(x)) }
    

示例 2：
    
    func f(x: Int64): Float64 {
        Float64(x)
    }
    
    let lambdaComp = ({x: Int64 => x}) ~> f // The same as { x: Int64 => f({x: Int64 => x}(x)) }
    

示例 3：
    
    func h1<T>(x: T): T { x }
    func h2<T>(x: T): T { x }
    var hh = h1<Int64> ~> h2<Int64> // The same as { x: Int64 => h2<Int64>(h1<Int64>(x)) }
    

> **注意：**
> 
> 表达式 f ~> g 中，会先对 f 求值，然后对 g 求值，最后才会进行函数的组合。

另外，流操作符不能与无默认值的命名形参函数直接一同使用，这是因为无默认值的命名形参函数必须给出命名实参才可以调用。例如：
    
    func f(a!: Int64): Unit {}
    
    var a = 1 |> f  // Error
    

如果需要使用，开发者可以通过 lambda 表达式传入 `f` 函数的命名实参：
    
    func f(a!: Int64): Unit {}
    
    var x = 1 |>  { x: Int64 => f(a: x) } // Ok
    

由于相同的原因，当 `f` 的参数有默认值时，直接与流运算符一起使用也是错误的，例如：
    
    func f(a!: Int64 = 2): Unit {}
    
    var a = 1 |> f // Error
    

但是当命名形参都存在默认值时，不需要给出命名实参也可以调用该函数，函数仅需要传入非命名形参，那么这种函数是可以同流运算符一起使用的，例如：
    
    func f(a: Int64, b!: Int64 = 2): Unit {}
    
    var a = 1 |> f  // Ok
    

| Equal  
`!=`| Not equal  
`&`| Bitwise AND  
`^`| Bitwise XOR  
`|`| Bitwise OR  
  
需要注意的是：

> **注意：**
> 
>         * 一旦在某个类型上重载了除关系操作符（`<`、`<=`、`>`、`>=`、`==` 和 `!=`）之外的其他二元操作符，并且操作符函数的返回类型与左操作数的类型一致或是其子类型，那么此类型支持对应的复合赋值操作符。当操作符函数的返回类型与左操作数的类型不一致且不是其子类型时，在使用对应的复合赋值符号时将报类型不匹配错误。
>         * 仓颉编程语言不支持自定义操作符，即不允许定义除上表中所列 `operator` 之外的其他操作符函数。
>         * 对于类型 `T`, 如果 `T` 已经默认支持了上述若干可重载操作符，那么通过扩展的方式再次为其实现同签名的操作符函数时将报重定义错误。例如，为数值类型重载其已支持的同签名算术操作符、位操作符或关系操作符等操作符时，为 `Rune` 重载同签名的关系操作符时，为 `Bool` 类型重载同签名的逻辑操作符、判等或不等操作符时，等等这些情况，均会报重定义错误。
