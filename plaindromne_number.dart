void main() {
  Solution solution = Solution();
  print(solution.isPlaindrome(121)); // Output: true
  print(solution.isPlaindrome(-121)); // Output: false
  print(solution.isPlaindrome(10)); // Output: false
  print(solution.isPlaindrome(12321)); // Output: true
  print(solution.isPlaindrome(0)); // Output: true
}

class Solution {
  // LeetCode Problem 9: Palindrome Number
  // https://leetcode.com/problems/palindrome-number/
  // Given an integer x, return true if x is a palindrome, and false otherwise.
  // An integer is a palindrome when it reads the same backward as forward.
  // my solution
  bool isPlaindrome(int x) {
     if (x < 0) return false;

  String str = x.toString();
  String reversed = str.split('').reversed.join();

  return str == reversed;
  }
  // Best solution
  // bool isPlaindrome(int x) {
  //    int num1=x;
    // int num=0;
    // while(x>0){
    //     int temp =x%10;
    //     num=num*10+temp;
    //     x=x~/10;
    // }
    // return num==num1;

   
  // }
}
