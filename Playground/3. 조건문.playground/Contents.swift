import UIKit

var num1: Int = 10
var num2: Int = 10

if num1 < num2 {
    print("\(num2)이(가) 더 큼")
} else if num1 > num2 {
    print("\(num1)이 더 큼")
} else {
    print("같음")
}

switch num1 {
case 1..<10:
    print("\(num1) 1 ~ 9 사이")
case 11...20:
    print("\(num1) 11 ~ 20사이")
case 10:
    print("\(num1)")
default:
    print("맞는 숫자 없음")
    break
}

1...5 ~= num1

switch num1 {
case let num where num < 10 :
    print(num)
default:
    break
}

switch num1 {
case let num where num % 2 == 0:
    print("짝수")
default:
    print("홀수")
}

func guardFunction(isChecked: String) -> Bool {
    guard isChecked == "Y" else { return false }
    return true
}

let checked: Bool = guardFunction(isChecked: "Y")
