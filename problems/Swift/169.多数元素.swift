/**
 * 169.多数元素 [Easy]
 * Time Complexity: O(n), Space Complexity: O(1)
 * https://leetcode-cn.com/problems/majority-element/
 */

class Solution {
  func majorityElement(_ nums: [Int]) -> Int {
    guard nums.count > 1 else {
      return nums[0]
    }

    var targetNum: Int = nums[0], count = 1

    for num in nums[1 ..< nums.count] {
      if targetNum == num {
        count += 1
      } else if count == 0 {
        targetNum = num
        count = 1
      } else {
        count -= 1
      }
    }

    return targetNum
  }
}
