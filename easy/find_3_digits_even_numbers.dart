
void main() {
  List<int> digits = [2, 1, 3, 0];
  Solution solution = Solution();
  List<int> result = solution.findEvenNumbers(digits);
  print(result); // Output: [102, 120, 130, 132, 210, 230, 302, 310, 312, 320]
}
// my solution
// https://leetcode.com/problems/finding-3-digit-even-numbers/?envType=daily-question&envId=2025-05-12
class Solution {
  List<int> findEvenNumbers(List<int> digits) {
    Set<int> resultSet = {};
    int n = digits.length;

    for (int i = 0; i < n; i++) {
      if (digits[i] == 0) continue; // Skip leading zero
      for (int j = 0; j < n; j++) {
        if (i == j) continue;
        for (int k = 0; k < n; k++) {
          if (i == k || j == k) continue;
          if (digits[k] % 2 == 0) { // Check if the last digit is even
            int number = digits[i] * 100 + digits[j] * 10 + digits[k];
            resultSet.add(number);
          }
        }
      }
    }

    return resultSet.toList()..sort();
  }
}