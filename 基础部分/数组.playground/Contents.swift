import Cocoa

//1.初始化空数组
let arr1 = [Int]()
let arr2 : [Int] = []

//2.初始化有值数组
var arr3 = [1,2,3]

//3.添加元素
arr3.append(4)

//4.添加新数组
let addArr = [5,6,7]
arr3 += addArr//不能用arr3.append(addArr)合并数组

//5.插入元素
arr3.insert(110, at: 3)
//6.根据下表移除元素
arr3.remove(at: 0)
arr3.removeAll()

arr3.append(1)
arr3.append(2)
arr3.append(3)
arr3.append(4)
arr3.append(5)

for (index,value) in arr3.enumerated() {
    //    print("\(index) + \(value)")
}

for item in 0..<arr3.count {
    //    print(item)
}

for item in 1...2 {
    //    print(item)
}

//过滤器  //4.5
let result = arr3.filter { (item) -> Bool in
    return item > 3
}

//简化
let result2 = arr3.filter{
    $0 > 3//闭包中的return是可以省略的
}

let result3 = arr3.filter{
    $0 % 2 == 0
}

//过滤器总结
//1.


func shortestToChar(_ S: String, _ C: Character) -> [Int] {
    //时间复杂度O(n2)
    //这里是C所在的位置
    var indexList:[Int] = []
    var result : [Int] = []
    
    for (index,value) in S.enumerated() {
        if value == C {
            indexList.append(index)//找到目标元素的位置
        }
    }
    
    for (index,_) in S.enumerated() {
        //计算两个数组中的最小值 取绝对值
        let temp = indexList.map{
            abs($0-index)
            }.min()!
        
        result.append(temp)
    }
    return result
}
shortestToChar("loveleetcode", "e")


func sortArrayByParityII(_ A: [Int]) -> [Int] {
    let startData : NSData = NSData()
    print(startData)
    var even : [Int] = []
    var odd : [Int] = []
    var result : [Int] = []
    
    for value in A {
        if value%2 == 0 {//偶数
            even.append(value)
        }else{
            odd.append(value)
        }
    }
    
    for (index,value) in odd.enumerated() {
        result.append(even[index])
        result.append(value)
    }
    
    return result
}

sortArrayByParityII([4,2,5,7])
func sortArrayByParity3(_ A: [Int]) -> [Int] {
    var i = 0
    var j = 1
    var result = A
    while (i < result.count-1 && j < result.count) {
        if result[i]%2 != 0 {
            if result[j]%2 == 0 {
                let temp = result[i]
                result[i] = result[j]
                result[j] = temp
            }else{
                j += 2//奇数位为奇数
            }
        }else{
            i += 2//偶数位为偶数
        }
        
    }
    
    return result
}

//sortArrayByParity3([4,2,5,7]);
sortArrayByParity3([3,4,5,6])

print((38 - 1) % 9 + 1)


func addDigits(_ num: Int) -> Int {
    var result = num
    
    var sum = 0
    while result >= 10 {
        
        sum = 0
        
        while result > 0{
            let temp = result%10 // 计算个位
            sum += temp
            result = result/10
        }
        
        result = sum
        
    }
    return sum
}

addDigits(138)
