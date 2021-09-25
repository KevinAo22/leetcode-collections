/*
 * @lc app=leetcode.cn id=3 lang=typescript
 *
 * [3] 无重复字符的最长子串
 */

// @lc code=start
function lengthOfLongestSubstring(str: string): number {
  if (str.length <= 1) {
    return str.length;
  }

  const record: { [key: string]: number } = {};
  let maxLength = 0;
  let start = 0;
  for (let end = 0; end < str.length; end += 1) {
    const value = str[end];
    if (record[value]) {
      start = Math.max(start, record[value]);
    }

    record[value] = end + 1;
    maxLength = Math.max(end - start + 1, maxLength);
  }

  return maxLength;
}
// @lc code=end
