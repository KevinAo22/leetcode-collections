/**
 * 2.两数相加 [Medium]
 * Time Complexity: O(n), Space Complexity: O(1)
 * https://leetcode-cn.com/problems/add-two-numbers/
 */

/**
 * Definition for singly-linked list.
 */
public class ListNode {
  public var val: Int
  public var next: ListNode?
  public init() { val = 0; next = nil }
  public init(_ val: Int) { self.val = val; next = nil }
  public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next }
}

class Solution {
  func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    guard let l1 = l1 else { return l2 }
    guard let l2 = l2 else { return l1 }

    let outputNode = ListNode((l1.val + l2.val) % 10)
    if l1.val + l2.val > 9 {
      outputNode.next = addTwoNumbers(addTwoNumbers(l1.next, l2.next), ListNode(1))
    } else {
      outputNode.next = addTwoNumbers(l1.next, l2.next)
    }

    return outputNode
  }
}
