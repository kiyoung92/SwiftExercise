import UIKit

// is 연산자 (타입을 확인하기 위한 연산자)
class Person {
    var name: String = "kiyoung"
    
    func test() {
        print("사람이다")
    }
}

class Student: Person {
    var stuNo: Int = 123
    
    override func test() {
        print("학생이다")
    }
    
    func test2() {
        print("학생 클래스이다.")
    }
}

class High: Student {
    var grade: Int = 1
    
    override func test() {
        print("고등학생이다")
    }
    
    override func test2() {
        print("고등학생 클래스이다.")
    }
    
    func test3() {
        print("고등학생 클래스 메서드이다.")
    }
}

let person1: Person = Person()
let student1: Student = Student()
let high1: High = High()

student1 is Person // true 상속이기 때문
person1 is Student // false
high1 is Student // true


// as?, as!
// 다운 캐스팅
let person2: Student? = person1 as? Student
print(person2) // nil, 저장 속성의 개수 차이 (타입 캐스팅 실패)

if let newPerson = person1 as? Student {
    newPerson.stuNo
    print(newPerson.stuNo)
}

// 강제 다운 캐스팅
//let person4: Student = person1 as! Student




// as (업캐스팅, 항상 성공)
let student2: Person = student1 as Person




// 상속과 다형성
// 다형성: 하나의 객체가 여러가지 타입의 형태로 표현될 수 있음
let person5: Person = Person()
person5.test()

// 타입은 Person이지만 인스턴스는 Student()
let student5: Person = Student()
student5.test()

// 타입은 Person이지만 인스턴스는 High()
let high5: Person = High()
high5.test()

let people: [Person] = [Person(), Student(), High()]

for person in people {
    person.test()
}
