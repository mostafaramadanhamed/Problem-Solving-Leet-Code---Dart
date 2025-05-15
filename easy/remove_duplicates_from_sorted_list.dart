void main(){
  Solution solution = Solution();
  ListNode? head = ListNode(1, ListNode(1, ListNode(2)));
  ListNode? result = solution.deleteDuplicates(head);
  while (result != null) {
    print(result.val);
    result = result.next;
  }
}

// my solution
// https://leetcode.com/problems/remove-duplicates-from-sorted-list/description/

 //Definition for singly-linked list.
 class ListNode {
   int val;
   ListNode? next;
    ListNode([this.val = 0, this.next]);
  }

class Solution {
  ListNode? deleteDuplicates(ListNode? head) {
    if (head == null) return null;
    ListNode? current = head;
    while (current != null && current.next != null) {
      if (current.val == current.next!.val) {
        current.next = current.next!.next;
      } else {
        current = current.next;
      }
    }
    return head;
  }
}