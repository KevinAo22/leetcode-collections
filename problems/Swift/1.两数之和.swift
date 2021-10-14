/**
 * 1.两数之和 [Easy]
 * Time Complexity: O(n), Space Complexity: O(n)
 * https://leetcode-cn.com/problems/two-sum/
 */

class Solution {
  func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var hashMap: [Int: Int] = [:]
    for index in 0 ..< nums.count {
      let other = target - nums[index]
      if let otherIndex = hashMap[other] {
        return [otherIndex, index]
      }
      hashMap[nums[index]] = index
    }
    return []
  }
}
