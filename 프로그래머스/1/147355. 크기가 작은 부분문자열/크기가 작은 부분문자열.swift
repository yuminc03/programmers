import Foundation

func solution(_ t:String, _ p:String) -> Int {
    let pNum = Int(p) ?? 0
    let tArr = t.map { String($0) }
    var subStrArr = [String]()
  
    for i in 0 ..< tArr.count {
        if i <= tArr.count - p.count {
            let nStr = tArr[i ..< i + p.count]
                        .map { String($0) }
                        .joined(separator: "")
            subStrArr.append(nStr)
        }
    }
    
    let result = subStrArr
        .map { (Int($0) ?? 0) <= pNum }
        .filter { $0 == true }.count
    
    return result
}