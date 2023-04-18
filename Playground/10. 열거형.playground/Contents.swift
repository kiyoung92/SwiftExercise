import Foundation

// 타입을 case 안에서 정의할 수 잇는 타입, Optional은 enum 타입으로 정의
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

var today: Weekday = Weekday.monday

// 원시값
enum Weekday2: Int {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

var today2: Weekday2? = Weekday2(rawValue: 0)
var today3: Weekday2 = Weekday2(rawValue: 0)!
var todayValue: Int = Weekday2.monday.rawValue

// 연관값
enum User {
    case basicInfo(name: String, age: Int)
    case bizNo(no: Int)
}

var userInfo: User = .basicInfo(name: "kiyoung", age: 32)
var userBizNo: User = .bizNo(no: 1101101101)



enum Test: String {
    case test1 = "helloWorld"
}

var testCase: Test? = Test(rawValue: "helloWorld")

Optional(testCase) // Optional.some
//Optional.none // nil

enum UserType: String {
    case normal
    case biz
}

var userType: UserType? = .normal

if let x = userType {
    print(x)
}

switch userType {
case .normal:
    print("일반 고객")
case .biz:
    print("사업자 고객")
default:
    print("고객 정보를 확인해 주세요")
}

let num: Int? = 10

switch num {
case .some(let x):
    print(x)
case .none:
    print("nil")
}

if case .some(let x) = num {
    print(x)
}

if case let x? = num {
    print(x)
}

switch userType {
case .normal:
    print("일반고객")
// 열겨형의 모든 케이스를 다루지 않음을 경고로 알려주는 키워드 @unknown
@unknown default:
    print("helloWorld")
}
