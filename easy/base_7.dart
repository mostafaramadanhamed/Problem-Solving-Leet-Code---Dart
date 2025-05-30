void main(){
  Solution solution = Solution();  
  print(solution.convertToBase7(100)); // Output: "202"
  print(solution.convertToBase7(-7)); // Output: "-10"
}

//https://leetcode.com/problems/base-7/
// my solution
// base 7
class Solution {
  String convertToBase7(int num) {
    return num.toRadixString(7);
  }
}