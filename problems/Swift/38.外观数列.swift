/**
 * 38.外观数列 [Medium]
 * Time Complexity: O(n^2), Space Complexity: O(1)
 * https://leetcode-cn.com/problems/count-and-say/
 */

class Solution {
  func countAndSay(_ n: Int) -> String {
    guard n > 1 else {
      return "1"
    }

    let previousStr = countAndSay(n - 1)
    var currentChar = previousStr.first!, currentCount = 0, result = ""

    for (i, char) in previousStr.enumerated() {
      if char == currentChar {
        currentCount += 1
      } else {
        result += "\(currentCount)\(currentChar)"

        currentCount = 1
        currentChar = char
      }
    }

    result += "\(currentCount)\(currentChar)"

    return result
  }
}
