import UIKit

// 값이 없음. 즉, nil을 처리해주기 위한 타입
func optionalTest(name: String?, age: Int?) -> (String?, Int?){
    guard let x = name else { return ("사용자 이름을 찾을 수 없습니다", 0) }
    guard let y = age else { return ("사용자 나이를 찾을 수 없습니다", 0) }
    return (x, age)
}

optionalTest(name: "kiyoung", age: 0)
optionalTest(name: nil, age: 32)
optionalTest(name: "kiyoung", age: nil)

let num: Int? = 10
print(num!)

if let x = num {
    print(x)
}
 
let num2: Int = num ?? 0

if num != nil {
    print(num!)
}

class Product {
    var name: String?
    var age: Int?
    func methodTest() {
        print("helloWorld")
    }
}

var userMade: Product? = Product()
userMade?.name = "바퀴"
userMade?.name
userMade?.methodTest()

let iuotype: String! = userMade?.name
print(iuotype ?? "이름 없음")

// 옵셔널에 대해서는 조금 더 알아볼 필요가 있음
