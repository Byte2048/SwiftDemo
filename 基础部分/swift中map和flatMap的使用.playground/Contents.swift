import Cocoa

let numbers = [1,2,3,4]
let numbers2 = numbers.map {// 对数组中中每一个元素执行闭包中定义的操作。相当于对数组中的所有元素做了一个映射
    $0 + 2
}
print(numbers2)
let arr1 = ["a","b","c","d","e"]
let arr2 = arr1.map{
    "No.\($0.uppercased())"
}
print(arr2)

let arr3 = [[1,2,3],[5,6,7]]
let arr4 = arr3.map{
    $0.map{
        $0 + 1
    }
}
print(arr4)
let arr5 = arr3.flatMap{
    $0.map{
        $0 + 1
    }
}
print(arr5)
// 对于二维数组
