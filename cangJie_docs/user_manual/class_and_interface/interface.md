# match 表达式

## match 表达式的定义

仓颉支持两种 `match` 表达式，第一种是包含待匹配值的 `match` 表达式，第二种是不含待匹配值的 `match` 表达式。

**含匹配值的 match 表达式** ：
    
    main() {
        let x = 0
        match (x) {
            case 1 => let r1 = "x = 1"
                      print(r1)
            case 0 => let r2 = "x = 0" // Matched.
                      print(r2)
            case _ => let r3 = "x != 1 and x != 0"
                      print(r3)
        }
    }
    

`match` 表达式以关键字 `match` 开头，后跟要匹配的值（如上例中的 `x`，`x` 可以是任意表达式），接着是定义在一对花括号内的若干 `case` 分支。

每个 `case` 分支以关键字 `case` 开头，`case` 之后是一个模式或多个由 `|` 连接的相同种类的模式（如上例中的 `1`、`0`# match 表达式

## match 表达式的定义

仓颉支持两种 `match` 表达式，第一种是包含待匹配值的 `match` 表达式，第二种是不含待匹配值的 `match` 表达式。

**含匹配值的 match 表达式** ：
    
    main() {
        let x = 0
        match (x) {
            case 1 => let r1 = "x = 1"
                      print(r1)
            case 0 => let r2 = "x = 0" // Matched.
                      print(r2)
            case _ => let r3 = "x != 1 and x != 0"
                      print(r3)
        }
    }
    

`match` 表达式以关键字 `match` 开头，后跟要匹配的值（如上例中的 `x`，`x` 可以是任意表达式），接着是定义在一对花括号内的若干 `case` 分支。

每个 `case` 分支以关键字 `case` 开头，`case` 之后是一个模式或多个由 `|` 连接的相同种类的模式（如上例中的 `1`、`0`、`_` 都是模式，详见[模式概述](../enum_and_pattern_match/pattern_overview.html)章节）；模式之后可以接一个可选的 `pattern guard`，表示本条 `case` 匹配成功后额外需要满足的条件，`pattern guard` 使用 `where cond` 表示，要求表达式 `cond` 的类型为 `Bool`；接着是一个 `=>`，`=>` 之后即本条 `case` 分支匹配成功后需要执行的操作，可以是一系列表达式、变量和函数定义（新定义的变量或函数的作用域从其定义处开始到下一个 `case` 之前结束），如上例中的变量定义和 `print` 函数调用。

`match` 表达式执行时依次将 `match` 之后的表达式与每个 `case` 中的模式进行匹配，一旦匹配成功（如果有 `pattern guard`，也需要 `where` 之后的表达式的值为 `true`；如果 `case` 中有多个由 `|` 连接的模式，只要待匹配值和其中一个模式匹配则认为匹配成功）则执行 `=>` 之后的代码然后退出 `match` 表达式的执行（意味着不会再去匹配它之后的 `case`），如果匹配不成功则继续与它之后的 `case` 中的模式进行匹配，直到匹配成功（`match` 表达式可以保证一定存在匹配的 `case` 分支）。

上例中，因为 `x` 的值等于 `0`，所以会和第二条 `case` 分支匹配（此处使用的是常量模式，匹配的是值是否相等，详见[常量模式](../enum_and_pattern_match/pattern_overview.html#%E5%B8%B8%E9%87%8F%E6%A8%A1%E5%BC%8F)章节），最后输出 `x = 0`。

编译并执行上述代码，输出结果为：
    
    x = 0
    

`match` 表达式要求所有匹配必须是穷尽（exhaustive）的，意味着待匹配表达式的所有可能取值都应该被考虑到。当 `match` 表达式非穷尽，或者编译器判断不出是否穷尽时，均会编译报错，换言之，所有 `case` 分支（包含 pattern guard）所覆盖的取值范围的并集，应该包含待匹配表达式的所有可能取值。常用的确保 `match` 表达式穷尽的方式是在最后一个 `case` 分支中使用通配符模式 `_`，因为 `_` 可以匹配任何值。

`match` 表达式的穷尽性保证了一定存在和待匹配值相匹配的 `case` 分支。下面的例子将编译报错，因为所有的 `case` 并没有覆盖 `x` 的所有可能取值：
    
    func nonExhaustive(x: Int64) {
        match (x) {
            case 0 => print("x = 0")
            case 1 => print("x = 1")
            case 2 => print("x = 2")
        }
    }
    

如果被匹配值的类型包含 `enum` 类型且该 `enum` 为 `non-exhaustive enum`，则其在匹配时需要使用可匹配所有构造器的模式，如通配符模式 `_` 和绑定模式。
    
    enum T {
        | Red | Green | Blue | ...
    }
    func foo(a: T) {
        match (a) {
            case Red => 0
            case Green => 1
            case Blue => 2
            case _ => -1
        }
    }
    
    func bar(a: T) {
        match (a) {
            case Red => 0
            case k => -1 // simple binding pattern
        }
    }
    
    func baz(a: T) {
        match (a) {
            case Red => 0
            case k: T => -1 // binding pattern with nested type pattern
        }
    }
    

在 `case` 分支的模式之后，可以使用 `pattern guard` 进一步对匹配出来的结果进行判断。

在下面的例子中（使用到了 `enum` 模式，详见 [enum 模式](../enum_and_pattern_match/pattern_overview.html#enum-%E6%A8%A1%E5%BC%8F)章节），当 `RGBColor` 的构造器的参数值大于等于 `0` 时，输出它们的值，当参数值小于 `0` 时，认为它们的值等于 `0`：
    
    enum RGBColor {
        | Red(Int16) | Green(Int16) | Blue(Int16)
    }
    main() {
        let c = RGBColor.Green(-100)
        let cs = match (c) {
            case Red(r) where r < 0 => "Red = 0"
            case Red(r) => "Red = ${r}"
            case Green(g) where g < 0 => "Green = 0" // Matched.
            case Green(g) => "Green = ${g}"
            case Blue(b) where b < 0 => "Blue = 0"
            case Blue(b) => "Blue = ${b}"
        }
        print(cs)
    }
    

编译执行上述代码，输出结果为：
    
    Green = 0
    

**没有匹配值的 match 表达式** ：
    
    main() {
        let x = -1
        match {
            case x > 0 => print("x > 0")
            case x < 0 => print("x < 0") // Matched.
            case _ => print("x = 0")
        }
    }
    

与包含待匹配值的 `match` 表达式相比，关键字 `match` 之后并没有待匹配的表达式，并且 `case` 之后不再是 `pattern`，而是类型为 `Bool` 的表达式（上述代码中的 `x > 0` 和 `x < 0`）或者 `_`（表示 `true`），当然，`case` 中也不再有 `pattern guard`。

无匹配值的 `match` 表达式执行时依次判断 `case` 之后的表达式的值，直到遇到值为 `true` 的 `case` 分支；一旦某个 `case` 之后的表达式值等于 `true`，则执行此 `case` 中 `=>` 之后的代码，然后退出 `match` 表达式的执行（意味着不会再去判断该 `case` 之后的其他 `case`）。

上例中，因为 `x` 的值等于 `-1`，所以第二条 `case` 分支中的表达式（即 `x < 0`）的值等于 `true`，执行 `print("x < 0")`。

编译并执行上述代码，输出结果为：
    
    x < 0
    

## match 表达式的类型

对于 `match` 表达式（无论是否有匹配值）：

        * 在上下文有明确的类型要求时，要求每个 `case` 分支中 `=>` 之后的代码块的类型是上下文所要求的类型的子类型；

        * 在上下文没有明确的类型要求时，`match` 表达式的类型是每个 `case` 分支中 `=>` 之后的代码块的类型的最小公共父类型；

        * 当 `match` 表达式的值没有被使用时，其类型为 `Unit`，不要求各分支的类型有最小公共父类型。

下面分别举例说明。
    
    let x = 2
    let s: String = match (x) {
        case 0 => "x = 0"
        case 1 => "x = 1"
        case _ => "x != 0 and x != 1" // Matched.
    }
    

上面的例子中，定义变量 `s` 时，显式地标注了其类型为 `String`，属于上下文类型信息明确的情况，因此要求每个 `case` 的 `=>` 之后的代码块的类型均是 `String` 的子类型，显然上例中 `=>` 之后的字符串类型的字面量均满足要求。

再来看一个没有上下文类型信息的例子：
    
    let x = 2
    let s = match (x) {
        case 0 => "x = 0"
        case 1 => "x = 1"
        case _ => "x != 0 and x != 1" // Matched.
    }
    

上例中，定义变量 `s` 时，未显式标注其类型，因为每个 `case` 的 `=>` 之后的代码块的类型均是 `String`，所以 `match` 表达式的类型是 `String`，进而可确定 `s` 的类型也是 `String`。

# 接口

接口用来定义一个抽象类型，它不包含数据，但可以定义类型的行为。一个类型如果声明实现某接口，并且实现了该接口中所有的成员，就被称为实现了该接口。

接口的成员可以包含：

        * 成员函数
        * 操作符重载函数
        * 成员属性

这些成员都是抽象的，要求实现类型必须拥有对应的成员实现。

## 接口定义

一个简单的接口定义如下：
    
    interface I { // 'open' modifier is optional.
        func f(): Unit
    }
    

接口使用关键字 `interface` 声明，其后是接口的标识符 `I` 和接口的成员。接口成员可被 `open` 修饰符修饰，并且 `open` 修饰符是可选的。

当接口 `I` 声明了一个成员函数 `f` 之后，要为一个类型实现 `I` 时，就必须在该类型中实现一个对应的 `f` 函数。

因为 `interface` 默认具有 `open` 语义，所以 `interface` 定义时的 `open` 修饰符是可选的。

如下面的代码所示，定义了一个 `class Foo`，使用 `Foo <: I` 的形式声明了 `Foo` 实现 `I` 接口。

在 `Foo` 中必须包含 `I` 声明的所有成员的实现，即需要定义一个相同类型的 `f`，否则会由于没有实现接口而编译报错。
    
    class Foo <: I {
        public func f(): Unit {
            println("Foo")
        }
    }
    
    main() {
        let a = Foo()
        let b: I = a
        b.f() // "Foo"
    }
    

当某个类型实现了某个接口之后，该类型就会成为该接口的子类型。

对于上面的例子，`Foo` 是 `I` 的子类型，因此任何一个 `Foo` 类型的实例，都可以当作 `I` 类型的实例使用。

在 `main` 中将一个 `Foo` 类型的变量 `a`，赋值给一个 `I` 类型的变量 `b`。然后再调用 `b` 中的函数 `f`，就会打印出 `Foo` 实现的 `f` 版本。程序的输出结果为：
    
    Foo
    

`interface` 也可以使用 `sealed` 修饰符表示只能在 `interface` 定义所在的包内继承、实现或扩展该 `interface`。`sealed` 已经蕴含了 `public`/`open` 的语义，因此定义 `sealed interface` 时若提供 `public`/`open` 修饰符，编译器将会告警。继承 `sealed` 接口的子接口或实现 `sealed` 接口的抽象类仍可被 `sealed` 修饰或不使用 `sealed` 修饰。若 `sealed` 接口的子接口被 `public` 修饰，且不被 `sealed` 修饰，则其子接口可在包外被继承、实现或扩展。继承、实现 sealed 接口的类型可以不被 `public` 修饰。
    
    package A
    public interface I1 {}
    sealed interface I2 {}         // OK
    public sealed interface I3 {}  // Warning, redundant modifier, 'sealed' implies 'public'
    sealed open interface I4 {}    // Warning, redundant modifier, 'sealed' implies 'open'
    
    class C1 <: I1 {}
    public open class C2 <: I1 {}
    sealed abstract class C3 <: I2 {}
    extend Int64 <: I2 {}
    
    
    package B
    import A.*
    
    class S1 <: I1 {}  // OK
    class S2 <: I2 {}  // Error, I2 is sealed interface, cannot be inherited here.
    

通过接口的这种约束能力，可以对一系列的类型约定共同的功能，达到对功能进行抽象的目的。

例如下面的代码，可以定义一个 Flyable 接口，并且让其他具有 Flyable 属性的类实现它。
    
    interface Flyable {
        func fly(): Unit
    }
    
    class Bird <: Flyable {
        public func fly(): Unit {
            println("Bird flying")
        }
    }
    
    class Bat <: Flyable {
        public func fly(): Unit {
            println("Bat flying")
        }
    }
    
    class Airplane <: Flyable {
        public func fly(): Unit {
            println("Airplane flying")
        }
    }
    
    func fly(item: Flyable): Unit {
        item.fly()
    }
    
    main() {
        let bird = Bird()
        let bat = Bat()
        let airplane = Airplane()
        fly(bird)
        fly(bat)
        fly(airplane)
    }
    

编译并执行上面的代码，会看到如下输出：
    
    Bird flying
    Bat flying
    Airplane flying
    

接口的成员可以是实例的或者静态的，以上的例子已经展示过实例成员函数的作用，接下来来看看静态成员函数的作用。

静态成员函数和实例成员函数类似，都要求实现类型提供实现。

例如下面的例子，定义了一个 `NamedType` 接口，这个接口含有一个静态成员函数 `typename` 用来获得每个类型的字符串名称。

这样其他类型在实现 `NamedType` 接口时就必须实现 `typename` 函数，之后就可以安全地在 `NamedType` 的子类型上获得类型的名称。
    
    interface NamedType {
        static func typename(): String
    }
    
    class A <: NamedType {
        public static func typename(): String {
            "A"
        }
    }
    
    class B <: NamedType {
        public static func typename(): String {
            "B"
        }
    }
    
    main() {
        println("the type is ${ A.typename() }")
        println("the type is ${ B.typename() }")
    }
    

程序输出结果为：
    
    the type is A
    the type is B
    

接口中的静态成员函数（或属性）可以没有默认实现，也可以拥有默认实现。

当其没有默认实现时，将无法通过接口类型名对其进行访问。例如下面的代码，直接访问 `NamedType` 的 `typename` 函数会发生编译报错，因为 `NamedType` 不具有 `typename` 函数的实现。
    
    interface NamedType {
        static func typename(): String
    }
    main() {
        NamedType.typename() // Error
    }
    

接口中的静态成员函数（或属性）也可以拥有默认实现，当另一个类型继承拥有默认静态函数（或属性）实现的接口时，该类型可以不再实现这个静态成员函数（或属性），该函数（或属性）可以通过接口名和该类型名直接访问。如下用例，`NamedType` 的成员函数 `typename` 拥有默认实现，且在 `A` 中都可以不用再重新实现它，同时，也可以通过接口名和该类型名对其进行直接访问。
    
    interface NamedType {
        static func typename(): String {
            "interface NamedType"
        }
    }
    
    class A <: NamedType {}
    
    main() {
        println(NamedType.typename())
        println(A.typename())
        0
    }
    

程序输出结果为：
    
    interface NamedType
    interface NamedType
    

通常会通过泛型约束，在泛型函数中使用这类静态成员。

例如下面的 `printTypeName` 函数，当约束泛型变元 `T` 是 `NamedType` 的子类型时，需要保证 `T` 的实例化类型中所有的静态成员函数（或属性）都必须拥有实现，以保证可以使用 `T.typename` 的方式访问泛型变元的实现，达到了对静态成员抽象的目的。详见[泛型](../generic/generic_overview.html)。
    
    interface NamedType {
        static func typename(): String
    }
    
    interface I <: NamedType {
        static func typename(): String {
            f()
        }
        static func f(): String
    }
    
    class A <: NamedType {
        public static func typename(): String {
            "A"
        }
    }
    
    class B <: NamedType {
        public static func typename(): String {
            "B"
        }
    }
    
    func printTypeName<T>() where T <: NamedType {
        println("the type is ${ T.typename() }")
    }
    
    main() {
        printTypeName<A>() // Ok
        printTypeName<B>() // Ok
        printTypeName<I>() // Error, 'I' must implement all static function. Otherwise, an unimplemented 'f' is called, causing problems.
    }
    

接口中可以定义泛型实例成员函数或泛型静态成员函数，与非泛型函数一样具有 `open` 语义。
    
    import std.collection.*
    interface M {
        func foo<T>(a: T): T
        static func toString<T>(b: ArrayList<T>): String where T <: ToString
    }
    class C <: M {
        public func foo<S>(a: S): S { // implements M::foo, names of generic parameters do not matter
            a
        }
        public static func toString<T>(b: ArrayList<T>) where T <: ToString {
            var res = ""
            for (s in b) {
                res += s.toString()
            }
            res
        }
    }
    

需要注意的是，接口的成员默认就被 `public` 修饰，不可以声明额外的访问控制修饰符，同时也要求实现类型必须使用 `public` 实现。
    
    interface I {
        func f(): Unit
    }
    
    open class C <: I {
        protected func f() {} // Compiler Error, f needs to be public semantics
    }
    

## 接口继承与接口实现

当想为一个类型实现多个接口，可以在声明处使用 `&` 分隔多个接口，实现的接口之间没有顺序要求。

例如下面的例子，可以让 MyInt 同时实现 Addable 和 Subtractable 两个接口。
    
    interface Addable {
        func add(other: Int64): Int64
    }
    
    interface Subtractable {
        func sub(other: Int64): Int64
    }
    
    class MyInt <: Addable & Subtractable {
        var value = 0
        public func add(other: Int64): Int64 {
            value + other
        }
        public func sub(other: Int64): Int64 {
            value - other
        }
    }
    

接口可以继承一个或多个接口，但不能继承类。与此同时，接口继承的时候可以添加新的接口成员。

例如下面的例子，Calculable 接口继承了 Addable 和 Subtractable 两个接口，并且增加了乘除两种运算符重载。
    
    interface Addable {
        func add(other: Int64): Int64
    }
    
    interface Subtractable {
        func sub(other: Int64): Int64
    }
    
    interface Calculable <: Addable & Subtractable {
        func mul(other: Int64): Int64
        func div(other: Int64): Int64
    }
    

这样实现类型实现 Calculable 接口时就必须同时实现加减乘除四种运算符重载，不能缺少任何一个成员。
    
    class MyInt <: Calculable {
        var value = 0
        public func add(other: Int64): Int64 {
            value + other
        }
        public func sub(other: Int64): Int64 {
            value - other
        }
        public func mul(other: Int64): Int64 {
            value * other
        }
        public func div(other: Int64): Int64 {
            value / other
        }
    }
    

MyInt 实现 Calculable 的同时，也同时实现了 Calculable 继承的所有接口，因此 MyInt 也实现了 Addable 和 Subtractable，即同时是它们的子类型。
    
    main() {
        let myInt = MyInt()
        let add: Addable = myInt
        let sub: Subtractable = myInt
        let calc: Calculable = myInt
    }
    

对于 `interface` 的继承，子接口如果继承了父接口中有默认实现的函数或属性，则在子接口中不允许仅写此函数或属性的声明（即没有默认实现），而是必须要给出新的默认实现，并且函数定义前的 `override` 修饰符（或 `redef` 修饰符）是可选的；子接口如果继承了父接口中没有默认实现的函数或属性，则在子接口中允许仅写此函数或属性的声明（当然也允许定义默认实现），并且函数声明或定义前的 override 修饰符（或 `redef` 修饰符）是可选的。
    
    interface I1 {
       func f(a: Int64) {
            a
       }
       static func g(a: Int64) {
            a
       }
       func f1(a: Int64): Unit
       static func g1(a: Int64): Unit
    }
    
    interface I2 <: I1 {
        /*'override' is optional*/ func f(a: Int64) {
           a + 1
        }
        override func f(a: Int32) {} // Error, override function 'f' does not have an overridden function from its supertypes
        static /*'redef' is optional*/ func g(a: Int64) {
           a + 1
        }
        /*'override' is optional*/ func f1(a: Int64): Unit {}
        static /*'redef' is optional*/ func g1(a: Int64): Unit {}
    }
    

### 接口实现的要求

仓颉除 Tuple、VArray 和函数外的其他类型都可以实现接口。

一个类型实现接口有三种途径：

        1. 在定义类型时就声明实现接口，在以上的内容中已经见过相关例子。
        2. 通过扩展实现接口，这种方式详见[扩展](../extension/interface_extension.html)。
        3. 由语言内置实现，具体详见《仓颉编程语言库 API》相关文档。

实现类型声明实现接口时，需要实现接口中要求的所有成员，为此需要满足下面一些规则。

        1. 对于成员函数和操作符重载函数，要求实现类型提供的函数实现与接口对应的函数名称相同、参数列表相同、返回类型相同。
        2. 对于成员属性，要求是否被 `mut` 修饰保持一致，并且属性的类型相同。

所以大部分情况都如同上面的例子，需要让实现类型中包含与接口要求的一样的成员的实现。

但有个地方是个例外，如果接口中的成员函数或操作符重载函数的返回值类型是 class 类型，那么允许实现函数的返回类型是其子类型。

例如下面这个例子，`I` 中的 `f` 返回类型是一个 `class` 类型 `Base`，因此 `C` 中实现的 `f` 返回类型可以是 `Base` 的子类型 `Sub`。
    
    open class Base {}
    class Sub <: Base {}
    
    interface I {
        func f(): Base
    }
    
    class C <: I {
        public func f(): Sub {
            Sub()
        }
    }
    

除此以外，接口的成员还可以提供默认实现。例如下面的代码中，`SayHi` 中的 `say` 拥有默认实现，因此 `A` 实现 `SayHi` 时可以继承 `say` 的实现，而 `B` 也可以选择提供自己的 `say` 实现。
    
    interface SayHi {
        func say() {
            "hi"
        }
    }
    
    class A <: SayHi {}
    
    class B <: SayHi {
        public func say() {
            "hi, B"
        }
    }
    

特别地，如果一个类型在实现多个接口时，多个接口中包含同一个成员的默认实现，这时会发生多重继承的冲突，语言无法选择最适合的实现，因此这时接口中的默认实现也会失效，需要实现类型提供自己的实现。

例如下面的例子，`SayHi` 和 `SayHello` 中都包含了 `say` 的实现，`Foo` 在实现这两个接口时就必须提供自己的实现，否则会出现编译错误。
    
    interface SayHi {
        func say() {
            "hi"
        }
    }
    
    interface SayHello {
        func say() {
            "hello"
        }
    }
    
    class Foo <: SayHi & SayHello {
        public func say() {
            "Foo"
        }
    }
    

struct、enum 和 class 在实现接口时，函数或属性定义前的 `override` 修饰符（或 `redef` 修饰符）是可选的，无论接口中的函数或属性是否存在默认实现。
    
    interface I {
        func foo(): Int64 {
            return 0
        }
    }
    enum E <: I{
        elem
        public override func foo(): Int64 {
            return 1
        }
    }
    struct S <: I {
        public override func foo(): Int64 {
            return 1
        }
    }
    

## Any 类型

Any 类型是一个内置的接口，它的定义如下：
    
    interface Any {}
    

仓颉中所有接口都默认继承它，所有非接口类型都默认实现它，因此所有类型都可以作为 Any 类型的子类型使用。

如下面的代码，可以将一系列不同类型的变量赋值给 Any 类型的变量。
    
    main() {
        var any: Any = 1
        any = 2.0
        any = "hello, world!"
    }
    
