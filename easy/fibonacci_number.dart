void main (){
  Solution solution = Solution();
  print(solution.fib(2)); // Output: 1
  print(solution.fib(3)); // Output: 2
  print(solution.fib(4)); // Output: 3
}

// https://leetcode.com/problems/fibonacci-number/description/
// my solution
class Solution {
  int fib(int n) {
    if (n <= 1) {
      return n;
    }
    int a = 0;
    int b = 1;
    for (int i = 2; i <= n; i++) {
      int temp = a + b;
      a = b;
      b = temp;
    }
    return b;
  }
}