void main(){
  Solution solution = Solution();
  print(solution.longestPalindrome("abccccdd")); // Output: 7
  print(solution.longestPalindrome("a")); // Output: 1
}

// https://leetcode.com/problems/longest-palindrome/
// my solution
// longest palindrome
class Solution {
  int longestPalindrome(String s) {
    Map<String, int> charCount = {};
    for (int i = 0; i < s.length; i++) {
      String char = s[i];
      charCount[char] = (charCount[char] ?? 0) + 1;
    }
    
    int length = 0;
    bool hasOdd = false;
    
    charCount.forEach((key, value) {
      if (value % 2 == 0) {
        length += value;
      } else {
        length += value - 1;
        hasOdd = true;
      }
    });
    
    return hasOdd ? length + 1 : length;
  }
}