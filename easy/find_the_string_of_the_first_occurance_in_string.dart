void main(){
  Soultion solution = Soultion();
  print(solution.strStr("hello", "ll"));
}

//my solution
// find the string of the first occurance in string
// https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/description/
class  Soultion {
  // best solution
  int strStr(String haystack, String needle) {
  int index = haystack.indexOf(needle);
    return index;
  }
}