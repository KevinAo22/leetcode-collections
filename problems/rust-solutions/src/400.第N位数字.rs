// 400.第N位数字 [Medium]
// Time Complexity: O(log(n)), Space Complexity: O(1)
// https://leetcode-cn.com/problems/nth-digit/

impl Solution {
  pub fn find_nth_digit(n: i32) -> i32 {
    if n < 10 {
      return n;
    }

    let mut n: i64 = n as i64;
    let mut digit = 1;
    let mut start = 1;
    let mut count: i64 = 9;
    while n > count {
      n -= count;
      digit += 1;
      start *= 10;
      count = 9 * start * digit;
    }

    let mut num = (n - 1) / digit + start;
    let reminder = (n - 1) % digit;

    for _ in (reminder + 1)..digit {
      num /= 10;
    }

    return num as i32 % 10;
  }
}
