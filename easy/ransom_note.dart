void main(){
  Solution solution = Solution();
  print(solution.canConstruct("aa", "aab")); // Output: true
  print(solution.canConstruct("aa", "ab")); // Output: false
}

// https://leetcode.com/problems/ransom-note/
// my solution
// ransom note
class Solution {
  bool canConstruct(String ransomNote, String magazine) {
    List<int> count = List.filled(26, 0);
    
    for (int i = 0; i < magazine.length; i++) {
      count[magazine.codeUnitAt(i) - 'a'.codeUnitAt(0)]++;
    }
    
    for (int i = 0; i < ransomNote.length; i++) {
      int index = ransomNote.codeUnitAt(i) - 'a'.codeUnitAt(0);
      if (count[index] == 0) return false;
      count[index]--;
    }
    
    return true;
  }
}