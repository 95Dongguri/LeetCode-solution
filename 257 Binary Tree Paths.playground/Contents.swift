/*
 Given the root of a binary tree, return all root-to-leaf paths in any order.
 
 A leaf is a node with no children.
 
 
 
 Example 1:
 
 
 Input: root = [1,2,3,null,5]
 Output: ["1->2->5","1->3"]
 Example 2:
 
 Input: root = [1]
 Output: ["1"]
 
 
 Constraints:
 
 The number of nodes in the tree is in the range [1, 100].
 -100 <= Node.val <= 100
 */

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init() {
        self.val = 0
        self.left = nil
        self.right = nil
    }
    
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
    
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        guard let root = root else { return [] }
        
        if root.left == nil && root.right == nil {
            return ["\(root.val)"]
        }
    
        return (binaryTreePaths(root.left) + binaryTreePaths(root.right))
            .map { "\(root.val)->" + $0 }
    }
}
