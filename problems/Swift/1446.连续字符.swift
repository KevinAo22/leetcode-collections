/**
 * 1446.连续字符 [Easy]
 * Time Complexity: O(n), Space Complexity: O(1)
 * https://leetcode-cn.com/problems/consecutive-characters/
 */

class Solution {
  func maxPower(_ s: String) -> Int {
    var ans = 1, count = 1, chars = Array(s)
    for i in 1 ..< chars.count {
      if chars[i] == chars[i - 1] {
        count += 1
        ans = max(ans, count)
      } else {
        count = 1
      }
    }
    return ans
  }
}
