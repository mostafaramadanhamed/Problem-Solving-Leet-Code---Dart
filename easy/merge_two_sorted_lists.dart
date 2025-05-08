void main(){
  ListNode list1 = ListNode(1, ListNode(2, ListNode(4)));
  ListNode list2 = ListNode(1, ListNode(3, ListNode(4)));
  Soultion solution = Soultion();
  ListNode? mergedList = solution.mergeTwoLists(list1, list2);
  print("List 1: ${list1.toString()}");
  print("List 2: ${list2.toString()}");
  print("Merged List: ${mergedList.toString()}");
}
class ListNode {
  int val;
  ListNode? next;
  ListNode(this.val, [this.next]);
}
// my solution
// Merge two sorted linked lists and return it as a new sorted list. The new list should be made by splicing together the nodes of the first two lists.
// https://leetcode.com/problems/merge-two-sorted-lists/
class Soultion{
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    if (list1 == null) return list2;
    if (list2 == null) return list1;
    if (list1.val < list2.val) {
      list1.next = mergeTwoLists(list1.next, list2);
      return list1;
    } else {
      list2.next = mergeTwoLists(list1, list2.next);
      return list2;
    }
  }
}