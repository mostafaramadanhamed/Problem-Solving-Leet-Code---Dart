void main(){
  Solution solution = Solution();
  print(solution.isUgly(6)); // Output: true
  print(solution.isUgly(8)); // Output: true  
  print(solution.isUgly(14)); // Output: false
}

//https://leetcode.com/problems/ugly-number/
// my solution
// ugly number
class Solution {
  bool isUgly(int n) {
    if (n <= 0) return false;
    while (n % 2 == 0) n ~/= 2;
    while (n % 3 == 0) n ~/= 3;
    while (n % 5 == 0) n ~/= 5;
    return n == 1;
  }
}