// 700.二叉搜索树中的搜索 [Easy]
// Time Complexity: O(n), Space Complexity: O(n)
// https://leetcode-cn.com/problems/search-in-a-binary-search-tree/submissions/

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
use std::cell::RefCell;
use std::rc::Rc;

impl Solution {
  pub fn search_bst(
    root: Option<Rc<RefCell<TreeNode>>>,
    val: i32,
  ) -> Option<Rc<RefCell<TreeNode>>> {
    if root.is_none() {
      return None;
    }

    if root.as_ref().unwrap().borrow().val == val {
      return root;
    }
    let node = Solution::search_bst(root.as_ref().unwrap().borrow().left.clone(), val);
    if node.is_some() {
      return node;
    } else {
      return Solution::search_bst(root.as_ref().unwrap().borrow().right.clone(), val);
    }
  }
}
