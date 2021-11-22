// 384.打乱数组 [Medium]
// Time Complexity: O(n), Space Complexity: O(n)
// https://leetcode-cn.com/problems/shuffle-an-array/

use rand::prelude::SliceRandom;
use rand::thread_rng;

struct Solution {
  nums: Vec<i32>,
}


/**
 * `&self` means the method takes an immutable reference.
 * If you need a mutable reference, change it to `&mut self` instead.
 */
impl Solution {

  fn new(nums: Vec<i32>) -> Self {
    Solution { nums }
  }

  fn reset(&self) -> Vec<i32> {
    return self.nums.clone();
  }

  fn shuffle(&self) -> Vec<i32> {
    let mut ans = self.nums.clone();
    ans.shuffle(&mut thread_rng());
    return ans;
  }

}

/**
 * Your Solution object will be instantiated and called as such:
 * let obj = Solution::new(nums);
 * let ret_1: Vec<i32> = obj.reset();
 * let ret_2: Vec<i32> = obj.shuffle();
 */
