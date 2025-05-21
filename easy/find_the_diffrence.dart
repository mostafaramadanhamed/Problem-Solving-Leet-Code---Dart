void main(){
  Solution solution = Solution();
  print(solution.findTheDifference("abcd", "abcde")); // Output: "e"
  print(solution.findTheDifference("a", "aa")); // Output: "a"
}

// https://leetcode.com/problems/find-the-difference/description/
class Solution {
  String findTheDifference(String s, String t) {
    int sumS = 0;
    int sumT = 0;

    for (int i = 0; i < s.length; i++) {
      sumS += s.codeUnitAt(i);
    }

    for (int i = 0; i < t.length; i++) {
      sumT += t.codeUnitAt(i);
    }

    return String.fromCharCode(sumT - sumS);
  }
}