import Foundation

func solution(_ s:String) -> [Int] {
    var str = s
    var transCount = 0 // 변환 횟수
    var removedZero = 0 // 0을 제거한 횟수
    
    while true {
        var removedZeroStr = str.filter { $0 != "0" } // 0을 제거한 str
        removedZero += str.filter { $0 == "0" }.count
        
        transCount += 1
        
        if removedZeroStr == "1" { // str이 1이면 탈출
            break
        }
        
        str = String(removedZeroStr.count, radix: 2)
    }
    
    return [transCount, removedZero]
}