/**
 * 4.寻找两个正序数组的中位数 Hard
 * 时间复杂度：O(log(m+n)), 空间复杂度：O(1)
 * https://leetcode-cn.com/problems/median-of-two-sorted-arrays/
 */

function findKth(nums1: number[], nums2: number[], index: number): number {
  const m = nums1.length;
  const n = nums2.length;

  if (m > n) {
    return findKth(nums2, nums1, index);
  }

  if (m === 0) {
    return nums2[index - 1];
  }

  if (index === 1) {
    return Math.min(nums1[0], nums2[0]);
  }

  const i = Math.min(Math.floor(index / 2), m);
  const j = Math.min(Math.floor(index / 2), n);

  if (nums1[i - 1] < nums2[j - 1]) {
    return findKth(nums1.slice(i), nums2, index - i);
  }

  return findKth(nums1, nums2.slice(j), index - j);
}

function findMedianSortedArrays(nums1: number[], nums2: number[]): number {
  const m = nums1.length;
  const n = nums2.length;

  return (findKth(nums1, nums2, Math.floor((m + n + 1) / 2)) + findKth(nums1, nums2, Math.floor((m + n + 2) / 2))) / 2;
}
