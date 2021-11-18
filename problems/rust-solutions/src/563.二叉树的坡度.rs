// 563.二叉树的坡度 [Easy]
// Time Complexity: O(n), Space Complexity: O(n)
// https://leetcode-cn.com/problems/binary-tree-tilt/
use std::cell::RefCell;
use std::rc::Rc;

// Definition for a binary tree node.
#[derive(Debug, PartialEq, Eq)]
pub struct TreeNode {
  pub val: i32,
  pub left: Option<Rc<RefCell<TreeNode>>>,
  pub right: Option<Rc<RefCell<TreeNode>>>,
}

impl TreeNode {
  #[inline]
  pub fn new(val: i32) -> Self {
    TreeNode {
      val,
      left: None,
      right: None,
    }
  }
}

impl Solution {
  pub fn find_tilt(root: Option<Rc<RefCell<TreeNode>>>) -> i32 {
    let ans = Solution::dfs(root);
    return ans.0;
  }

  fn dfs(root: Option<Rc<RefCell<TreeNode>>>) -> (i32, i32) {
    if let Some(root) = root {
      let left = Solution::dfs(root.borrow().left.clone());
      let right = Solution::dfs(root.borrow().right.clone());
      return (
        left.0 + right.0 + (left.1 - right.1).abs(),
        left.1 + right.1 + root.borrow().val,
      );
    }

    return (0, 0);
  }
}
