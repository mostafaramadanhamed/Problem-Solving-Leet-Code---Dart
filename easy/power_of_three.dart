import 'dart:math';

void main() {
  Solution solution = Solution();
  print(solution.isPowerOfThree(1)); // Output: true
  print(solution.isPowerOfThree(27)); // Output: true
  print(solution.isPowerOfThree(0)); // Output: false
  print(solution.isPowerOfThree(9)); // Output: true
  print(solution.isPowerOfThree(45)); // Output: false
}
// my solution
// https://leetcode.com/problems/power-of-three/description/
class Solution {
  bool isPowerOfThree(int n) {
    if (n <= 0) return false;
    return pow( 3, (log(n) / log(3)).round()) == n;  
  }
}

// best solution
/*
class Solution {
  bool isPowerOfThree(int n) {
   if(n<=0){
    return false;
    }
    while(n>1){
   if(n % 3!=0 ){
    return false;
   
    }
     n=n~/3;
   }
   return true;
  }
}
*/