import Cocoa
func findWords(_ words: [String]) -> [String] {
    let v1 = "qwertyuiop"
    let v2 = "asdfghjkl"
    let v3 = "zxcvbnm"

    var result : [String] = []
    
    
    for word in words {
        let string = word.lowercased()
        var targetLine : String = ""
        //首先用string的首字母确定单词是属于哪一行的
        let first = string.first!
        if v1.contains(first)  {
            targetLine = v1
        }else if v2.contains(first) {
            targetLine = v2
        }else if v3.contains(first) {
            targetLine = v3
        }
        
        if isContains(string, targetLine) {
            result.append(word)
        }
    }
    
    return result
}

//判断当前单词是否都包含在首字母所在的行内
func isContains(_ string:String,_ target:String) -> Bool{
    var flag = true
    for str in string {
        if !target.contains(str) {
            flag = false
        }
    }
    return flag
}

findWords(["Hello", "qwert", "Asd", "Prasfdc"])
