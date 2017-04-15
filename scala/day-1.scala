// 5.2.1
println("Hello, surreal world")
1 + 1
(1).+(1)
5 + 4 * 3
5.+(4.*(3))
(5).+((4).*(3))
"abc".size
"abc" + 4
4 + "abc"
4 + "1.0"
4 * "abc"

// 5.2.2
5 < 6
5 <= 6
5 <= 2
5 >= 2
5 != 2

val a = 1 // Immutable
val b = 2
var c = 1 // Mutable
if ( b < a ) {
  println("true")
} else {
  println("false")
}

// not comparable
if (0) { println("true") }
if (Nil) { println("true") }

// 5.2.4
val range = 0 until 10
range.start
range.end

range.step
(0 to 10) by 5
(0 to 10) by 6
(0 until 10 by 5)
val range = (10 until 0) by -1
val range = (10 until 0)
val range = (0 to 10)
val range = 'a' to 'e'

val person("Elvis", "Presley")
person._1
person._2
person._3

val (x, y) = (1, 2)
val (a, b, c) = (1, 2) // Error

// 5.2.5
