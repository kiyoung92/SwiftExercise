import Foundation

var str1: String = "hello world" // 변수
let str2: String = "hello world" // 상수

str1 = "My Playground"
//str2 = "My Playground" // 상수 변경 불가

var stringData: String = "문자열"
var num: Int = 0 // 정수
var double: Double = 1.2 // 소수점 이하 15자리
var float: Float = 1.2 // 소수점 이하 6자리
var boolean: Bool = true // true or false
var character: Character = "A" // 16비트 유니코드 문자열
// bit 크기 별 Int, UInt도 있음

var string = "문자열" // 타입 추론 가능

typealias myType = String // 타입 별칭 가능
var myString: myType = "helloWorld"
var numberString: String = "1"
var numberToString = Int(numberString) // 타입 변환 가능

var tuplesData: (String, Int) = ("나는", 10)
print("\(tuplesData.0) \(tuplesData.1)대이고 싶어ㅎㅅㅎ")
