import Foundation

// for
for i in 1...10 {
    print(i)
}

// 와일드 카드 패턴
for _ in 1...10 {
    print("helloWorld")
}

for i in (1...10).reversed() {
    print(i)
}

for i in stride(from: 1, to: 15, by: 2) {
    print(i)
}

// while
var cnt: Int = 0

while cnt != 10 {
    cnt += 1
    print(cnt)
    if cnt == 10 {
        print("\(cnt) 끝")
    }
}

cnt = 0

repeat {
    cnt += 1
    print(cnt)
    if cnt == 10 {
        print("\(cnt) 끝!")
    }
    
} while cnt != 10


for i in 1...10 {
    if i % 2 == 0 {
        continue
    }
    print(i)
}

for i in 1...10 {
    if i % 2 == 0 {
        break
    }
    print(i)
}

for i in 2...9 {
    for j in 1...9 {
        print("\(i) * \(j) = \(i * j)")
    }
}

var str: String = ""
for _ in 1...5 {
    str += "*"
    print(str)
}

for i in 1...5 {
    for j in 1...5 {
        if j <= i {
            print("*", terminator: "")
        }
    }
    print()
}
