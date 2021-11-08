// 299.猜数字游戏 [Medium]
// Time Complexity: O(N), Space Complexity: O(C)
// https://leetcode-cn.com/problems/bulls-and-cows/

impl Solution {
  pub fn get_hint(secret: String, guess: String) -> String {
    let secrets = secret.as_bytes();
    let guesses = guess.as_bytes();
    let mut bulls = 0;
    let mut cows = 0;
    let mut arr: Vec<i32> = vec![0; 10];

    for i in 0..secrets.len() {
      if secrets[i] == guesses[i] {
        bulls += 1;
      } else {
        let secret_num = usize::from(secrets[i] - b'0');
        if (arr[secret_num] < 0) {
          cows += 1;
        }
        arr[secret_num] += 1;

        let guess_num = usize::from(guesses[i] - b'0');
        if (arr[guess_num] > 0) {
          cows += 1;
        }

        arr[guess_num] -= 1;
      }
    }

    return format!("{}A{}B", bulls, cows);
  }
}
