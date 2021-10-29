/**
 * 335.路径交叉 [Hard]
 * Time Complexity: O(n), Space Complexity: O(1)
 * https://leetcode-cn.com/problems/self-crossing/
 */

class Solution {
  func isSelfCrossing(_ distance: [Int]) -> Bool {
    var distance = distance, i = 0
    let n = distance.count

    // 处理第 1 种情况
    while i < n && (i < 2 || distance[i] > distance[i - 2]) {
      i += 1
    }

    if i == n {
      return false
    }

    // 处理第 j 次移动的情况
    if (i == 3 && distance[i] == distance[i - 2])
      || (i >= 4 && distance[i] >= distance[i - 2] - distance[i - 4])
    {
      distance[i - 1] -= distance[i - 3]
    }
    i += 1

    // 处理第 2 种情况
    while i < n, distance[i] < distance[i - 2] {
      i += 1
    }

    return i != n
  }
}
