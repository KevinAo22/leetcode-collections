/**
 * 495.提莫攻击 [Easy]
 * Time Complexity: O(n), Space Complexity: O(1)
 * https://leetcode-cn.com/problems/teemo-attacking/
 */

class Solution {
  func findPoisonedDuration(_ timeSeries: [Int], _ duration: Int) -> Int {
    var res = 0, expired = 0

    for time in timeSeries {
      if time > expired {
        res += duration
      } else {
        res += time + duration - expired
      }

      expired = time + duration
    }

    return res
  }
}
