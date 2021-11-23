// 6.Z字形变换 [Medium]
// Time Complexity: O(n), Space Complexity: O(n)
// https://leetcode-cn.com/problems/zigzag-conversion/

impl Solution {
  pub fn convert(s: String, num_rows: i32) -> String {
    if num_rows == 1 {
      return s;
    }

    let mut result = String::new();
    let cycleLen = 2 * num_rows - 2;
    let chars = s.as_bytes();

    for i in 0..num_rows {
      let mut j = 0;
      while j + i < s.len() as i32 {
        result.push(chars[(j + i) as usize] as char);
        if i != 0 && i != num_rows - 1 && j + cycleLen - i < s.len() as i32 {
          result.push(chars[(j + cycleLen - i) as usize] as char)
        }
        j += cycleLen;
      }
    }

    return result;
  }
}
