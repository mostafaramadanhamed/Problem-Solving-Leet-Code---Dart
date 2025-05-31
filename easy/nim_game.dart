void main(){
  Solution solution = Solution();
  print(solution.canWinNim(4)); // Output: false
  print(solution.canWinNim(5)); // Output: true
}

// https://leetcode.com/problems/nim-game/
// my solution
// nim game
class Solution {
  bool canWinNim(int n) {
    return n % 4 != 0;
  }
}