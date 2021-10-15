/**
 * 100.相同的树 [Easy]
 * Time Complexity: O(m*n), Space Complexity: O(n)
 * https://leetcode-cn.com/problems/same-tree/
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
  func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
    guard let p = p else {
      return q == nil
    }
    guard let q = q else {
      return p == nil
    }

    guard p.val == q.val else {
      return false
    }

    return isSameTree(p.left, q.left) && isSameTree(p.right, q.right)
  }
}
