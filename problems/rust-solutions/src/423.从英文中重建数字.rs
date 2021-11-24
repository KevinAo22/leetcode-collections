// 423.从英文中重建数字 [Medium]
// Time Complexity: O(n), Space Complexity: O(c)
// https://leetcode-cn.com/problems/reconstruct-original-digits-from-english/
use std::collections::HashMap;

impl Solution {
  pub fn original_digits(s: String) -> String {
    let mut hashMap = HashMap::new();
    for char in s.chars() {
      *hashMap.entry(char).or_insert(0) += 1;
    }

    let mut digits = [0; 10];
    digits[0] = *hashMap.get(&'z').unwrap_or(&0);
    digits[2] = *hashMap.get(&'w').unwrap_or(&0);
    digits[4] = *hashMap.get(&'u').unwrap_or(&0);
    digits[6] = *hashMap.get(&'x').unwrap_or(&0);
    digits[8] = *hashMap.get(&'g').unwrap_or(&0);
    digits[5] = *hashMap.get(&'f').unwrap_or(&0) - digits[4];
    digits[3] = *hashMap.get(&'h').unwrap_or(&0) - digits[8];
    digits[1] = *hashMap.get(&'o').unwrap_or(&0) - digits[0] - digits[4] - digits[2];
    digits[9] = *hashMap.get(&'i').unwrap_or(&0) - digits[5] - digits[6] - digits[8];
    digits[7] = *hashMap.get(&'v').unwrap_or(&0) - digits[5];
    let mut result = String::new();
    for i in 0..10 {
      for j in 0..digits[i] {
        result.push((i as u8 + 48) as char);
      }
    }
    return result;
  }
}
