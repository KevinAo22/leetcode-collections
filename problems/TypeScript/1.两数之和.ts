/**
 * 1.两数之和 Easy
 * 时间复杂度：O(n), 空间复杂度：O(n)
 * https://leetcode-cn.com/problems/two-sum/
 */

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
