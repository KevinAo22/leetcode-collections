/**
 * 1218.最长定差子序列 [Medium]
 * Time Complexity: O(n), Space Complexity: O(c)
 * https://leetcode-cn.com/problems/longest-arithmetic-subsequence-of-given-difference/
 */

class Solution {
  func longestSubsequence(_ arr: [Int], _ difference: Int) -> Int {
    var ans = 0
    var dp: [Int: Int] = [:]
    for num in arr {
      dp[num] = dp[num - difference, default: 0] + 1
      ans = max(ans, dp[num]!)
    }
    return ans
  }
}
