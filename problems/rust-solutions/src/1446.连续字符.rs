// 1446.连续字符 [Easy]
// Time Complexity: O(n), Space Complexity: O(1)
// https://leetcode-cn.com/problems/consecutive-characters/
use std::cmp::max;

impl Solution {
  pub fn max_power(s: String) -> i32 {
    let mut ans = 1;
    let mut count = 1;
    let chars: Vec<char> = s.chars().collect();

    for i in 1..chars.len() {
      if chars[i] == chars[i - 1] {
        count += 1;
        ans = max(ans, count);
      } else {
        count = 1;
      }
    }

    return ans;
  }
}
