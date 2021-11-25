/**
 * 458.可怜的小猪 [Hard]
 * Time Complexity: O(1), Space Complexity: O(1)
 * https://leetcode-cn.com/problems/poor-pigs/
 */

class Solution {
  func poorPigs(_ buckets: Int, _ minutesToDie: Int, _ minutesToTest: Int) -> Int {
    let times = minutesToTest / minutesToDie + 1
    return Int(ceil(log(Double(buckets)) / log(Double(times))))
  }
}
