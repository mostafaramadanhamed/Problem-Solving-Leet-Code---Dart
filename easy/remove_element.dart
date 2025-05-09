void main(){
  List<int> nums = [3,2,2,3];
  int val = 3;
  Solution solution = Solution();
  int newLength = solution.removeElement(nums, val);
  print("Original List: $nums");
  print("New Length: $newLength");
  print("Modified List: ${nums.sublist(0, newLength)}");
}
// my solution
// remove all occurrences of a given value in-place and return the new length. Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
// https://leetcode.com/problems/remove-element/
class Solution {
  int removeElement(List<int> nums, int val) {
    nums.removeWhere((element) => element == val);
    return nums.length;
  }
  // best solution
  //   int removeElement(List<int> nums, int val) {
  //   int counter = 0;

  //   List<int> otherNums = [];

  //   for (int i = 0; i < nums.length; i++) {
  //       if (nums[i] != val) {
  //           counter++;
  //           otherNums.add(nums[i]);
  //       }
  //   }

  //   for (int i = 0; i < nums.length; i++) {
  //       if (i < otherNums.length) {
  //           nums[i] = otherNums[i];
  //       } else {
  //           nums[i] = 0;
  //       }
  //   }

  //   return counter;
  // }
}