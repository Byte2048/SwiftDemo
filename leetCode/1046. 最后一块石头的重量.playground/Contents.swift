import Cocoa
/*
 有一堆石头，每块石头的重量都是正整数。
 
 每一回合，从中选出两块最重的石头，然后将它们一起粉碎。假设石头的重量分别为 x 和 y，且 x <= y。那么粉碎的可能结果如下：
 
 如果 x == y，那么两块石头都会被完全粉碎；
 如果 x != y，那么重量为 x 的石头将会完全粉碎，而重量为 y 的石头新重量为 y-x。
 最后，最多只会剩下一块石头。返回此石头的重量。如果没有石头剩下，就返回 0。
 
 */
func lastStoneWeight(_ stones: [Int]) -> Int {
    
    var result = stones
    while result.count > 1 {
        
        result = result.sorted()
        let top1 = result.removeLast()
        let top2 = result.remove(at: result.count-1)
        //        print("当前数组\(result)")
        //        let top1 = result.max()!
        //        print("最大\(String(describing: top1))")
        //        result.popLast()
        //        let top2 = result.max()!
        //        print("第二大\(String(describing: top2))")
        //        result.popLast()
        
        if top1 != top2 {
            result.append(abs(top1-top2))
        }
    }
    
    return result.isEmpty ? 0 : result.first!
    
}

//lastStoneWeight([3,8,1,12,42,24,53,12])
//lastStoneWeight([13,18,11,112,412,124,153,112])


