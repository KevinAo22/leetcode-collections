/**
 * 237.删除链表中的节点 [Easy]
 * Time Complexity: O(1), Space Complexity: O(1)
 * https://leetcode-cn.com/problems/delete-node-in-a-linked-list/
 */

/**
 * Definition for singly-linked list.
 */

public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init(_ val: Int) {
    self.val = val
    next = nil
  }
}

class Solution {
  func deleteNode(_ node: ListNode?) {
    guard let node = node else { return }

    node.val = node.next?.val ?? 0
    node.next = node.next?.next
  }
}
