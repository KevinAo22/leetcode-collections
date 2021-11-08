/**
 * 299.猜数字游戏 [Medium]
 * Time Complexity: O(N), Space Complexity: O(C)
 * https://leetcode-cn.com/problems/bulls-and-cows/
 */

class Solution {
  func getHint(_ secret: String, _ guess: String) -> String {
    let secrets = Array(secret)
    let guesses = Array(guess)
    var bulls = 0
    var cows = 0
    var map: [String: Int] = [:]
    for i in 0 ..< secrets.count {
      if secrets[i] == guesses[i] {
        bulls += 1
      } else {
        let key = String(secrets[i])
        if let value = map[key] {
          map[key] = value + 1
        } else {
          map[key] = 1
        }
      }
    }

    for i in 0 ..< guesses.count {
      if secrets[i] != guesses[i] {
        let key = String(guesses[i])
        if let value = map[key], value != 0 {
          map[key] = value - 1
          cows += 1
        }
      }
    }
    return "\(bulls)A\(cows)B"
  }
}
