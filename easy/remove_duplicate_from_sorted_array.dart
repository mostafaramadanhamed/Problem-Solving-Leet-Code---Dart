void main() {
 
  print( Solution.removeDuplicates([1, 1, 2, 2, 3, 4, 5]));
  print( Solution.removeDuplicates([1, 1, 2])); 
  print( Solution.removeDuplicates([0,0,1,1,1,2,2,3,3,4])); 
}

// my solution
//best solution
// Remove duplicates from sorted array
// https://leetcode.com/problems/remove-duplicates-from-sorted-array/description/
class Solution {
  /// This function removes duplicates from a sorted array in place and returns the new length.
  /// It modifies the input list to contain only unique elements at the beginning.
  ///
  /// - Parameter nums: A list of integers sorted in non-decreasing order.
  /// - Returns: The length of the list after removing duplicates.
  ///
  /// Example:
  /// Input: [1,1,2]
  /// Output: 2, nums = [1,2,_] (the elements after the new length don't matter)
 static int removeDuplicates(List<int> nums) {
    if (nums.isEmpty) return 0;
    int count = 1; // Count of unique elements
    for (int i = 1; i < nums.length; i++) {
      if (nums[i] != nums[count - 1]) {
        nums[count] = nums[i];
        count++;
      }
    }
    return count;
  }
}
