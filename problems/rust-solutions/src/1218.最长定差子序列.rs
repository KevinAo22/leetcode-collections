// 1218.最长定差子序列 [Medium]
// Time Complexity: O(n), Space Complexity: O(c)
// https://leetcode-cn.com/problems/longest-arithmetic-subsequence-of-given-difference/
use std::cmp::max;
use std::collections::HashMap;

impl Solution {
  pub fn longest_subsequence(arr: Vec<i32>, difference: i32) -> i32 {
    let mut ans = 0;
    let mut hashMap = HashMap::with_capacity(arr.len());

    for i in 0..arr.len() {
      let num = arr[i];
      let mut count = 1;
      if let Some(prev) = hashMap.get(&(num - difference)) {
        count += prev;
      }
      hashMap.insert(num, count);
      ans = max(ans, count);
    }
    return ans;
  }
}
