/**
 * 剑指 Offer 13.机器人的运动范围 [Medium]
 * Time Complexity: O(mn), Space Complexity: O(mn)
 * https://leetcode-cn.com/problems/ji-qi-ren-de-yun-dong-fan-wei-lcof/
 */

class Solution {
  func movingCount(_ m: Int, _ n: Int, _ k: Int) -> Int {
    var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: m)
    var queue: [[Int]] = [[0, 0, 0, 0]]
    var res = 0

    while queue.count > 0 {
      let x = queue.removeFirst()
      let i = x[0], j = x[1], si = x[2], sj = x[3]
      if i >= m || j >= n || k < si + sj || visited[i][j] {
        continue
      }

      visited[i][j] = true
      res += 1
      queue.append([i + 1, j, (i + 1) % 10 != 0 ? si + 1 : si - 8, sj])
      queue.append([i, j + 1, si, (j + 1) % 10 != 0 ? sj + 1 : sj - 8])
    }
    return res
  }
}
