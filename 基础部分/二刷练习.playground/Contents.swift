import Cocoa

func shortestToChar(_ S: String, _ C: Character) -> [Int] {
    var indexArr : [Int] = []
    
    //找到所有的目标字母的下标
    for (index,value) in S.enumerated() {
        if value == C {
            indexArr.append(index)
        }
    }
    
    var result : [Int] = []
    
    for (index,_) in S.enumerated() {
        let disten = indexArr.map{
            abs($0 - index)
        }.min()!
        result.append(disten)
    }
    
    return result
    
}

//shortestToChar("loveleetcode", "e")

func dominantIndex(_ nums: [Int]) -> Int {
    var max = nums.first
    var numIndex = -1
    
    var index = 0
    for _ in 0..<nums.count-1 {
        if nums[index] < nums[index+1] {
            max = nums[index+1]
            numIndex = index+1
        }
        index += 1
    }

    print(max)
    
    let ok = nums.map({  -> Bool in
        if (max!-($0 * 2)) > 0  {
            break
        }else{
            return false
        }
    })

    return -1
}

dominantIndex([3, 6, 1, 0,16,11])
