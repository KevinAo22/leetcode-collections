// 495.提莫攻击 [Easy]
// Time Complexity: O(n), Space Complexity: O(n)
// hhttps://leetcode-cn.com/problems/teemo-attacking/
impl Solution {
  pub fn find_poisoned_duration(time_series: Vec<i32>, duration: i32) -> i32 {
    let mut res = 0;
    let mut expired = 0;

    for time in time_series {
      if time > expired {
        res += duration;
      } else {
        res += time + duration - expired
      }

      expired = time + duration;
    }

    return res;
  }
}
