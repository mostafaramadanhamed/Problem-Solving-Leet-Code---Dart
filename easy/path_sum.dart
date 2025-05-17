 void main(){
    Solution solution = Solution();
    print(solution.hasPathSum(TreeNode(5, TreeNode(4, TreeNode(11, TreeNode(7), TreeNode(2))), TreeNode(8, TreeNode(13), TreeNode(4, null, TreeNode(1)))), 22)); // Output: true
    print(solution.hasPathSum(TreeNode(1, TreeNode(2), TreeNode(3)), 5)); // Output: false
    print(solution.hasPathSum(TreeNode(1, TreeNode(2)), 0)); // Output: false
 }
// https://leetcode.com/problems/path-sum/description/
class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode(this.val, [this.left, this.right]);
}

class Solution {
 bool hasPathSum(TreeNode? root, int targetSum) {
  if (root == null) return false;

    if (root.left == null && root.right == null) {
        return root.val == targetSum;
    }

    return hasPathSum(root.left, targetSum - root.val) || hasPathSum(root.right, targetSum - root.val);
  }
}
