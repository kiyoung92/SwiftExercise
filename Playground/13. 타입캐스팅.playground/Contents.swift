import UIKit

// is 연산자 (타입을 확인하기 위한 연산자)
class Person {
    var name: String = "kiyoung"
}

class Student: Person {
    var stuNo: Int = 123
}

class High: Student {
    var grade: Int = 1
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
