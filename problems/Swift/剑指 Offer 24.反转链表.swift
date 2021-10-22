/**
 * 剑指 Offer 24.反转链表 [Easy]
 * Time Complexity: O(n), Space Complexity: O(1)
 * https://leetcode-cn.com/problems/fan-zhuan-lian-biao-lcof/solution/fan-zhuan-lian-biao-by-leetcode-solution-jvs5/
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
  func reverseList(_ head: ListNode?) -> ListNode? {
    guard head != nil, head?.next != nil else {
      return head
    }

    var prev: ListNode?
    var curr = head

    while curr != nil {
      let tempNode = curr!.next
      curr!.next = prev
      prev = curr
      curr = tempNode
    }

    return prev
  }
}
