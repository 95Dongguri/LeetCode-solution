/*
 Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

 An input string is valid if:

 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.
  

 Example 1:

 Input: s = "()"
 Output: true
 Example 2:

 Input: s = "()[]{}"
 Output: true
 Example 3:

 Input: s = "(]"
 Output: false
  

 Constraints:

 1 <= s.length <= 104
 s consists of parentheses only '()[]{}'.
 */

class Solution {
    func isValid(_ s: String) -> Bool {
        let str = s.filter { $0 != " " }
            .map { $0 }
        var arr: [Character] = []
        
        if str.count % 2 == 1 { return false }
        
        for char in str {
            switch char {
            case "(":
                arr.append(char)
            case "{":
                arr.append(char)
            case "[":
                arr.append(char)
            case ")":
                if arr.popLast() == "(" {
                    continue
                } else {
                    return false
                }
            case "}":
                if arr.popLast() == "{" {
                    continue
                } else {
                    return false
                }
            case "]":
                if arr.popLast() == "[" {
                    continue
                } else {
                    return false
                }
            default:
                return false
            }
        }
        
        return arr.isEmpty ? true : false
    }
}
