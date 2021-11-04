// 2.两数相加 [Medium]
// Time Complexity: O(n), Space Complexity: O(1)
// https://leetcode-cn.com/problems/add-two-numbers/

// Definition for singly-linked list.
#[derive(PartialEq, Eq, Clone, Debug)]
pub struct ListNode {
  pub val: i32,
  pub next: Option<Box<ListNode>>,
}

impl ListNode {
  #[inline]
  fn new(val: i32) -> Self {
    ListNode { next: None, val }
  }
}

impl Solution {
  pub fn add_two_numbers(
    l1: Option<Box<ListNode>>,
    l2: Option<Box<ListNode>>,
  ) -> Option<Box<ListNode>> {
    let mut l1Index = l1;
    let mut l2Index = l2;
    let mut result: Option<Box<ListNode>> = Some(Box::new(ListNode::new(0)));
    let mut moveRs = &mut result;

    let mut a: i32 = 0;
    while l1Index.is_some() || l2Index.is_some() {
      let rs: i32;
      rs = l1Index
        .as_mut()
        .unwrap_or(&mut Box::new(ListNode::new(0)))
        .val
        + l2Index
          .as_mut()
          .unwrap_or(&mut Box::new(ListNode::new(0)))
          .val;
      let currNum: i32 = rs + a;
      moveRs.as_mut().unwrap().next = Some(Box::new(ListNode::new(currNum % 10)));
      moveRs = &mut (moveRs.as_mut().unwrap().next);
      if currNum >= 10 {
        a = 1;
      } else {
        a = 0;
      }

      if l1Index.is_some() {
        l1Index = l1Index.unwrap().next;
      }
      if l2Index.is_some() {
        l2Index = l2Index.unwrap().next;
      }
    }

    if a == 1 {
      moveRs.as_mut().unwrap().next = Some(Box::new(ListNode::new(1)));
    }
    return result.unwrap().next;
  }
}
