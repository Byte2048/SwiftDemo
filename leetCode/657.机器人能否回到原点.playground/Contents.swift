import Cocoa
func judgeCircle(_ moves: String) -> Bool {
    //如果机器人走了奇数步 肯定回不到原点
    if (moves.count % 2 != 0)  {
        return false
    }
    
    var UDCount = 0
    var LRCount = 0
    
    for step in moves.unicodeScalars {
        
        switch step {
        case "U":
            UDCount += 1
        case "D":
            UDCount -= 1
        case "R":
            LRCount += 1
        case "L":
            LRCount -= 1
        default:
            break
        }
    }

    
    
    return UDCount == 0 && LRCount == 0

}

judgeCircle("LLLLLLLLLLRRRRRRRRRRUUUUUUUUUUDDDDDDDDDD")
