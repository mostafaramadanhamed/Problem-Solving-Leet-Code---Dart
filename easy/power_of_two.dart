void main(){
  Solution solution = Solution();
  print(solution.isPowerOfTwo(1)); // Output: true
  print(solution.isPowerOfTwo(16)); // Output: true
  print(solution.isPowerOfTwo(3)); // Output: false
  print(solution.isPowerOfTwo(4)); // Output: true
  print(solution.isPowerOfTwo(0)); // Output: false
}

// https://leetcode.com/problems/power-of-two/description/
class Solution {
   bool isPowerOfTwo(int n) {
    if (n <= 0) return false;
  return (n & (n - 1)) == 0;
  }
}