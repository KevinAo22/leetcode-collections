/*
 * @lc app=leetcode.cn id=1 lang=typescript
 *
 * [1] 两数之和
 */

// @lc code=start
function twoSum(nums: number[], target: number): number[] {
  const hashMap: { [key: number]: number } = {};
  for (let i = 0; i < nums.length; i += 1) {
    const other = target - nums[i];
    if (hashMap[other] !== undefined) {
      return [hashMap[other], i];
    }
    hashMap[nums[i]] = i;
  }
  return [];
}
// @lc code=end
