/**
 * 506.相对名次 [Easy]
 * Time Complexity: O(n*log(n)), Space Complexity: O(n)
 * https://leetcode-cn.com/problems/relative-ranks/
 */

class Solution {
  func findRelativeRanks(_ score: [Int]) -> [String] {
    let desc = ["Gold Medal", "Silver Medal", "Bronze Medal"]
    var arr: [[Int]] = []

    for i in 0 ..< score.count {
      arr.append([score[i], i])
    }
    arr.sort(by: { $0[0] > $1[0] })

    var ans = [String](repeating: "", count: score.count)
    for i in 0 ..< score.count {
      if i < 3 {
        ans[arr[i][1]] = desc[i]
      } else {
        ans[arr[i][1]] = "\(i + 1)"
      }
    }

    return ans
  }
}
