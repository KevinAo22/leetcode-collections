/**
 * 575.分糖果 [Easy]
 * Time Complexity: O(n), Space Complexity: O(n)
 * https://leetcode-cn.com/problems/distribute-candies/
 */
use std::collections::HashSet;

impl Solution {
  pub fn distribute_candies(candy_type: Vec<i32>) -> i32 {
    let count = candy_type.len() as i32;
    let mut set = HashSet::new();

    for candy in candy_type {
      set.insert(candy);
    }

    return (set.len() as i32).min(count / 2);
  }
}
