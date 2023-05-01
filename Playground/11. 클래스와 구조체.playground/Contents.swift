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


class TypeProperties {
    // 저장 타입 속성 (기본적으로 지연 속성) 초기화 필수
    static var addr: String = "Seoul"
    static var count: Int = 0
    
    // 계산 타입 속성 (readOnly)
    static var calcType: Int {
        return count * 2
    }
    
    // 저장 속성
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        TypeProperties.count += 1
    }
    
    static func typeMethod() -> String {
        return "helloWorld"
    }
}

var seoulPerson: TypeProperties = TypeProperties(name: "seoulName", age: 111)
var seoulPerson2: TypeProperties = TypeProperties(name: "seoulName", age: 111)
TypeProperties.addr

TypeProperties.count
TypeProperties.calcType
TypeProperties.typeMethod()

// Property Observer
class MyMessage {
    var name: String
    // lazy (지연저장속성)는 불가
    var changeMessage: String = "Default Message" {
        // 값이 바뀌기 전에 호출
        willSet {
            print("'\(changeMessage)'에서 '\(newValue)'로 변경될 예정입니다.")
        }
        
        // 값이 바뀐 후 호출
        didSet {
            print("'\(oldValue)'에서 '\(changeMessage)' 로 변경되었습니다.")
        }
    }
    
    init(name: String) {
        self.name = name
    }
}

let m: MyMessage = MyMessage(name: "kiyoung")
m.changeMessage
m.changeMessage = "안녕하세요"
m.changeMessage = "안녕히계세요"




// Class Instance Method
class AppUser {
    static var userName: String = "기영"
    var name: String
    var taxType: String
    var totalPrice: Double
    
    init(name: String, taxType: String, totalPrice: Double){
        self.name = name
        self.taxType = taxType
        self.totalPrice = totalPrice
    }
    
    func showTax() {
        print("\(name)님이 납부하실 세금은 \(Int(totalPrice * 0.1))원 입니다.")
    }
    
    // 오버로딩이 가능함
    func showTax(a: String) {
        print("실행\(a)")
    }
    
    func changeTaxType(newType taxType: String) {
        self.taxType = taxType
    }
    
    // 타입 메서드, 타입 속성에 접근 가능
    static func typeMethod() {
        print("hello \(userName)")
    }
    
    // 상속 가능
    class func extendsMethod() {
        print("부모의 메서드")
    }
}
AppUser.extendsMethod()
class ExtendsAppUser: AppUser {
    // 부모의 메서드를 재정의 가능
    override class func extendsMethod() {
        print("자식에서 변경")
    }
}
ExtendsAppUser.extendsMethod()


var taxUser: AppUser = AppUser(name: "기영", taxType: "일반과세자", totalPrice: 900000000)
taxUser.showTax()



// Struct Instance Method
struct AppUser2 {
    static var userName: String = "기영"
    var name: String
    var taxType: String
    var totalPrice: Double
    
    init(name: String, taxType: String, totalPrice: Double){
        self.name = name
        self.taxType = taxType
        self.totalPrice = totalPrice
    }
    
    func showTax() {
        print("\(name)님의 세금은 \(Int(totalPrice * 0.1))원 입니다.")
    }
    
    // 오버로딩이 가능함
    func showTax(a: String) {
        print("실행\(a)")
    }
    
    // 구조체 메서드 내에서는 속성 값을 수정할 수 없음. 수정하려면 mutating 키워드를 써야함.
    mutating func changeTaxType(newType taxType: String) {
        self.taxType = taxType
    }
    
    // 타입 메서드, 타입 속성에 접근 가능
    static func typeMethod() {
        print("hello \(userName)")
    }
}

AppUser.typeMethod()

// SubScript Method
class subscriptMethod {
    var arr = ["hello", "World", "안녕", "안녕하세요"]
    
    // get-only 가능
    subscript(idx: Int) -> String {
        get {
            return arr[idx]
        }
        set {
            arr[idx] = newValue
        }
    }
}
var data: subscriptMethod = subscriptMethod()
data[0]
data[0] = "iOS"
data[0]

struct subscriptMethod2 {
    var arr = [[1,2,3], [4,5,6], [7,8,9]]
    
    subscript(x: Int, y: Int) -> Int? {
        if x >= 3 || y >= 3 {
            return nil
        }
        return arr[x][y]
    }
}
var subTest: subscriptMethod2 = subscriptMethod2()
if let result = subTest[1, 1] {
    print(result)
}


enum Users: Int {
    case user = 1, kiyoung, person1, person2
    
    static subscript(n: Int) -> Users {
        return Users(rawValue: n)!
    }
}

let newUser: Users = Users[1]
print(newUser)


// 접근 제어 (은닉화)
class SomeClass {
    private var name: String = "kiyoung"
    
    func nameChange(name: String) {
        self.name = name
    }
    
    func getName() -> String {
        return self.name
    }
}

var someTest: SomeClass = SomeClass()
//someTest.name // 외부에서 접근 불가능
someTest.nameChange(name: "길동이") // 메서드를 이용하여 접근 가능
someTest.getName() // 메서드를 이용하여 접근 가능


// 싱글톤 패턴
class Singleton {
    // 전역변수로 선언
    static let shared = Singleton()
    var userCorpNo: Int = 12312312
    
    // 또 다른 객체에서 생성을 금지
    private init() {}
}

print(Singleton.shared) // 메모리 주소
let obj: Singleton = Singleton.shared
print(obj) // 같은 메모리 주소
obj.userCorpNo = 555555

let changedObj: Singleton = Singleton.shared
print(changedObj.userCorpNo) // 55555, 유일한 객체이기 때문에 메모리 주소에 할당된 변수 값이 바뀜

//let newObj: Singleton = Singleton() // 은닉화를 했기 때문에 새로 생성이 불가능


// 클래스 상속
class UserUUID {
    var id: String = "UUID12345"
}

class UserInfo2: UserUUID {
    var username: String = "kiyoung"
    var birth: Int = 1992
}

// 상속이 불가능한 클래스 final class
final class NotExtendsClass {
    var name: String = "kiyoung"
}

//class ExtendsClass: NotExtendsClass {
//    var age: Int = 32
//}


// 상속된 클래스의 메서드는 재정의 가능
class TestClass1 {
    var userName: String = "kiyoung"
    func testFunc() {
        print("This is testFunc")
    }
}

class TestClass2: TestClass1 {
    // 저장 속성의 재정의는 불가능 하지만 메서드 형태로는 재정의 가능
    override var userName: String {
        get {
            return "helloKiyoung"
        }
        set {
            super.userName = newValue
        }
    }
    
    override func testFunc() {
        // 부모 클래스 testFunc 실행
        super.testFunc()
        print("change testFunc")
    }
}

var test1: TestClass2 = TestClass2()
test1.testFunc()





// 구조체는 기본 생성자 따로 생성하지 않아도 생성됌
struct InitializerTest {
    var name: String
    var age: Int
    var addr: String
}
var initTest: InitializerTest = InitializerTest(name: "kiyoung", age: 32, addr: "seoul")


// 구조체의 생성자
struct InitTest {
    var a: String
    var b: String
    var c: String
 
    // 구조체에서는 지정 생성자
    init() {
        self.init(a: "a", b: "b", c: "c")
    }
    
    init(a: String) {
        self.init(a: a, b: "b", c: "c")
    }
    
    init(a: String, b: String, c: String) {
        self.a = a
        self.b = b
        self.c = c
    }
}

// 클래스의 생성자
class InitTest2 {
    var a: String
    var b: String
    var c: String
    // 지정 생성자
    init(a: String, b: String, c: String) {
        self.a = a
        self.b = b
        self.c = c
    }
    
    convenience init(a: String) {
        self.init(a: a, b: a, c: a)
    }
    
    // 편의 기본 생성자 (상속을 하면서 인스턴스를 만들 때 편하게 만들 수 있도록 사용)
    // 다른 생성자를 호출할 때는 convenience 키워드 필수
    // 편의 생성자는 상속이 되지 않음
    convenience init() {
        self.init(a: "a", b: "b", c: "c")
    }
}

class InitTest3: InitTest2 {
    var d: String
    
    init(a: String, b: String, c: String, d: String) {
        self.d = d
        
        // 내부에서 반드시 상위의 생성자를 호출을 해야함
        super.init(a: a, b: b, c: c)
    }
    
    convenience init(d: String) {
        self.init(a: "a", b: "b", c: "c", d: d)
    }
}


// 필수 생성자
class ParnetClass {
    var x: Int
    
    // 하위 클래스에서 반드시 생성자를 구현해야함
    required init (x: Int) {
        self.x = x
    }
}

class ChildClass: ParnetClass {
    init(y: Int) {
        super.init(x: 0)
    }
    
    required init(x: Int) {
        super.init(x: x)
    }
}

// 실패 가능 생성자
struct People {
    var name: String
    
    // 실패 가능 생성자
    init?(name: String) {
        if name.isEmpty {
            return nil
        }
        
        self.name = name
    }
}
var peopleTest: People? = People(name: "kiyoung")


enum TestEnum: String {
    case A
    case B
    case C
    
}
let aa: TestEnum? = TestEnum(rawValue: "A")
let bb: TestEnum? = TestEnum(rawValue: "D") // nil

class FailedParent {
    var a: String = "a"
    var b: String = "b"
    var c: String = "c"
    
    init()  {  }
//    init?() { }
}

class FailedChilde: FailedParent {
    var d: String = "d"
    
//    실패 가능 생성자에서 실패 불가능 생성자 호출은 가능
    init?(d: String) {
        super.init()
        self.d = d
    }
    
//    실패 불가능 생성자에서 실패 가능 생성자 호출은 불가능 (범위)
//    override init() {
//        super.init()
//    }
}



// 소멸자 (클래스에서만 존재)
class DeinitClass {
    var a: Int = 0
    var b: Int = 0
    
    deinit {
        print("Deinitialers")
    }
}


var de: DeinitClass? = DeinitClass()

// 인스턴스가 소멸되는 시점
de = nil
