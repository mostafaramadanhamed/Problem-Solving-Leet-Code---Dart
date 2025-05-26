void main(){
  Solution solution = Solution();
  print(solution.twoSum([2, 7, 11, 15], 9)); // Output: [0, 1]
  print(solution.twoSum([3, 2, 4], 6)); // Output: [1, 2]
  print(solution.twoSum([3, 3], 6)); // Output: [0, 1]
}
// https://leetcode.com/problems/two-sum/description/
// my solution
class Solution {
  List<int> twoSum(List<int> nums, int target) {
    final res={};
    for(int i=0; i<nums.length; i++){
       final complement = target - nums[i];
      if (res.containsKey(complement)) {
      return [res[complement]!, i]; 
      }
      res[nums[i]]=i;
      
    }
    return [];
  }
}