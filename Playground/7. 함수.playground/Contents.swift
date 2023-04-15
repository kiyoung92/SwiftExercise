import UIKit

func testFns(name: String, age: Int) {
    print("\(name), \(age)")
}

testFns(name: "kiyoung", age: 32)

// 디폴트 값 사용 가능
func testFns2(name: String = "kiyoung", age: Int) {
    print("\(name), \(age)")
}

// 함수 오버로딩 지원
func testFns2(name: String = "kiyoung", age: Int, addr: String) {
    print("\(name), \(age), \(addr)")
}

testFns2(age: 32)
testFns2(age: 32, addr: "서울")


// inout, 주소 값을 참조하기 때문에 파라미터로 들어오는 값이 상수일 경우 함수 안에서 변경 불가
func originFns(name: inout String, age: inout Int) {
    name = "zzz"
    age = 2
}

var str: String = "kiyoung"
var age: Int = 32
originFns(name: &str, age: &age)

// 결과값을 사용하지 않아도 된다는 어트리뷰트
@discardableResult
func cloneData (name: String, age: Int) -> (String, Int) {
    return (name, age)
}
cloneData(name: "kiyoung", age: 32)

func randomChar (str: String) -> Character? {
    if let x = str.randomElement() {
        return x
    } else {
        return nil
    }
}

randomChar(str: "kiyoung")

func checkPrimeNumber(num: Int) -> String {
    var cnt: Int = 0
    for i in 1...num {
        if num % i == 0 {
            cnt += 1
        }
    }
    return cnt == 1 || cnt == 2 ? "소수입니다." : "소수가 아닙니다"
}

checkPrimeNumber(num: 11)

func factorial(num: Int) -> Int {
    var sum: Int = 1
    for i in 1...num {
        sum = sum * i
    }
    return sum
}
factorial(num: 5)

func factorialF(num: Int) -> Int {
    if num <= 1 {
        return 1
    }
    return num * factorialF(num: num - 1)
}
factorialF(num: 10)
