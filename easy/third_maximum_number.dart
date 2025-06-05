void main(){
  Solution solution = Solution();
  print(solution.thirdMax([3, 2, 1])); // Output: 1
  print(solution.thirdMax([1, 2]) ); // Output: 2
}

//https://leetcode.com/problems/third-maximum-number/
// my solution
// third maximum number

class Solution {
  int thirdMax(List<int> nums) {
    int? max1, max2,max3;

    for(var element in nums){

        if(max1 == element|| max2 == element || max3 == element){
            continue;
        }


        if(max1 == null || element > max1){
            max3 = max2;
            max2 = max1;
            max1 = element;
        } else if(max2 == null || element > max2){
            max3 = max2;
            max2 = element;
        } else if(max3 == null || element > max3){
            max3 = element;
        }
    }

    return max3?? max1!;
  }
}