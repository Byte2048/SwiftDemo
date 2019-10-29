import Cocoa

class Person {
    let name : String
    init(name : String) {
        self.name = name
        print("\(name) is being init")
    }
    
    //当不再使用这个实例时，强引用会被断开，ARC会销毁它
    deinit {
        print("\(name) is being deinit")
    }
}

// 定义了类型为Person?的变量
var pers1 : Person?
var pers2 : Person?
var pers3 : Person?

pers1 = Person.init(name: "张三")

pers2 = pers1
pers3 = pers1

pers2 = nil
pers3 = nil
pers1 = nil


//循环引用

class Car {
    let name : String
    init(name : String) {
        self.name = name
    }
    var bus : Bus?
    deinit {
        print("car释放了")
    }
}

class Bus {
    let name : String
    init(name : String) {
        self.name = name
    }
    
    weak var car : Car?//当其中一个属性被设置成weak后
    //car对bus强引用 bus对car弱引用
    //所以置为nil时，再也没有指向car的强引用了，该实例会被销毁
    
    deinit {
        print("bus 释放了")
    }
}

var car : Car?
var bus : Bus?
car = Car(name: "car")
bus = Bus(name: "bus")

car?.bus = bus
bus?.car = car


bus = nil
car = nil

//每个国家都必须有首都，每个城市必须属于一个国家

class Country {
    let name : String
    var capitalCity : City!//每个城市必须有一个首都
    
    init(name: String ,capitalName : String) {
        self.name = name
        self.capitalCity = City(name: capitalName, country: self)
    }
}

class City {
    let name : String
    unowned let country : Country
    init(name : String,country : Country) {
        self.name = name
        self.country = country
    }
}
//以上建立了两个类的依赖关系 City的构造函数接受一个Country实例作为参数，并且将实例保存到country熟悉

let dogString = "Dog‼🐶"

for codeUnit in dogString.unicodeScalars {
    print("\(codeUnit)")//D-o-g0!!-🐶
}



func hello (name : String) -> [String] {
    return [name]
}

print(hello(name: "123"))

func backward (_ s1:String,_ s2:String) -> Bool {
    return s1<s2
}
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(names.sorted(by: {$0>$1}))
