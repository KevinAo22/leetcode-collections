/**
 * 575.分糖果 [Easy]
 * Time Complexity: O(n), Space Complexity: O(n)
 * https://leetcode-cn.com/problems/distribute-candies/
 */

class Solution {
  func distributeCandies(_ candyType: [Int]) -> Int {
    var hashSet = Set<Int>()
    for candy in candyType {
      hashSet.insert(candy)
    }

    return min(hashSet.count, candyType.count / 2)
  }
}
