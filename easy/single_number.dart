void main(){
  Solution solution = Solution();
  print(solution.singleNumber([2, 2, 1])); // Output: 1
  print(solution.singleNumber([4, 1, 2, 1, 2])); // Output: 4
  print(solution.singleNumber([1])); // Output: 1
}

// my solution
// https://leetcode.com/problems/single-number/description/
class Solution {
  int singleNumber(List<int> nums) {
    int result = 0;
    for (int num in nums) {
      result ^= num;
    }
    return result;
  }
}