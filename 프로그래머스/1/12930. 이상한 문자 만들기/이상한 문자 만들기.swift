func solution(_ s:String) -> String {
    let strArr = s.map { String($0) }
    var result = [String]()
    var index = 0
  
    for str in strArr {
        var newStr = ""
    
        if str == " " {
            newStr += " "
            index = 0
        } else {
            for c in str {
                if index.isMultiple(of: 2) {
                    newStr += c.uppercased()
                } else {
                    newStr += c.lowercased()
                }
        
                index += 1
            }
        }
    
        result.append(newStr)
    }
  
    return result.joined(separator: "")
}