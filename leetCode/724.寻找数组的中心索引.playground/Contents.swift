import Cocoa
/*
 给定一个整数类型的数组 nums，请编写一个能够返回数组“中心索引”的方法。
 
 我们是这样定义数组中心索引的：数组中心索引的左侧所有元素相加的和等于右侧所有元素相加的和。
 
 如果数组不存在中心索引，那么我们应该返回 -1。如果数组有多个中心索引，那么我们应该返回最靠近左边的那一个。
 
 示例 1:
 
 输入:
 nums = [1, 7, 3, 6, 5, 6]
 输出: 3
 解释:
 索引3 (nums[3] = 6) 的左侧数之和(1 + 7 + 3 = 11)，与右侧数之和(5 + 6 = 11)相等。
 同时, 3 也是第一个符合要求的中心索引。
 示例 2:
 
 输入:
 nums = [1, 2, 3]
 输出: -1
 解释:
 数组中不存在满足此条件的中心索引。
 
 */
func pivotIndex(_ nums: [Int]) -> Int {
    
    //左边的总和 + num[i] + 右边的总和 = 总和
    
    //1.先计算总和
    var sum = 0
    for num in nums {
        sum += num
    }
    
    var left = 0
    
    for (index,value) in nums.enumerated() {
        print("value = \(value),,sum = \(sum),,2*left = \(2*left)")
        if (value == (sum - 2 * left)) {
            return index
        }
        left += value

    }
    
    return -1
}



//pivotIndex([1, 7, 3, 6, 5, 6])
pivotIndex([-1,-1,-1,-1,-1,0])

func dominantIndex(_ nums: [Int]) -> Int {
    
    
var index = 0
    var max = 0
    for _ in 0..<nums.count-1 {
        if nums[index] >= nums[index+1] {
            max = nums[index]
            if max >= nums[index+1] {
                <#code#>
            }
        }
    }
    
}

dominantIndex([3, 6, 1, 0])
