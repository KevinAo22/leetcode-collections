// 367.有效的完全平方数 [Easy]
// Time Complexity: O(log(n)), Space Complexity: O(1)
// https://leetcode-cn.com/problems/valid-perfect-square/

impl Solution {
  pub fn is_perfect_square(num: i32) -> bool {
    let target = num as i64;
    let mut left: i64 = 0;
    let mut right: i64 = target;
    while left <= right {
      let mid = (right - left) / 2 + left;
      let square = mid * mid;
      if square < target {
        left = mid + 1;
      } else if square > target {
        right = mid - 1;
      } else {
        return true;
      }
    }
    return false;
  }
}
