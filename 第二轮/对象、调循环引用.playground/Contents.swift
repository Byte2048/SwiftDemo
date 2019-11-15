import UIKit

// 定义一个对象
class Person {
    let name : String
    init(name:String) {
        self.name = name
        print("\(name) is being init")
    }
    // deinit代替OC中的dealloc方法，当对象结束其生命周期时，系统自动执行析构函数。一般可以用来：销毁对象，KVO移除，移除通知，NSTimter销毁等。
    deinit {
        print("\(name) is being deinit")
    }
}

var father : Person?
var mother : Person?
var son : Person?

father = Person.init(name: "哈哈哈")
father = nil


// 循环引用
class Car {
    let name : String
    let color : String
    var bus : Bus?
    
    
    init(name : String,color : String) {
        self.name = name
        self.color = color
        print("车 ：\(name),颜色\(color)")
    }
    
    
    
    deinit {
        print("car 释放了")
    }
}

class Bus {
    let name : String
    // 修改这个属性为弱引用 就可以正常释放
//    var car : Car?
    weak var car : Car?
    init(name : String) {
        self.name = name
    }
    deinit {
        print("bus 释放了")
    }
}

//var car = Car.init(name: "骑车", color: "黄色")
//var bus = Bus.init(name: "大巴车")

var car : Car?
car = Car(name: "骑车", color: "黄色")
var bus : Bus?
bus = Bus(name: "大巴车")

// 1.bus 和 car正常初始化，没有引入另一个对象，可以正常释放
// 2.bus 引入 car，car 不引入 bus  ==>单方面引入，可以正常释放
bus?.car = car
// 3.bus 引入 car，car 引入  bus ==>循环引用，两个对象无法正常释放
// 4.解决办法 对其中一个属性 用 weak修饰，将强引用，改成弱引用，所以置为nil时，再也没有指向car的强引用了
car?.bus = bus

car = nil
bus = nil

// 每个国家都必须有首都，每个城市必须属于一个国家
class Country {
    let name : String
    var captialCity : City!// 每个城市必须哟一个首都
    init(name : String,captialName:String) {
        self.name = name
        self.captialCity = City(name: captialName, country: self)
    }
}

// 在引用对象的生命周期内，如果它可能为nil，那么就用weak引用。反之，当你知道引用对象在初始化后永远都不会为nil就用unowned.
class City {
    let name : String
    // 因为每个城市必须属于一个国家，所以 country对象永远不会是nil，所以使用unowned而不是weak
    unowned let country : Country
    init(name : String ,country : Country) {
        self.name = name
        self.country = country
    }
}
//以上建立了两个类的依赖关系 City的构造函数接受一个Country实例作为参数，并且将实例保存到country实例
