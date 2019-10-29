import Cocoa

class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}


class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

//按住 option library的类型是MediaItem
let library = [
    Movie(name: "Casablanca", director: "Michael Curtiz"),
    Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
    Movie(name: "Citizen Kane", director: "Orson Welles"),
    Song(name: "The One And Only", artist: "Chesney Hawkes"),
    Song(name: "Never Gonna Give You Up", artist: "Rick Astley")
]

//类型检查
for item in library{
    if item is Movie {
        print("\(item) 是 Movie 类型")
    } else if item is Song {
        print("\(item) 是 Song 类型")
    }
}

// 向下转型
// 某类型的一个常量或者变量可能在幕后实际上属于一个子类 用类型转换操作符 （as?  as!）
// 因为向下转型可能会失败
for item in library {
    //解读这句：尝试将item转为Movie类型，若成功，设置一个新的临时常量movie来存储返回的可选Movie中的值
    if let movie = item as? Movie{
        print("Movie:\(movie),\(movie.director)")
    }
}

// Any 和 AnyObject的类型转换
// Any 可以表示任何类型，包括函数类型
// AnyObject可以表示任何类型的实例

let option : Int? = 3
var things : [Int] = []
//things.append(option)//警告
things.append(option as Any as! Int)


