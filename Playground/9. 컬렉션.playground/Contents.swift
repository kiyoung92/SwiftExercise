import Foundation

// Array
var nums: Array<Int> = [1, 2, 3, 4, 5]
var numss: [Int] = [1, 2, 3, 4, 5]

nums.count
nums.isEmpty
nums.contains(3)
nums.randomElement()

nums[0]
nums[1...2]
nums.first
nums.last
nums.startIndex
nums.endIndex
nums.firstIndex(of: 5)
nums.lastIndex(of: 5)

nums.insert(contentsOf: [10, 20, 30], at: 2)
nums.insert(33, at: 2)
print(nums)

nums[1] = 43

nums.replaceSubrange(1...3, with: [11, 22, 33])
print(nums)

numss += [11, 22, 33]
print(numss)

numss.append(321)
numss.append(contentsOf: [33, 22, 222])
print(numss)

nums[0...2] = []
print(nums)

nums.remove(at: 0)
print(nums)

nums.removeSubrange(0...3)
print(nums)

nums.append(contentsOf: [1,2,3,4,5])
print(nums)

nums.removeFirst(3)
print(nums)

nums.removeLast(2)
print(nums)

nums.removeAll()
print(nums)

nums.append(contentsOf: [1,2,3,4,5])
print(nums)

// 메모리에는 제거하지 않음
nums.removeAll(keepingCapacity: true)
print(nums)

nums.append(contentsOf: [5,3,56,1,3,2])
print(nums)

// 기본 배열을 오름차 순으로 정렬하고 배열 값은 반환하지 않음
nums.sort()
print(nums)

// 오름차 순으로 정렬된 배열을 반환함
nums.sorted()

nums.reverse()
print(nums)

nums.reversed()

nums.shuffle()
nums.shuffled()



// Dictionary (Hash, 속도 빠름)
var dic: Dictionary<String, String> = ["1": "hello", "2": "world"]
let dicc: [String: String] = ["1": "hello", "2": "world"]
let dicArr: [String: [String]] = ["1": ["hello", "world"]]

dic.count
dic.isEmpty
dic.randomElement()

dic["2"]
dic.keys
dic.values
dic.keys.sorted()
dic.values.sorted()

dic["1"] = "안녕"
print(dic)
dic.updateValue("안녕 또 안녕", forKey: "1")
print(dic)

dic["1"] = nil
print(dic)

dic.removeValue(forKey: "1")
print(dic)
dic.removeAll()
print(dic)



// Set (중복 허용 X)
var setData: Set<Int> = [1, 3, 3, 45, 66]
print(setData)
var setDataa: Set = [1,2,3,3,3,3,4,5,5,4,4,4,2]
print(setDataa)

// 합집합을 리턴함
setData.union(setDataa)
// 원래의 Set을 변경
setData.formUnion(setDataa)

// 교집합을 리턴함
setData.intersection(setDataa)
// 원래의 Set을 변경
setData.formIntersection(setDataa)

// 차집합을 리턴
setData.subtracting(setDataa)
// 원래의 Set을 변경
setData.subtract(setDataa)

// 대칭차집합을 리턴
setData.symmetricDifference(setDataa)
// 원래의 Set을 변경
setData.formSymmetricDifference(setDataa)

setData.count
setData.isEmpty
setData.contains(3)
setData.randomElement()

setDataa.update(with: 10)
print(setDataa)

setDataa.remove(4)
setDataa.removeAll()
print(setDataa)

setDataa.update(with: 1)
print(setDataa)

// 부분집합 여부
setData.isSubset(of: setDataa)

// 진부분집합 여부
setData.isStrictSubset(of: setDataa)

// 상위집합 여부
setData.isSuperset(of: setDataa)

// 진상위집합 여부
setData.isStrictSuperset(of: setDataa)

// 서로소 여부
setData.isDisjoint(with: setDataa)
