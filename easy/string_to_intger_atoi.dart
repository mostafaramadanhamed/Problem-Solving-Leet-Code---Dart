 void main(){
    Solution solution = Solution();
    print(solution.myAtoi("42"));
    print(solution.myAtoi("   -42"));
    print(solution.myAtoi("4193 with words"));
    print(solution.myAtoi("words and 987"));
    print(solution.myAtoi("-91283472332"));
    print(solution.myAtoi("91283472332"));
 }

 // my solution
 // https://leetcode.com/problems/string-to-integer-atoi/description/
 // best solution
 class Solution {
   int myAtoi(String s) {
      int result = 0;
      int sign = 1;
      int i = 0;
      int n = s.length;
  
      // Ignore leading whitespace
      while (i < n && s[i] == ' ') {
        i++;
      }
  
      // Check for sign
      if (i < n && (s[i] == '-' || s[i] == '+')) {
        sign = (s[i] == '-') ? -1 : 1;
        i++;
      }
  
      // Convert string to integer
      while (i < n && s[i].codeUnitAt(0) >= '0'.codeUnitAt(0) && s[i].codeUnitAt(0) <= '9'.codeUnitAt(0)) {
        int digit = s[i].codeUnitAt(0) - '0'.codeUnitAt(0);
        if (result > (2147483647 - digit) / 10) {
          return sign == 1 ? 2147483647 : -2147483648;
        }
        result = result * 10 + digit;
        i++;
      }
  
      return result * sign;
   }
 }