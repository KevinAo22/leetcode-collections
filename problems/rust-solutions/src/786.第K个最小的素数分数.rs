// 786.第K个最小的素数分数 [Hard]
// Time Complexity: O(n*log(c)), Space Complexity: O(1)
// https://leetcode-cn.com/problems/k-th-smallest-prime-fraction/

impl Solution {
  pub fn kth_smallest_prime_fraction(arr: Vec<i32>, k: i32) -> Vec<i32> {
    let n = arr.len();
    let mut left = 0.0;
    let mut right = 1.0;
    loop {
      let mid = (left + right) / 2.0;
      let mut count = 0;
      let mut i = 0;
      let mut x = 0;
      let mut y = 1;

      for j in 1..n {
        while (arr[i] as f32) / (arr[j] as f32) < mid {
          i += 1;
          if arr[i - 1] * y > arr[j] * x {
            x = arr[i - 1];
            y = arr[j];
          }
        }

        count += i;
      }

      if (count as i32) == k {
        return vec![x, y];
      }
      if (count as i32) < k {
        left = mid
      } else {
        right = mid
      }
    }
  }
}
