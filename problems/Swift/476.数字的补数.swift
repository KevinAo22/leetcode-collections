/**
 * 476.数字的补数 [Easy]
 * Time Complexity: O(n), Space Complexity: O(1)
 * https://leetcode-cn.com/problems/number-complement/
 */

class Solution {
  func findComplement(_ num: Int) -> Int {
    var res = 0, num = num, offset = 0

    while num > 0 {
      res = res + ((num & 1) ^ 1) << offset

      num = num >> 1
      offset += 1
    }

    return res
  }
}
