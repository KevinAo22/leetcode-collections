/**
 * 剑指 Offer II 069.山峰数组的顶部 [Easy]
 * Time Complexity: O(log(n)), Space Complexity: O(1)
 * https://leetcode-cn.com/problems/B1IidL/
 */

class Solution {
  func peakIndexInMountainArray(_ arr: [Int]) -> Int {
    var left = 0
    var right = arr.count - 1
    while left < right {
      let mid = (left + right) / 2
      if arr[mid] < arr[mid + 1] {
        left = mid + 1
      } else {
        right = mid
      }
    }

    return left
  }
}
