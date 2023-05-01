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
