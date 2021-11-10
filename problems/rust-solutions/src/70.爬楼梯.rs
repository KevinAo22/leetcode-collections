// 70.爬楼梯 [Easy]
// Time Complexity: O(n), Space Complexity: O(1)
// https://leetcode-cn.com/problems/climbing-stairs/

impl Solution {
  pub fn climb_stairs(n: i32) -> i32 {
    let mut p = 0;
    let mut q = 0;
    let mut r = 1;
    for _ in 1..n + 1 {
      p = q;
      q = r;
      r = p + q;
    }

    return r;
  }
}
