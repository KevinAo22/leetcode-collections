/**
 * 565.数组嵌套 [Medium]
 * Time Complexity: O(n), Space Complexity: O(1)
 * https://leetcode-cn.com/problems/array-nesting/
 */

class Solution {
  func arrayNesting(_ nums: [Int]) -> Int {
    var res = 0, nums = nums
    for index in 0 ..< nums.count {
      if nums[index] != Int.max {
        var start = nums[index], count = 0
        while nums[start] != Int.max {
          let temp = start
          start = nums[start]
          count += 1
          nums[temp] = Int.max
        }
        res = max(res, count)
      }
    }
    return res
  }
}
