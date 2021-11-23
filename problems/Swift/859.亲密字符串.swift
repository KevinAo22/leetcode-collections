/**
 * 859.亲密字符串 [Easy]
 * Time Complexity: O(n), Space Complexity: O(c)
 * https://leetcode-cn.com/problems/buddy-strings/
 */

class Solution {
  func buddyStrings(_ s: String, _ goal: String) -> Bool {
    guard s.count == goal.count else {
      return false
    }

    if s == goal {
      var set = Set<Character>()
      for c in s {
        if set.contains(c) {
          return true
        }
        set.insert(c)
      }

      return false
    } else {
      let sChars = Array(s), goalChars = Array(goal)
      var first = -1, second = -1
      for i in 0 ..< s.count {
        if sChars[i] != goalChars[i] {
          if first == -1 {
            first = i
          } else if second == -1 {
            second = i
          } else {
            return false
          }
        }
      }

      return (second != -1 && sChars[first] == goalChars[second] && sChars[second] == goalChars[first])
    }
  }
}
