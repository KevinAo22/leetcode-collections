/**
 * 6.Z字形变换 [Medium]
 * Time Complexity: O(n), Space Complexity: O(n)
 * https://leetcode-cn.com/problems/zigzag-conversion/
 */

class Solution {
  func convert(_ s: String, _ numRows: Int) -> String {
    guard numRows > 1 else {
      return s
    }

    let chars = Array(s)
    var result: [Character] = []
    var cycleLen = 2 * numRows - 2

    for i in 0 ..< numRows {
      var j = 0
      while j + i < chars.count {
        result.append(chars[j + i])
        if i != 0, i != numRows - 1, j + cycleLen - i < chars.count {
          result.append(chars[j + cycleLen - i])
        }

        j += cycleLen
      }
    }

    return String(result)
  }
}
