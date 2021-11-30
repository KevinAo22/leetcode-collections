/**
 * 400.第N位数字 [Medium]
 * Time Complexity: O(log(n)), Space Complexity: O(1)
 * https://leetcode-cn.com/problems/nth-digit/
 */

class Solution {
  func findNthDigit(_ n: Int) -> Int {
    guard n >= 10 else {
      return n
    }

    var n = n
    var digit = 1
    var start = 1
    var count = 9
    while n > count {
      n -= count
      digit += 1
      start *= 10
      count = 9 * start * digit
    }

    var num = (n - 1) / digit + start
    var reminder = (n - 1) % digit

    for _ in reminder + 1 ..< digit {
      num /= 10
    }

    return num % 10
  }
}
