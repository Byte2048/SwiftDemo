import Cocoa
/*
 给定一个排序数组，你需要在原地删除重复出现的元素，使得每个元素只出现一次，返回移除后数组的新长度。
 
 不要使用额外的数组空间，你必须在原地修改输入数组并在使用 O(1) 额外空间的条件下完成。
 
 示例 1:
 
 给定数组 nums = [1,1,2],
 
 函数应该返回新的长度 2, 并且原数组 nums 的前两个元素被修改为 1, 2。
 
 你不需要考虑数组中超出新长度后面的元素。
 示例 2:
 
 给定 nums = [0,0,1,1,1,2,2,3,3,4],
 
 函数应该返回新的长度 5, 并且原数组 nums 的前五个元素被修改为 0, 1, 2, 3, 4。
 
 你不需要考虑数组中超出新长度后面的元素。
 
 因为数组的inout是引用类型的 所以在方法内修改数组是对调用者是生效的
 */
func removeDuplicates(_ nums: inout [Int]) -> Int {
    if nums.count == 0 {
        return 0
    }
    var i = 0
    for _ in 1..<nums.count {
        if nums[i] == nums[i+1] {
            nums.remove(at: i)
        }else{
            i += 1
        }
    }
    
    return nums.count
}

var arr : [Int] = []
//removeDuplicates(&arr)

/*
 给定一个数组，它的第 i 个元素是一支给定股票第 i 天的价格。
 
 设计一个算法来计算你所能获取的最大利润。你可以尽可能地完成更多的交易（多次买卖一支股票）。
 
 注意：你不能同时参与多笔交易（你必须在再次购买前出售掉之前的股票）。
 
 示例 1:
 
 输入: [7,1,5,3,6,4]
 输出: 7
 解释: 在第 2 天（股票价格 = 1）的时候买入，在第 3 天（股票价格 = 5）的时候卖出, 这笔交易所能获得利润 = 5-1 = 4 。
 随后，在第 4 天（股票价格 = 3）的时候买入，在第 5 天（股票价格 = 6）的时候卖出, 这笔交易所能获得利润 = 6-3 = 3 。
 示例 2:
 
 输入: [1,2,3,4,5]
 输出: 4
 解释: 在第 1 天（股票价格 = 1）的时候买入，在第 5 天 （股票价格 = 5）的时候卖出, 这笔交易所能获得利润 = 5-1 = 4 。
 注意你不能在第 1 天和第 2 天接连购买股票，之后再将它们卖出。
 因为这样属于同时参与了多笔交易，你必须在再次购买前出售掉之前的股票。
 
 */
//贪心算法
//只需要对比今明两天，只要明天比今天贵 就操作 赚的就是明天-今天的差价
func maxProfit(_ prices: [Int]) -> Int {
    
    if prices.count == 0 {
        return 0
    }
    
    var money = 0
    var index = 0
    
    for _ in 0..<prices.count-1 {
        if prices[index] < prices[index+1] {
            money += prices[index+1] - prices[index]
        }
        index += 1
    }
    return money
}
//maxProfit([1,2,3,4,5])
//maxProfit([7,1,5,3,6,4])

/*
 给定一个数组，将数组中的元素向右移动 k 个位置，其中 k 是非负数。
 
 示例 1:
 
 输入: [1,2,3,4,5,6,7] 和 k = 3
 输出: [5,6,7,1,2,3,4]
 解释:
 向右旋转 1 步: [7,1,2,3,4,5,6]
 向右旋转 2 步: [6,7,1,2,3,4,5]
 向右旋转 3 步: [5,6,7,1,2,3,4]
 示例 2:
 
 输入: [-1,-100,3,99] 和 k = 2
 输出: [3,99,-1,-100]
 解释:
 向右旋转 1 步: [99,-1,-100,3]
 向右旋转 2 步: [3,99,-1,-100]
 */
//func rotate(_ nums: inout [Int], _ k: Int) {
//    var index = nums.count-1
//    for _ in k..<nums.count-1 {
//        let temp = nums[index]
//    }
//
//}
//
//var arr = [-1,-100,3,99]
//rotate(&arr, 3)


//func aaa(){
//    let str = "Let's take LeetCode contest"
//
//    let arr = str.components(separatedBy: " ")
//
//    var result : String = ""
//    var index = 0
//    for str in arr {
//        result.append(String(str.reversed()))
//        if index != arr.count-1 {
//            result.append(" ")
//        }
//        index += 1
//    }
//
//    print(result)
//}

//输入: "Let's take LeetCode contest"
//输出: "s'teL ekat edoCteeL tsetnoc"
//aaa()


func reverseWords(_ s: String) -> String {
    
    //转数组 去掉空格
    let arr = s.split(separator: " ")
//    let arr = s.components(separatedBy: " ")
    
    
    let arr2 = arr.map({
        String($0.reversed())
    }).joined(separator: " ")
    
    return arr2
    
    
    
}

reverseWords("Let's take LeetCode contest")
