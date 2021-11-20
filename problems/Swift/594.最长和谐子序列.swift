/**
 * 594.最长和谐子序列 [Easy]
 * Time Complexity: O(n), Space Complexity: O(n)
 * https://leetcode-cn.com/problems/longest-harmonious-subsequence/
 */

class Solution {
  func findLHS(_ nums: [Int]) -> Int {
    var hashMap: [Int: Int] = [:]
    var res = 0
    for num in nums {
      hashMap[num] = (hashMap[num] ?? 0) + 1
    }
    for (key, value) in hashMap {
      if let other = hashMap[key + 1] {
        res = max(res, value + other)
      }
    }

    return res
  }
}
