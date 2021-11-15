/**
 * 319.灯泡开关 [Hard]
 * Time Complexity: O(1), Space Complexity: O(1)
 * https://leetcode-cn.com/problems/bulb-switcher/
 */

class Solution {
  func bulbSwitch(_ n: Int) -> Int {
    return Int(sqrt(Double(n)))
  }
}
