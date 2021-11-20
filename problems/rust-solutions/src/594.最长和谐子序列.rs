// 594.最长和谐子序列 [Easy]
// Time Complexity: O(n), Space Complexity: O(n)
// https://leetcode-cn.com/problems/longest-harmonious-subsequence/
use std::collections::HashMap;

impl Solution {
  pub fn find_lhs(nums: Vec<i32>) -> i32 {
    let mut hashMap = HashMap::with_capacity(nums.len());
    for num in nums {
      *hashMap.entry(num).or_insert(0) += 1;
    }

    let mut res = 0;
    for (key, value) in hashMap.iter() {
      if let Some(v) = hashMap.get(&(key + 1)) {
        res = res.max(value + v);
      }
    }

    return res;
  }
}
