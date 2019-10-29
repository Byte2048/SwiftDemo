import Cocoa


func numJewelsInStones(_ J: String, _ S: String) -> Int {
    //遍历S 查看S的元素是否包含在J中 包含就+1
    
    var num = 0
    for stone in S {
        if J.contains(stone) {
            num += 1
        }
    }
    

    
    
    return num
}

numJewelsInStones("aA", "aAAbbbb")


func defangIPaddr(_ address: String) -> String {
    return address.replacingOccurrences(of: ".", with: "[.]")
}

//print(defangIPaddr("1.1.1.1"))
//
//let string = "Hee"
//print(string.lowercased())


func hammingDistance(_ x: Int, _ y: Int) -> Int {

    var count = 0
    var result = x^y
    while result > 0 {
        count += result&1//对二进制和1取并 因为只有两个位置都为1的时候 才为1，这样就计算出一个1的数量
        result = result >> 1//>>1相当于除以2，向右移一位，0101>>1 = 0010&0001 = 0000
    }
    return count
}

hammingDistance(1, 8)
