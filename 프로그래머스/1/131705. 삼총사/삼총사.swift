import Foundation

func solution(_ number:[Int]) -> Int {
  var results = [[Int]]()
  
  for i in 0 ..< number.count-2 {
    for j in i+1 ..< number.count-1 {
      for k in j+1 ..< number.count {
        let array = [number[i], number[j], number[k]]
        
        if (i != j && i != k && j != k) &&
        ((number[i] + number[j] + number[k]) == 0)
        {
          results.append(array)
          print("(\(number[i]) \(number[j]) \(number[k]))")
        }
      }
    }
  }
  
  return results.count
}