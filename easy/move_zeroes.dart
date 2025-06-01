// LeetCode Problem: Move Zeroes
// Problem Link:
// https://leetcode.com/problems/move-zeroes/
// my solution
class Solution {
  void moveZeroes(List<int> nums) {
    int lastNonZeroIndex = 0;

    for (int i = 0; i < nums.length; i++) {
      if (nums[i] != 0) {
        nums[lastNonZeroIndex] = nums[i];
        lastNonZeroIndex++;
      }
    }

    for (int i = lastNonZeroIndex; i < nums.length; i++) {
      nums[i] = 0;
    }
  }
}