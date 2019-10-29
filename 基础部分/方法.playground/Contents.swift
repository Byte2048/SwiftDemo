import Cocoa

//实例方法

class Counter {
    var count = 0
    func incrememt (){
        count += 1
        print(count)
    }
    
    func increment(by amount : Int) {
        count += amount
        print(count)
    }
    
    func reset(){
        count = 0
        print(count)
    }
    
}

let counter = Counter()
counter.incrememt()

class SomeClass {
    static func someTypeMethod() {
        print("类方法")
    }
}

SomeClass.someTypeMethod()
//<T> 表示站位类型参数 下面的参数必须一致才行
struct Stack<T>{
    var items = [T]()
    
    mutating func push(_ item : T ){
        items.append(item)
    }
    
    mutating func pop() -> T {
        return items.removeLast()
    }
    
    func check() -> [T] {
        return items
    }
}

var testStack = Stack<String>()

testStack.push("111")
testStack.push("222")
testStack.push("333")
print(testStack.pop())
print(testStack.check())

extension Stack {
    var topItem : T? {
        return items.isEmpty ? nil : items[items.count - 1]
    }
}

//判断这个元素是否为nil
if let top = testStack.topItem {
    print(top)
}

var one = "123"
var two = "qwe"

//swap交换两个参数的值 并且可以继续使用这两个参数
//swap(&one, &two)

func findIndex<T:Equatable>(of valueToFind : T,in array :[T]) -> Int? {
    for (index,value) in array.enumerated() {
        if value == valueToFind {
            return index
        }
    }
    return nil
}
if findIndex(of: 9.33, in: [3.12,0.3,9.3,4.2]) != nil {
    print("存在")
}else{
    print("不存在")
}
