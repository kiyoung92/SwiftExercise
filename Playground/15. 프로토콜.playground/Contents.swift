import UIKit

protocol Run {
    func canRun()
    func afterRun()
}

// 구조체에서의 프로토콜 채택
struct TestStruct: Run {
    // 채택한 프로토콜의 메서드를 반드시 정의해줘야함.
    func canRun() {
        print("can run !")
    }
    func afterRun() {
        print("drink!")
    }
}

class User {
    var name: String = "kiyoung"
    var age: Int = 32
    var addr: String = "seoul"
}

// 상속과 프로토콜 채택
class Info: User, Run {
    func canRun() {
        print("can run !")
    }
    
    func afterRun() {
        print("more drink!")
    }
}

struct Total {
    // 프로토콜을 타입으로 인식
    func totalFunc(obj: Run) {
        obj.afterRun()
    }
}

let ccc = Info()
let ttt: Total = Total()
ttt.totalFunc(obj: ccc)




// 프로토콜에서의 속성 정의
protocol Test02 {
    // 최소한의 요구 사항만 정의
    var id: String { get }
    var name: String { get set }
    static var type: String { get set }
}

struct Test02Struct: Test02 {
    var id: String = "UUID"
    var name: String = "kiyoung"
    static var type: String = "MASTER"
}

class Test02Class: Test02 {
    var id: String = "UUID"
    var name: String = "kiyoung"
//    static var type: String = "MASTER"
    
    // 저장속성, 계산속성 모두 구현 가능
    // 최소한의 요구사항이기 때문에 class 키워드 사용 가능 (하위의 클래스에서 재정의 가능하게)
    class var type: String {
        get {
            return "MASTER"
        }
        set {}
    }
}



// 프로토콜에서의 메서드 정의
protocol Method {
    static func test()
    func numbers() -> Int
    
    // 구조체에서 저장 속성을 변경하는 경우
    // 클래스에서는 해당되지 않음. 채택 후 그냥 사용하면 됌
    mutating func test2()
}

class Number: Method {
    static func test() {
        print("test")
    }
    
    func numbers() -> Int {
        return 1
    }
    
    func test2() {
        print("test2")
    }
}

struct NumberS: Method {
    static func test() {
        print("test1")
    }
    
    func numbers() -> Int {
        return 1
    }
    
    mutating func test2() {
        print("test2")
    }
}



// 열거형
protocol Togglable {
    mutating func toggle()
}

enum SwitchTest: Togglable {
    case on, off
    
    mutating func toggle() {
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
}

var sw: SwitchTest = SwitchTest.on
sw.toggle()
sw.toggle()
