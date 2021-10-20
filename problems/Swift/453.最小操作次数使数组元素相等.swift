/**
 * 453.最小操作次数使数组元素相等 [Easy]
 * Time Complexity: O(n), Space Complexity: O(1)
 * https://leetcode-cn.com/problems/minimum-moves-to-equal-array-elements/
 */

class Solution {
  func minMoves(_ nums: [Int]) -> Int {
    let minNum = nums.min()!
    var res = 0
    for num in nums {
      res += num - minNum
    }
    return res
  }
}
