// 506.相对名次 [Easy]
// Time Complexity: O(n*log(n)), Space Complexity: O(n)
// https://leetcode-cn.com/problems/relative-ranks/
use std::cmp::Reverse;

impl Solution {
  pub fn find_relative_ranks(score: Vec<i32>) -> Vec<String> {
    let count = score.len();
    let mut arr: Vec<(usize, i32)> = score.into_iter().enumerate().collect();
    let mut ans: Vec<String> = (0..count).map(|_| String::new()).collect();
    arr.sort_unstable_by_key(|x| Reverse(x.1));
    arr.into_iter().enumerate().for_each(|(i, (idx, _))| {
      ans[idx] = Solution::get_name(i + 1);
    });
    return ans;
  }

  fn get_name(x: usize) -> String {
    match x {
      1 => String::from("Gold Medal"),
      2 => String::from("Silver Medal"),
      3 => String::from("Bronze Medal"),
      _ => x.to_string(),
    }
  }
}
