/**
 * 70.爬楼梯 [Easy]
 * Time Complexity: O(n), Space Complexity: O(1)
 * https://leetcode-cn.com/problems/climbing-stairs/
 */

class Solution {
  func climbStairs(_ n: Int) -> Int {
    var p = 0, q = 0, r = 1
    for _ in 1 ... n {
      p = q
      q = r
      r = p + q
    }

    return r
  }
}
