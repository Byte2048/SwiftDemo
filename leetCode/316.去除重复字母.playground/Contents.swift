import Cocoa

//去除重复字母
/*
 思路
 遍历字符串
 
 创建一个字典 对已经遍历到的字符 添加到字段中 "x":"1"
 key是字符 value是1
 然后添加到一个新串中
 
 继续遍历 每次都在字典中查找是否有这个字符 如果存在 则忽略
 */
func removeDuplicateLetters(_ s: String) -> String {
    
    var dict = Dictionary<String,Int>()
    var result = ""
    
    for str in s {
        if dict.keys.contains(String(str)) != true  {
            dict[String(str)] = 1
            result.append(str)
        }
    }
    return result
}

removeDuplicateLetters("bcabc")


