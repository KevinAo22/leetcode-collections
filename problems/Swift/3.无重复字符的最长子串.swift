/**
 * 3.无重复字符的最长子串 [Medium]
 * Time Complexity: O(n), Space Complexity: O(n)
 * https://leetcode-cn.com/problems/longest-substring-without-repeating-characters/
 */

class Solution {
  func lengthOfLongestSubstring(_ s: String) -> Int {
    let characters = Array(s)
    guard characters.count > 1 else { return characters.count }

    var record: [String.Element: Int] = [:]
    var maxLength = 0
    var start = 0
    var end = 0
    while end < characters.count, maxLength < characters.count - start + 1 {
      let value = characters[end]
      if let currentStart = record[value] {
        start = max(start, currentStart)
      }

      record[value] = end + 1
      maxLength = max(end - start + 1, maxLength)
      end += 1
    }

    return maxLength
  }
}
