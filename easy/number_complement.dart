void main(){
  Solution solution = Solution();
  print(solution.findComplement(5)); // Output: 2
  print(solution.findComplement(1)); // Output: 0
}

//https://leetcode.com/problems/number-complement/
// my solution
// number complement
class Solution {
  int findComplement(int num) {
    int res = 1;
    while (res <= num) {
      res <<= 1;
    }
    return (res - 1) ^ num;
  }
}