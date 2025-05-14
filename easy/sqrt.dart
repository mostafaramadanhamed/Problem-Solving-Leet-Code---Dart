
void main(){
  Solution solution = Solution();
  print(solution.mySqrt(4)); // Output: 2
  print(solution.mySqrt(8)); // Output: 2
  print(solution.mySqrt(16)); // Output: 4
}
class Solution{

  int mySqrt(int x) {
    if (x < 2) return x;
    int left = 2, right = x ~/ 2;
    while (left <= right) {
      int mid = left + (right - left) ~/ 2;
      int square = mid * mid;
      if (square == x) return mid;
      if (square < x) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }
    return right;
  }
}