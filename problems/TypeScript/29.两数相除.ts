/**
 * 29.两数相除 [Medium]
 * Time Complexity: O(log(n)), Space Complexity: O(1)
 * https://leetcode-cn.com/problems/divide-two-integers/
 */

function quickDivide(a: number, b: number): number {
  if (a < b) {
    return 0;
  }

  if (a === b) {
    return 1;
  }

  let count = 1;
  let tb = b; // 在后面的代码中不更新b
  while (tb + tb <= a) {
    count += count; // 最小解翻倍
    tb += tb; // 当前测试的值也翻倍
  }

  return count + quickDivide(a - tb, b);
}

function divide(dividend: number, divisor: number): number {
  const MAX_INT = 2147483647;
  const MIN_INT = -2147483648;

  if (dividend === 0) {
    return 0;
  }

  if (divisor === 1) {
    return dividend;
  }

  if (divisor === -1) {
    if (dividend > MIN_INT) {
      return -dividend;
    }

    return MAX_INT; // 是最小的那个，那就返回最大的整数啦
  }

  const sign = (dividend > 0 && divisor < 0) || (dividend < 0 && divisor > 0) ? -1 : 1;
  const a = dividend > 0 ? dividend : -dividend;
  const b = divisor > 0 ? divisor : -divisor;
  const res = quickDivide(a, b);
  if (sign > 0) {
    return res > MAX_INT ? MAX_INT : res;
  }

  return -res;
}
