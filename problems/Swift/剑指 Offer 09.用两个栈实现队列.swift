/**
 * 剑指 Offer 09.用两个栈实现队列 [Easy]
 * Time Complexity: O(1), Space Complexity: O(n)
 * https://leetcode-cn.com/problems/yong-liang-ge-zhan-shi-xian-dui-lie-lcof/
 */

class CQueue {
  private var stack1: [Int] = []
  private var stack2: [Int] = []

  func appendTail(_ value: Int) {
    stack1.append(value)
  }

  func deleteHead() -> Int {
    guard stack2.isEmpty else {
      return stack2.removeLast()
    }

    guard !stack1.isEmpty else {
      return -1
    }

    while !stack1.isEmpty {
      stack2.append(stack1.removeLast())
    }

    return stack2.removeLast()
  }
}

/**
 * Your CQueue object will be instantiated and called as such:
 * let obj = CQueue()
 * obj.appendTail(value)
 * let ret_2: Int = obj.deleteHead()
 */
