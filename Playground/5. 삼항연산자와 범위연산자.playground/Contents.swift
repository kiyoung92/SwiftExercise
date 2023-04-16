import Foundation

// 삼항연산자
let checkbox: Bool = false
let isChecked: String = checkbox ? "Y": "N"

let age: Int = 32
let checkAge: String = 30...39 ~= age ? "30대입니다." : "30대가 아닙니다."

// 범위 연산자, 패턴 매칭 연산자
// Closed Range Operater
// 1...10
// 1...
//  ...10

// Half-Open Range Operator
// 1 ..< 10
//   ..< 10

let num: Int = 11
1...10 ~= num
1... ~= num
...10 ~= num

1 ..< 10 ~= num
..<10 ~= num
