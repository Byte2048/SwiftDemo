import UIKit

var str = "Hello, playground"

struct ValueType{
    var name:String
}
var object = ValueType(name: "小韩哥")
//var object = ValueType(name: "张三")
let name = \ValueType.name
//
////set
object[keyPath: name] = "Swift4"
//object[KeyPath: name] = "Swfit4"
////get
//let valueOfName = object[KeyPath: name]


//struct ValueType {
//    var name:String
//}
//var object = ValueType(name: "小韩哥")
//let name =  \ValueType.name
//set
//object[keyPath: name] = "Swift4"
//get
let valueOfName = object[keyPath:name]

