// 375.猜数字大小 II [Medium]
// Time Complexity: O(n^3), Space Complexity: O(n^2)
// https://leetcode-cn.com/problems/guess-number-higher-or-lower-ii/
use std::cmp::{max, min};

impl Solution {
  pub fn get_money_amount(n: i32) -> i32 {
    let n = n as usize;
    let mut dp: Vec<Vec<usize>> = vec![vec![0; n + 2]; n + 2];
    for i in (1..n).rev() {
      for j in i + 1..=n {
        let mut minValue = usize::MAX;
        for k in i..=j {
          minValue = min(minValue, max(dp[i][k - 1], dp[k + 1][j]) + k);
        }
        dp[i][j] = minValue;
      }
    }

    return dp[1][n] as i32;
  }
}
