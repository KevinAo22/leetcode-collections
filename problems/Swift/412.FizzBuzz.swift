/**
 * 412.FizzBuzz [Easy]
 * Time Complexity: O(n), Space Complexity: O(1)
 * https://leetcode-cn.com/problems/fizz-buzz/
 */

class Solution {
  func fizzBuzz(_ n: Int) -> [String] {
    var res: [String] = []

    guard n > 0 else {
      return res
    }

    for i in 1 ... n {
      if i % 3 == 0, i % 5 == 0 {
        res.append("FizzBuzz")
      } else if i % 3 == 0 {
        res.append("Fizz")
      } else if i % 5 == 0 {
        res.append("Buzz")
      } else {
        res.append("\(i)")
      }
    }

    return res
  }
}
