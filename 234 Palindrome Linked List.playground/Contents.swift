/*
 Given the head of a singly linked list, return true if it is a palindrome.
 
 
 
 Example 1:
 
 
 Input: head = [1,2,2,1]
 Output: true
 Example 2:
 
 
 Input: head = [1,2]
 Output: false
 
 
 Constraints:
 
 The number of nodes in the list is in the range [1, 105].
 0 <= Node.val <= 9
 
 
 Follow up: Could you do it in O(n) time and O(1) space?
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    
    public init() {
        self.val = 0
        self.next = nil
    }
    
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
}

class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        var node = head
        var arr: [Int] = []

        while (node != nil) {
            arr.append(node!.val)
            node = node?.next
        }

        return (Array(arr.prefix(arr.count / 2)) == Array(arr.suffix(arr.count / 2).reversed()))
    }
}
