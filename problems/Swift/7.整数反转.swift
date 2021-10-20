/**
 * 7.整数反转 [Easy]
 * Time Complexity: O(log(n)), Space Complexity: O(1)
 * https://leetcode-cn.com/problems/reverse-integer/
 */

class Solution {
  func reverse(_ x: Int) -> Int {
    var res = 0
    var x = x
    while x != 0 {
      if res > Int(Int32.max) / 10 || res < Int(Int32.min) / 10 {
        return 0
      }
      res = res * 10 + x % 10
      x = x / 10
    }
    return res
  }
}
