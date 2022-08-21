/*
 Given a string columnTitle that represents the column title as appears in an Excel sheet, return its corresponding column number.

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

 Input: columnTitle = "A"
 Output: 1
 Example 2:

 Input: columnTitle = "AB"
 Output: 28
 Example 3:

 Input: columnTitle = "ZY"
 Output: 701
  

 Constraints:

 1 <= columnTitle.length <= 7
 columnTitle consists only of uppercase English letters.
 columnTitle is in the range ["A", "FXSHRXW"].
 */

class Solution {
    func titleToNumber(_ columnTitle: String) -> Int {
        let columnArr = Array(columnTitle.utf8CString)
            .filter { $0 != 0 }
            .reversed()
            .map { Int($0) - 64 }
        
        var answer = 0
        var num = 1
        
        for i in 0...columnArr.count - 1 {
            print(columnArr[i])
            answer = answer + (columnArr[i] * num)
            num = num * 26
        }
        
        return answer
    }
}

let s = Solution()

s.titleToNumber("AB")
