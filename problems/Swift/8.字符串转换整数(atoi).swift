/**
 * 8.字符串转换整数(atoi) [Medium]
 * Time Complexity: O(n), Space Complexity: O(1)
 * https://leetcode-cn.com/problems/string-to-integer-atoi/
 */

class Solution {
  func myAtoi(_ str: String) -> Int {
    var res = 0, flag = 1, index = 0
    let intMax = 2_147_483_647, intMin = -2_147_483_648, strChars = Array(str)

    // trim
    while index < strChars.count {
      let currentChar = strChars[index]

      // trim
      guard currentChar.isWhitespace else {
        break
      }

      index += 1
    }

    guard index < strChars.count else {
      return res
    }

    // handle flag
    if strChars[index] == "-" {
      flag = -1
      index += 1
    } else if strChars[index] == "+" {
      index += 1
    }

    // cast to number
    while index < strChars.count {
      let currentChar = strChars[index]

      guard currentChar.isNumber else {
        break
      }

      res = res * 10 + currentChar.wholeNumberValue!

      if res >= intMax {
        if flag == 1 {
          return intMax
        } else if flag == -1, res > intMax {
          return intMin
        }
      }

      index += 1
    }

    return flag * res
  }
}
