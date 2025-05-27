void main(){
  Solution solution = Solution();
  print(solution.lengthOfLastWord("Hello World")); // Output: 5
  print(solution.lengthOfLastWord("   fly me   to   the moon  ")); // Output: 4
}
// https://leetcode.com/problems/length-of-last-word/description/
// my solution
class Solution {
  int lengthOfLastWord(String s) {
    // Trim the string to remove trailing spaces
    s = s.trim();
    
    // Find the last space in the trimmed string
    int lastSpaceIndex = s.lastIndexOf(' ');
    
    // If there is no space, the entire string is the last word
    if (lastSpaceIndex == -1) {
      return s.length;
    }
    
    // Return the length of the last word
    return s.length - lastSpaceIndex - 1;
  }
}