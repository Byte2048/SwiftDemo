import Cocoa

//向 one 所在的内存区域发起一次写操作
var one = 1

//向 one 所在的内存区域发起一次读操作
//print("\(one)")

func insert(_ number : inout Int){
    number += one
}

insert(&one)
