void main(){
  Solution solution = Solution();
  print(solution.isHappy(19)); // Output: true
  print(solution.isHappy(2)); // Output: false
}
// https://leetcode.com/problems/happy-number/description/
// my solution
class Solution {
  bool isHappy(int n) {
    Set<int> seen = {};
    while (n != 1 && !seen.contains(n)) {
      seen.add(n);
      n = _getNext(n);
    }
    return n == 1;
  }

  int _getNext(int n) {
    int totalSum = 0;
    while (n > 0) {
      int digit = n % 10;
      totalSum += digit * digit;
      n ~/= 10;
    }
    return totalSum;
  }
}