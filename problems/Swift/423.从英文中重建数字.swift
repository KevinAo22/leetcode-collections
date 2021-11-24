/**
 * 423.从英文中重建数字 [Medium]
 * Time Complexity: O(n), Space Complexity: O(c)
 * https://leetcode-cn.com/problems/reconstruct-original-digits-from-english/
 */

class Solution {
  func originalDigits(_ s: String) -> String {
    var hashMap: [Character: Int] = [:]
    for char in s {
      hashMap[char] = hashMap[char] != nil ? hashMap[char]! + 1 : 1
    }

    var digits = [Int](repeating: 0, count: 10)
    digits[0] = hashMap["z"] != nil ? hashMap["z"]! : 0
    digits[2] = hashMap["w"] != nil ? hashMap["w"]! : 0
    digits[4] = hashMap["u"] != nil ? hashMap["u"]! : 0
    digits[6] = hashMap["x"] != nil ? hashMap["x"]! : 0
    digits[8] = hashMap["g"] != nil ? hashMap["g"]! : 0

    digits[3] = (hashMap["h"] != nil ? hashMap["h"]! : 0) - digits[8]
    digits[5] = (hashMap["f"] != nil ? hashMap["f"]! : 0) - digits[4]
    digits[7] = (hashMap["s"] != nil ? hashMap["s"]! : 0) - digits[6]

    digits[1] = (hashMap["o"] != nil ? hashMap["o"]! : 0) - digits[0] - digits[2] - digits[4]

    digits[9] = (hashMap["i"] != nil ? hashMap["i"]! : 0) - digits[5] - digits[6] - digits[8]

    var ans = ""
    for i in 0 ..< 10 {
      for _ in 0 ..< digits[i] {
        ans += "\(i)"
      }
    }
    return ans
  }
}
