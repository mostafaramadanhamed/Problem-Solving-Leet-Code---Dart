void main(){
  Solution solution = Solution();
  print(solution.fizzBuzz(3)); // Output: ["1", "2", "Fizz"]
  print(solution.fizzBuzz(5)); // Output: ["1", "2", "Fizz", "4", "Buzz"]
  print(solution.fizzBuzz(15)); // Output: ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz"]
}

// https://leetcode.com/problems/fizz-buzz/description/
class Solution {
  List<String> fizzBuzz(int n) {
    List<String> result = [];
    for (int i = 1; i <= n; i++) {
      if (i % 3 == 0 && i % 5 == 0) {
        result.add("FizzBuzz");
      } else if (i % 3 == 0) {
        result.add("Fizz");
      } else if (i % 5 == 0) {
        result.add("Buzz");
      } else {
        result.add(i.toString());
      }
    }
    return result;
  }
}