void main(){
  List<int> digits = [3,2,2,3];
  Solution solution = Solution();
  List<int> result = solution.plusOne(digits);
  print(result);
  List<int> digits2 = [9];
  List<int> result2 = solution.plusOne(digits2);
  print(result2);
}
// my solution
// plus one 
// https://leetcode.com/problems/plus-one/
class Solution {
  List<int> plusOne(List<int> digits) {
    digits[digits.length - 1] += 1;
    for (int i = digits.length - 1; i > 0; i--) {
      if (digits[i] == 10) {
        digits[i] = 0;
        digits[i - 1] += 1;
      }
    }
    if (digits[0] == 10) {
      digits[0] = 0;
      digits.insert(0, 1);
    }
    return digits;
  }
}