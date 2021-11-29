/**
 * 786.第K个最小的素数分数 [Hard]
 * Time Complexity: O(n*log(c)), Space Complexity: O(1)
 * https://leetcode-cn.com/problems/k-th-smallest-prime-fraction/
 */

class Solution {
  func kthSmallestPrimeFraction(_ arr: [Int], _ k: Int) -> [Int] {
    let n = arr.count
    var left = 0.0, right = 1.0
    while true {
      let mid = (left + right) / 2
      var i = -1, count = 0
      var x = 0, y = 1

      for j in 1 ..< n {
        while Double(arr[i + 1]) / Double(arr[j]) < mid {
          i += 1
          if arr[i] * y > arr[j] * x {
            x = arr[i]
            y = arr[j]
          }
        }

        count += i + 1
      }

      if count == k {
        return [x, y]
      }
      if count < k {
        left = mid
      } else {
        right = mid
      }
    }
  }
}
