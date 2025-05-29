void main(){
  Solution solution = Solution();
  print(solution.addStrings("11", "123")); // Output: "134"
  print(solution.addStrings("456", "77")); // Output: "533"
}

// https://leetcode.com/problems/add-strings/
// my solution
// add strings
class Solution {
  String addStrings(String num1, String num2) {
    StringBuffer result = StringBuffer();
    int carry = 0;
    int i = num1.length - 1;
    int j = num2.length - 1;

    while (i >= 0 || j >= 0 || carry > 0) {
      int sum = carry;
      if (i >= 0) sum += num1[i--].codeUnitAt(0) - '0'.codeUnitAt(0);
      if (j >= 0) sum += num2[j--].codeUnitAt(0) - '0'.codeUnitAt(0);
      
      result.writeCharCode('0'.codeUnitAt(0) + sum % 10);
      carry = sum ~/ 10;
    }

    return result.toString().split('').reversed.join('');
  }
}