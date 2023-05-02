import UIKit

class ExtentionClass {
    var name: String = "kiyoung"
    
    func overrideTest() {
        print("재정의")
    }
}

// 확장 (class, struct, enum 사용 가능)
extension ExtentionClass {
    // 메서드 형태만 추가 가능
    // 확장된 메서드는 override가 불가능함
    @objc func addFunc() {
        print("추가된 메서드")
    }
    
    static func testFunc() {
        print("static func")
    }
}

class Child: ExtentionClass {
    var age: Int = 32
    
    // 확장에서 정의된 메서드는 재정의가 불가능하지만
    // 확장에서 @objc 키워드를 사용하여 재정의 가능
    override func addFunc() {
        print("???")
    }
}

var instance: ExtentionClass = ExtentionClass()
instance.addFunc()





extension Int {
    var sq: Int {
        return self * self
    }
}
6.sq
