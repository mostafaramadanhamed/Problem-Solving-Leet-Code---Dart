void main(){
  Solution solution = Solution();
  print(solution.longestCommonPrefix(["flower","flow","flight"])); // Output: "fl"
  print(solution.longestCommonPrefix(["dog","racecar","car"])); // Output: ""
}

// https://leetcode.com/problems/longest-common-prefix/
// my solution
// longest common prefix
class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) return '';
        String prefix = strs[0];
        for (int i = 1; i < strs.length; i++) {
      while (strs[i].indexOf(prefix) != 0) {
        prefix = prefix.substring(0, prefix.length - 1);
        if (prefix.isEmpty) return '';
      }
    }
    
    return prefix;
  }
}