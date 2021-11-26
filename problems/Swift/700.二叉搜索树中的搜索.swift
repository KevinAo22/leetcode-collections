/**
 * 700. 二叉搜索树中的搜索 [Easy]
 * Time Complexity: O(n), Space Complexity: O(n)
 * https://leetcode-cn.com/problems/search-in-a-binary-search-tree/
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
  func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
    guard let root = root else { return nil }

    if root.val == val {
      return root
    }

    return searchBST(val < root.val ? root.left : root.right, val)
  }
}
