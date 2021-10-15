/**
 * 5.最长回文子串 [Medium]
 * Time Complexity: O(n^2), Space Complexity: O(n)
 * https://leetcode-cn.com/problems/longest-palindromic-substring/
 */

class Solution {
  func longestPalindrome(_ s: String) -> String {
    guard s.count > 1 else {
      return s
    }

    let chars = Array(s)
    var maxLen = 0, start = 0

    for i in 0 ..< chars.count {
      searchPalindrome(chars, i, i, &start, &maxLen)
      searchPalindrome(chars, i, i + 1, &start, &maxLen)
    }

    return String(chars[start ..< start + maxLen])
  }

  private func searchPalindrome(_ chars: [Character], _ l: Int, _ r: Int, _ start: inout Int, _ maxLen: inout Int) {
    var left = l, right = r

    while left >= 0, right < chars.count, chars[left] == chars[right] {
      left -= 1
      right += 1
    }

    if maxLen < right - left - 1 {
      start = left + 1
      maxLen = right - left - 1
    }
  }
}
