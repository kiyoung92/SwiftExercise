import Foundation

var num1: Int = 2
var num2: Int = 3

var sum: Int = num1 + num2
var minus: Int = num1 - num2
var multi: Int = num1 * num2
var div: Int = num1 / num2 // 정수이기 때문에 소수점 뒤에는 버림
var div2: Double = Double(num1) / Double(num2)
var remain: Int = num1 % num2

var double: Double = 3.14
//var testType = num1 - double // 같은 데이터 타입끼리만 연산 가능

num1 += num2
num1 -= num2
num1 *= num2
num1 /= num2
num1 %= num2

num1 == num2
num1 != num2
num1 > num2
num1 < num2
num1 >= num2
num1 <= num2

num1 == num2 && num1 <= num2
num1 == num2 || num1 <= num2
!(num1 == num2)

var str: String = "hello World"
str.count

Int.random(in: 1...3)
