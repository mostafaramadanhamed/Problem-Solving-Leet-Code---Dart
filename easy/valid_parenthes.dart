void main(){
  Solution solution = Solution();
  print(solution.isValid("()")); // Output: true
  print(solution.isValid("()[]{}")); // Output: true
  print(solution.isValid("(]")); // Output: false
}
// my solution
// https://leetcode.com/problems/valid-parentheses/
class Solution {
  bool isValid(String s) {
    List<String> stack = [];
    Map<String, String> map = {
      ')': '(',
      '}': '{',
      ']': '[',
    };

    for (int i = 0; i < s.length; i++) {
      String char = s[i];
      if (map.containsKey(char)) {
        if (stack.isEmpty || stack.last != map[char]) {
          return false;
        }
        stack.removeLast();
      } else {
        stack.add(char);
      }
    }
    return stack.isEmpty;
  }
}