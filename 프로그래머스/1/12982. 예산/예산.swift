import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
  var result = 0
  var sum = 0
  let sortedArray = d.sorted(by: <)
  
  for i in sortedArray {
    sum += i

    if sum <= budget {
      result += 1
    } else {
      break
    }
  }
  
  return result
}