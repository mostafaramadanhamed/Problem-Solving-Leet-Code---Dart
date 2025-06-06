void main(){
  Solution solution = Solution();
  print(solution.checkPerfectNumber(28)); // Output: true
  print(solution.checkPerfectNumber(6));  // Output: true
}

// my solution
// https://leetcode.com/problems/perfect-number/
// perfect number
class Solution {
  bool checkPerfectNumber(int num) {
    if (num <= 1) return false;
    int sum = 1; 
    for (int i = 2; i * i <= num; i++) {
      if (num % i == 0) {
        sum += i;
        if (i != num ~/ i) { 
          sum += num ~/ i;
        }
      }
    }
    return sum == num;
  }
}