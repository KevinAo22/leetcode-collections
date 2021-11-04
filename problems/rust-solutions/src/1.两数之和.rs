// 1.两数之和 [Easy]
// Time Complexity: O(n), Space Complexity: O(n)
// https://leetcode-cn.com/problems/two-sum/
use std::collections::HashMap;

impl Solution {
  pub fn two_sum(nums: Vec<i32>, target: i32) -> Vec<i32> {
    let mut map = HashMap::with_capacity(nums.len());

    for index in 0..nums.len() {
      if let Some(target) = map.get(&(target - nums[index])) {
        if *target != index {
          return vec![*target as i32, index as i32];
        }
      }
      map.insert(nums[index], index);
    }
    panic!("not found")
  }
}
