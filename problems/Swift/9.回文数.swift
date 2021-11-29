/**
 * 9.回文数 [Easy]
 * Time Complexity: O(log(n)), Space Complexity: O(1)
 * https://leetcode-cn.com/problems/palindrome-number/
 */

class Solution {
  func isPalindrome(_ x: Int) -> Bool {
    guard x >= 0, x % 10 != 0 || x == 0 else {
      return false
    }

    var x = x
    var revertedNumber = 0
    while x > revertedNumber {
      revertedNumber = revertedNumber * 10 + x % 10
      x /= 10
    }

    return x == revertedNumber || x == revertedNumber / 10
  }
}
