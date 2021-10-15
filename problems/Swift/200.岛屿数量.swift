/**
 * 200.岛屿数量 [Medium]
 * Time Complexity: O(m*n), Space Complexity: O(1)
 * https://leetcode-cn.com/problems/number-of-islands/
 */

class Solution {
  func numIslands(_ grid: [[Character]]) -> Int {
    guard grid.count > 0, grid[0].count > 0 else {
      return 0
    }

    var grid = grid
    let m = grid.count
    let n = grid[0].count
    var count = 0

    for i in 0 ..< m {
      for j in 0 ..< n {
        if grid[i][j] == "1" {
          count += 1
          depthFistSearch(&grid, m, n, i, j)
        }
      }
    }

    return count
  }

  private func depthFistSearch(_ grid: inout [[Character]], _ m: Int, _ n: Int, _ i: Int, _ j: Int) {
    guard i >= 0, i < m, j >= 0, j < n, grid[i][j] == "1" else {
      return
    }

    grid[i][j] = "0"

    depthFistSearch(&grid, m, n, i + 1, j)
    depthFistSearch(&grid, m, n, i - 1, j)
    depthFistSearch(&grid, m, n, i, j + 1)
    depthFistSearch(&grid, m, n, i, j - 1)
  }
}
