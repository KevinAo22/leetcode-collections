/**
 * 563.二叉树的坡度 [Easy]
 * Time Complexity: O(n), Space Complexity: O(n)
 * https://leetcode-cn.com/problems/binary-tree-tilt/
 */

/**
 * Definition for a binary tree node.
 */
public class TreeNode {
  public var val: Int
  public var left: TreeNode?
  public var right: TreeNode?
  public init() { val = 0; left = nil; right = nil }
  public init(_ val: Int) { self.val = val; left = nil; right = nil }
  public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
    self.val = val
    self.left = left
    self.right = right
  }
}

class Solution {
  private var ans = 0

  func findTilt(_ root: TreeNode?) -> Int {
    dfs(root)
    return ans
  }

  private func dfs(_ root: TreeNode?) -> Int {
    guard let root = root else { return 0 }
    let left = dfs(root.left)
    let right = dfs(root.right)
    ans += abs(left - right)
    return left + right + root.val
  }
}
