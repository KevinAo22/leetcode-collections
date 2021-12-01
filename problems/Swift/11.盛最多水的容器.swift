/**
 * 11.盛最多水的容器 [Medium]
 * Time Complexity: O(n), Space Complexity: O(1)
 * https://leetcode-cn.com/problems/container-with-most-water/
 */

class Solution {
  func maxArea(_ height: [Int]) -> Int {
    var left = 0, right = height.count - 1, maxArea = 0
    while left < right {
      let area = (right - left) * min(height[left], height[right])
      maxArea = max(maxArea, area)
      if height[left] < height[right] {
        left += 1
      } else {
        right -= 1
      }
    }
    return maxArea
  }
}
