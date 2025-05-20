void main(){
  Solution solution = Solution();
  print(solution.isPowerOfFour(1)); // Output: true
  print(solution.isPowerOfFour(16)); // Output: true
  print(solution.isPowerOfFour(3)); // Output: false
  print(solution.isPowerOfFour(4)); // Output: true
  print(solution.isPowerOfFour(0)); // Output: false
}
// https://leetcode.com/problems/power-of-four/description/
class Solution {
   bool isPowerOfFour(int n) {
     if (n <= 0) return false;
     return (n & (n - 1)) == 0 && (n - 1) % 3 == 0;
   }
}