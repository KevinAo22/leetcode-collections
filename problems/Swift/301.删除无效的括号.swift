/**
 * 301.删除无效的括号 [Hard]
 * Time Complexity: O(n^2), Space Complexity: O(n)
 * https://leetcode-cn.com/problems/remove-invalid-parentheses/
 */

class Solution {
  func removeInvalidParentheses(_ s: String) -> [String] {
    var paths = [String]()

    dfs(&paths, Array(s), 0, 0, ("(", ")"))

    return paths
  }

  private func dfs(_ paths: inout [String], _ chars: [Character], _ lastValid: Int, _ lastRight: Int, _ parens: (Character, Character)) {
    var counter = 0, chars = chars

    for i in lastValid ..< chars.count {
      if chars[i] == parens.0 {
        counter += 1
      }
      if chars[i] == parens.1 {
        counter -= 1
      }

      if counter < 0 {
        for j in lastRight ... i {
          guard chars[j] == parens.1 else {
            continue
          }
          guard j == 0 || chars[j] != chars[j - 1] || j == lastRight else {
            continue
          }

          dfs(&paths, Array(chars[0 ..< j] + chars[j + 1 ..< chars.count]), i, j, parens)
        }
        // jump over invalid ones
        return
      }
    }

    if parens.0 == "(" {
      dfs(&paths, chars.reversed(), 0, 0, (")", "("))
    } else {
      paths.append(String(chars.reversed()))
    }
  }
}
