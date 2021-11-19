// 397.整数替换 [Medium]
// Time Complexity: O(log(n)), Space Complexity: O(log(n))
// https://leetcode-cn.com/problems/integer-replacement/

impl Solution {
  pub fn integer_replacement(n: i32) -> i32 {
    let mut ans = 0;
    let mut n = n;
    while n != 1 {
      if n % 2 == 0 {
        ans += 1;
        n /= 2;
      } else if n % 4 == 1 {
        ans += 2;
        n /= 2;
      } else {
        if n == 3 {
          ans += 2;
          n = 1;
        } else {
          ans += 2;
          n = n / 2 + 1;
        }
      }
    }

    return ans;
  }
}
