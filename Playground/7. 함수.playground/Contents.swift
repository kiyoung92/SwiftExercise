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
