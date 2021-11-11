/**
 * 629.K个逆序对数组 [Hard]
 * Time Complexity: O(nk), Space Complexity: O(k)
 * https://leetcode-cn.com/problems/k-inverse-pairs-array/
 */

class Solution {
  func kInversePairs(_ n: Int, _ k: Int) -> Int {
    let mod = 1_000_000_007
    var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: k + 1), count: 2)
    dp[0][0] = 1

    for i in 1 ... n {
      for j in 0 ... k {
        let cur = i & 1, prev = cur ^ 1
        dp[cur][j] = (j - 1 >= 0 ? dp[cur][j - 1] : 0) - (j - i >= 0 ? dp[prev][j - i] : 0) + dp[prev][j]
        if dp[cur][j] >= mod {
          dp[cur][j] -= mod
        } else if dp[cur][j] < 0 {
          dp[cur][j] += mod
        }
      }
    }

    return dp[n & 1][k]
  }
}
