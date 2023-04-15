import UIKit

// 연관된 데이터를 저장할 때 사용
let (name, age, addr) = ("Kiyoung", 32, "Seoul")

typealias UserInfo = (name: String, age: Int, addr: String)
let user: UserInfo = (name: "Kiyoung", age: 32, addr: "Seoul")

name
age
addr
user.0
user.1
user.2
user.name
user.age
user.addr

func getUserInfo (userName: String?) -> (name: String?, age: Int, addr: String) {
    guard let x = userName else { return ("사용자 정보를 찾을 수 없습니다.", 0, "주소 정보를 찾을 수 없습니다")}
    return (x, 32, "seoul")
}

getUserInfo(userName: "kiyoung")
getUserInfo(userName: nil)
