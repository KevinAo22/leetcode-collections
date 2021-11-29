// 9.回文数 [Easy]
// Time Complexity: O(log(n)), Space Complexity: O(1)
// https://leetcode-cn.com/problems/palindrome-number/

impl Solution {
  pub fn is_palindrome(x: i32) -> bool {
    if x < 0 || (x % 10 == 0 && x != 0) {
      return false;
    }

    let mut x = x;
    let mut revertedNumber = 0;
    while x > revertedNumber {
      revertedNumber = revertedNumber * 10 + x % 10;
      x /= 10;
    }

    return x == revertedNumber || x == revertedNumber / 10;
  }
}
