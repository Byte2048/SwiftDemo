import Cocoa

func sortedSquares(_ A: [Int]) -> [Int] {
    
    var newArray = A.map {
        return $0 * $0
    }
    
//    var newArray : [Int] = []
//    for num in A {
//        newArray.append(num*num)
//    }
    newArray.sort()
    return newArray
}

sortedSquares([-4,-1,0,3,10])
