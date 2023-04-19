import UIKit

// 클래스 (Reference Type)
class User {
    // 저장 속성
    var name: String
    var age: Int
    var addr: String?
    
    init(name: String, age: Int, addr: String) {
        self.name = name
        self.age = age
        
    }
    
    // 메서드
    func enterRoom () {
        print("\(self.name)님이 입장했습니다")
    }
    
    func exitRoom () {
        print("\(self.name)님이 퇴장했습니다")
    }
}

// 객체
var userInfo: User = User(name: "kiyoung", age: 32, addr: "")
userInfo.name
userInfo.age
userInfo.addr

userInfo.enterRoom()
userInfo.exitRoom()



// 구조체 (Value Type)
struct UserInfo {
    // 저장 속성
    var name: String
    var age: Int
    // 지연 저장 속성, 상수x 변수만 가능, 초기화를 해야함
    lazy var addr: String = "seoul"
    
    // 메모리를 많이 차지할 때
    lazy var view = UIImageView()
    
    // 다른 속성을 이용해야할 때
    lazy var birth = {
        return 2023 - age + 1
    }()
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

var userInfo2: UserInfo = UserInfo(name: "kiyoung", age: 32)

// 접근 하는 순간 메모리 공간이 생김 (지연 저장 속성의 특성)
userInfo2.addr
userInfo2.birth

// 구조체는 클래스에 비해서 가볍게 사용할 수 있음 (메모리 관련)
// 데이터 상속이 필요하면 클래스를 사용
// 나머지는 구조체를 사용하는 것이 속도 측면에서 좋음



// 계산 속성
struct Person {
    var birth: Int
    
    // get만 있을 때
    var age2: Int {
        return 2021 - birth + 1
    }
    
    
    var age: Int {
        get {
            return 2023 - birth + 1
        }
        set {
            self.birth = 2023 - newValue + 1
        }
    }
    
    init(birth: Int) {
        self.birth = birth
    }
}

var user: Person = Person(birth: 1992)
user.age        // get
user.age = 40   // set
user.birth

struct BmiCheck {
    var name: String
    var height: Double
    var weight: Double
    
    var bmi: Double {
        get {
            return self.weight / (self.height * self.height) * 10000
        }
        set {
            self.weight = newValue * (self.height * self.height) / 10000
        }
    }
    
    init(name: String, height: Double, weight: Double) {
        self.name = name
        self.height = height
        self.weight = weight
    }
}

var p: BmiCheck = BmiCheck(name: "kiyoung", height: 180, weight: 80)
p.bmi
p.bmi = 23.6915
p.weight
