import Cocoa
import Foundation

// 懒加载格式
// lazy var 变量 : 类型 = {创建变量代码}()

//var array : [String] = {
//    return ["hello","111","222"]
//}()
//
//print(array)

// 第一天 面向过程变成：基本语法
//1.常量
let a : Double = 1.23
print(a)

//2.变量
var b = 5;

//3.值的类型和类型推断
var age : Int = 18 // 这里的 类型 Int，可以不写
//var age = 18

//4.浮点
var p = 1.1

//5.类型转换，会自行的进行类型的推断，自动做一些转换的工具
var q1 = 2.2
q1 = 5
print(q1) // 5.0

//6.bool类型
var ok = true
ok = false

//7.元组 tupleL：定义变量的一整个组合
var className = (day:3,unit:"天",lang:"swift",version:"4.2")
print(className.day)

//8.可选类型
//格式： var 变量:类型？，默认是无值（nil）
var address : String?
print(address as Any)// nil

//字符串和字符
var stra = ""
var strb = "111"
print(stra.isEmpty)
print(strb.isEmpty)
print(strb.count)
var strc = "我"
var strd = "一起哈皮"
for word in strd {
    print(word)
}

let aa = "aa"
let bb = "bb"
let cc = aa + bb// aabb

var result = aa + bb
let number = "1"
result.append(number)//aabb1

// 集合
//有序可重复 array
//无序不重复  set
//无序不重复  字典
//批量处理集合中的元素 for in

//数组

//元素3，重复10次
//无序
let array = repeatElement(3, count: 10)
let array2 = Array(0...5)
var array3 = ["1111","2222","33333"]
array3.contains("33333")
array3.count
array3.isEmpty

//字典

var dic1 = Dictionary<String,String>()
var dic3 = ["key1":"value1","key2":"value2"]


//函数
func add(x:Int,y:Int) -> Int{
    return x+y
}

var z = add(x: 3, y: 4)

func mutiply(x:Int,y:Int) -> Int{
    return x*y
}

func cacl(x:Int,y:Int,mutiply:(Int,Int)->Int)->Int{
    return mutiply(x,y)
}

cacl(x: 3, y: 4, mutiply: add)


var city = ["222","111","333","666"]
var city2 = city.sorted{
    $0 > $1
}




