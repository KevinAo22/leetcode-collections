/**
 * 226.翻转二叉树 [Easy]
 * Time Complexity: O(n), Space Complexity: O(n)
 * https://leetcode-cn.com/problems/invert-binary-tree/
 */

/**
 * Definition for a binary tree node.
 */
class TreeNode {
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
  func invertTree(_ root: TreeNode?) -> TreeNode? {
    guard let root = root else {
      return nil
    }

    (root.left, root.right) = (root.right, root.left)
    invertTree(root.left)
    invertTree(root.right)
    return root
  }
}
