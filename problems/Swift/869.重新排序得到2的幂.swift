/**
 * 869.重新排序得到2的幂 [Medium]
 * Time Complexity: O(log(n)), Space Complexity: O(1)
 * https://leetcode-cn.com/problems/reordered-power-of-2/
 */

class Solution {
  private var powerOf2Digits = Set<String>()

  private func initSet() {
    for i in 0 ... 30 {
      powerOf2Digits.insert(countDigits(1 << i))
    }
  }

  private func countDigits(_ n: Int) -> String {
    var digitsCount: [Int] = Array(repeating: 0, count: 10), n = n
    while n > 0 {
      digitsCount[n % 10] += 1
      n = n / 10
    }
    return "\(digitsCount)"
  }

  func reorderedPowerOf2(_ n: Int) -> Bool {
    initSet()
    return powerOf2Digits.contains(countDigits(n))
  }
}
