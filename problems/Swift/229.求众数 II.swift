/**
 * 229.求众数 II [Medium]
 * Time Complexity: O(n), Space Complexity: O(1)
 * https://leetcode-cn.com/problems/majority-element-ii/
 */

class Solution {
  func majorityElement(_ nums: [Int]) -> [Int] {
    if nums.count == 0 || nums.count == 1 {
      return nums
    } else if nums.count == 2 {
      return nums[0] == nums[1] ? [nums[0]] : nums
    }

    var num0: Int?
    var num1: Int?
    var count0 = 0
    var count1 = 0

    for num in nums {
      if let num0 = num0, num0 == num {
        count0 += 1
      } else if let num1 = num1, num1 == num {
        count1 += 1
      } else if count0 == 0 {
        num0 = num
        count0 = 1
      } else if count1 == 0 {
        num1 = num
        count1 = 1
      } else {
        count0 -= 1
        count1 -= 1
      }
    }

    count0 = 0
    count1 = 0

    for num in nums {
      if num == num0 {
        count0 += 1
      } else if num == num1 {
        count1 += 1
      }
    }

    var res: [Int] = []
    if count0 > nums.count / 3 {
      res.append(num0!)
    }
    if count1 > nums.count / 3 {
      res.append(num1!)
    }

    return res
  }
}
