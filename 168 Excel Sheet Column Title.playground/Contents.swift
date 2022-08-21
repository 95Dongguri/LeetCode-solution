/*
 Given an integer columnNumber, return its corresponding column title as it appears in an Excel sheet.

 For example:

 A -> 1
 B -> 2
 C -> 3
 ...
 Z -> 26
 AA -> 27
 AB -> 28
 ...
  

 Example 1:

 Input: columnNumber = 1
 Output: "A"
 Example 2:

 Input: columnNumber = 28
 Output: "AB"
 Example 3:

 Input: columnNumber = 701
 Output: "ZY"
  

 Constraints:

 1 <= columnNumber <= 231 - 1
 */

class Solution {
    func convertToTitle(_ columnNumber: Int) -> String {
        var answer = ""
        var num = columnNumber
        
        while num != 0 {
            var extra = num % 26
            if extra == 0 { extra = 26 }
            
            num -= extra
            num /= 26
            
            guard let char = UnicodeScalar(extra + 64) else { return "" }
            
            answer = String(char) + answer
        }
        
        return answer
    }
}
