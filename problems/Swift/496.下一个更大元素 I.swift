/**
 * 496.下一个更大元素 I [Easy]
 * Time Complexity: O(m+n), Space Complexity: O(n)
 * https://leetcode-cn.com/problems/next-greater-element-i/
 */

class Solution {
  func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var hashMap: [Int: Int] = [:]
    var stack: [Int] = []
    for index in stride(from: nums2.count - 1, to: -1, by: -1) {
      let num = nums2[index]
      while !stack.isEmpty, num > stack.last! {
        stack.removeLast()
      }

      hashMap[num] = stack.last ?? -1
      stack.append(num)
    }

    var res: [Int] = []
    for num in nums1 {
      res.append(hashMap[num] ?? -1)
    }

    return res
  }
}
