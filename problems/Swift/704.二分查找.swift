/**
 * 704.二分查找 [Easy]
 * Time Complexity: O(log(n)), Space Complexity: O(1)
 * https://leetcode-cn.com/problems/binary-search/
 */

class Solution {
  func search(_ nums: [Int], _ target: Int) -> Int {
    var low = 0, high = nums.count - 1
    while low <= high {
      let mid = (high + low) / 2
      let num = nums[mid]
      if num == target {
        return mid
      } else if num > target {
        high = mid - 1
      } else {
        low = mid + 1
      }
    }
    return -1
  }
}
