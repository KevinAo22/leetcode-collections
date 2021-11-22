/**
 * 384.打乱数组 [Medium]
 * Time Complexity: O(n), Space Complexity: O(n)
 * https://leetcode-cn.com/problems/shuffle-an-array/
 */

class Solution {
  private var numbers: [Int]
  private var originals: [Int]

  init(_ nums: [Int]) {
    numbers = nums
    originals = nums
  }

  func reset() -> [Int] {
    numbers = originals
    return numbers
  }

  func shuffle() -> [Int] {
    for i in 0 ..< numbers.count {
      let j = Int.random(in: i ..< numbers.count)
      numbers.swapAt(i, j)
    }
    return numbers
  }
}

/**
 * Your Solution object will be instantiated and called as such:
 * let obj = Solution(nums)
 * let ret_1: [Int] = obj.reset()
 * let ret_2: [Int] = obj.shuffle()
 */
