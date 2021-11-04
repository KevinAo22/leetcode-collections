/**
 * 367.有效的完全平方数 [Easy]
 * Time Complexity: O(log(n)), Space Complexity: O(1)
 * https://leetcode-cn.com/problems/valid-perfect-square/
 */

class Solution {
  func isPerfectSquare(_ num: Int) -> Bool {
    var left = 0, right = num
    while left <= right {
      let mid = (right - left) / 2 + left
      let square = mid * mid
      if square < num {
        left = mid + 1
      } else if square > num {
        right = mid - 1
      } else {
        return true
      }
    }
    return false
  }
}
