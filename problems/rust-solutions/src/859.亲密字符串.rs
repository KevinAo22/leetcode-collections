// 859.亲密字符串 [Easy]
// Time Complexity: O(n), Space Complexity: O(c)
// https://leetcode-cn.com/problems/buddy-strings/
use std::collections::HashSet;

impl Solution {
  pub fn buddy_strings(s: String, goal: String) -> bool {
    if (s.len() != goal.len()) {
      return false;
    }

    if s == goal {
      let mut set = HashSet::new();
      for c in s.chars() {
        if !set.insert(c) {
          return true;
        }
      }
      return false;
    } else {
      let mut s_chars = s.chars().collect::<Vec<char>>();
      let mut goal_chars = goal.chars().collect::<Vec<char>>();
      let mut first = -1;
      let mut second = -1;
      for i in 0..s_chars.len() {
        if s_chars[i] != goal_chars[i] {
          if first == -1 {
            first = i as i32;
          } else if second == -1 {
            second = i as i32;
          } else {
            return false;
          }
        }
      }
      return (second != -1
        && s_chars[first as usize] == goal_chars[second as usize]
        && s_chars[second as usize] == goal_chars[first as usize]);
    }
  }
}
