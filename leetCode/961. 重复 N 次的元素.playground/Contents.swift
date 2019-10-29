import Cocoa
/*
 在大小为 2N 的数组 A 中有 N+1 个不同的元素，其中有一个元素重复了 N 次。
 
 返回重复了 N 次的那个元素。
 
   
 
 示例 1：
 
 输入：[1,2,3,3]
 输出：3
 示例 2：
 
 输入：[2,1,2,5,3,2]
 输出：2
 示例 3：
 
 输入：[5,1,5,2,5,3,5,4]
 输出：5
 
分析得知 如果N为1  即 长度为2的数组中有2个不同的元素 其中一个元素重复了1次
       如果N为2  即 长度为4的数组中有3个不同的元素 其中一个元素重复了2次
 
       如果N为5  即 长度为10的数组中有6个不同的元素 其中一个元素重复了5次  找出出现两次的就行
 */


func repeatedNTimes(_ A: [Int]) -> Int {
    var dict = Dictionary<String,Int>()
    for a in A {
        if dict.keys.contains(String(a)) {
            return a
        }else{
            dict[String(a)] = 1
        }
    }
    return 0
}

 repeatedNTimes([5,1,5,2,5,3,5,4])



