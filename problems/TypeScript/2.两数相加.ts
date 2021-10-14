/**
 * 2.两数相加 [Medium]
 * Time Complexity: O(n), Space Complexity: O(1)
 * https://leetcode-cn.com/problems/add-two-numbers/
 */

/**
 * Definition for singly-linked list.
 */
class ListNode {
  val: number;

  next: ListNode | null;

  constructor(val?: number, next?: ListNode | null) {
    this.val = val === undefined ? 0 : val;
    this.next = next === undefined ? null : next;
  }
}

function addTwoNumbers(l1: ListNode | null, l2: ListNode | null): ListNode | null {
  let list1 = l1;
  let list2 = l2;
  let result = null;
  let current = null;
  let exceed = false;
  while (list1 || list2 || exceed) {
    const sum = (list1 ? list1.val : 0) + (list2 ? list2.val : 0) + (exceed ? 1 : 0);
    let val = 0;
    if (sum >= 10) {
      val = sum - 10;
      exceed = true;
    } else {
      val = sum;
      exceed = false;
    }
    if (!result) {
      result = new ListNode(val);
      current = result;
    } else {
      current.next = new ListNode(val);
      current = current.next;
    }
    list1 = list1 ? list1.next : null;
    list2 = list2 ? list2.next : null;
  }
  return result;
}
