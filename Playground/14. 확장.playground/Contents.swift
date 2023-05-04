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




// 확장에서의 생성자
// 클래스
var color: UIColor = UIColor(red: 0.3, green: 0.5, blue: 0.4, alpha: 1)

extension UIColor {
    // 클래스에서는 편의 생성자만 가능
    convenience init(color: CGFloat) {
        self.init(red: color/255, green: color/255, blue: color/255, alpha: color/255)
    }
}


// 구조체
struct Test {
    var x: Double
    var y: Double
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
}

extension Test {
    init() {
        self.init(x: 0.1, y: 0.5)
    }
}

let test01: Test = Test()
print(test01)



// 서브 스크립트의 확장
extension Int {
    subscript(num: Int) -> Int {
        var base = 1
        for _ in 0 ..< num {
            base *= 10
        }
        return (self / base) % 10
    }
}
123123123[0]


// 중첩타입의 확장

extension Int {
    enum Kind {
        case negative, zero, positive
    }
    
    var kind: Kind {
        switch self {
        case 0:
            return Kind.zero
        case let x where x > 0:
            return Kind.positive
        default:
            return Kind.negative
        }
    }
}

let num = 10
num.kind
