void main(){
  Solution solution = Solution();
  print(solution.addDigits(38)); // Output: 2
  print(solution.addDigits(123)); // Output: 6
}

//https://leetcode.com/problems/add-digits/
// my solution
class Solution {
  int addDigits(int num) {
    while (num >= 10) {
      int sum = 0;
      while (num > 0) {
        sum += num % 10;
        num ~/= 10;
      }
      num = sum;
    }
    return num;
  }
}