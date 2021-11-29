// 3.无重复字符的最长子串 [Medium]
// Time Complexity: O(n), Space Complexity: O(n)
// https://leetcode-cn.com/problems/longest-substring-without-repeating-characters/
use std::cmp::max;
use std::collections::HashMap;

impl Solution {
  pub fn length_of_longest_substring(s: String) -> i32 {
    let chars = s.chars().collect::<Vec<char>>();
    if chars.len() <= 1 {
      return chars.len() as i32;
    }

    let mut record = HashMap::new();
    let mut max_len: usize = 0;
    let mut start: usize = 0;
    let mut end: usize = 0;

    while end < chars.len() && max_len < chars.len() - start + 1 {
      let value = chars[end];
      if let Some(currentStart) = record.get(&value) {
        start = max(start, *currentStart);
      }

      record.insert(value, end + 1);
      max_len = max(end - start + 1, max_len);
      end += 1;
    }

    return max_len as i32;
  }
}
