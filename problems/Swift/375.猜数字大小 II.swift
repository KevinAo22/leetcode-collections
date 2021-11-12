/**
 * 375.猜数字大小 II [Medium]
 * Time Complexity: O(n^3), Space Complexity: O(n^2)
 * https://leetcode-cn.com/problems/guess-number-higher-or-lower-ii/
 */

class Solution {
  func getMoneyAmount(_ n: Int) -> Int {
    var dp: [[Int]] = Array(repeating: Array(repeating: 0, count: n + 2), count: n + 2)
    for i in stride(from: n - 1, to: 0, by: -1) {
      for j in i + 1 ... n {
        var minValue = Int.max
        for k in i ... j {
          minValue = min(minValue, max(dp[i][k - 1], dp[k + 1][j]) + k)
        }
        dp[i][j] = minValue
      }
    }
    return dp[1][n]
  }
}
