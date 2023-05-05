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
