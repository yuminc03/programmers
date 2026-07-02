import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result = [Int]()
  
    for command in commands {
      let arr = array[command[0]-1 ..< command[1]]
      let sortedArr = arr.sorted(by: <)
      result.append(sortedArr[command[2] - 1])
    }
  
    return result
}