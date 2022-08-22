/*
 Write an algorithm to determine if a number n is happy.
 
 A happy number is a number defined by the following process:
 
 Starting with any positive integer, replace the number by the sum of the squares of its digits.
 Repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1.
 Those numbers for which this process ends in 1 are happy.
 Return true if n is a happy number, and false if not.
 
 
 
 Example 1:
 
 Input: n = 19
 Output: true
 Explanation:
 12 + 92 = 82
 82 + 22 = 68
 62 + 82 = 100
 12 + 02 + 02 = 1
 Example 2:
 
 Input: n = 2
 Output: false
 
 
 Constraints:
 
 1 <= n <= 231 - 1
 Accepted
 914,353
 Submissions
 
 */

class Solution {
    func isHappy(_ n: Int) -> Bool {
        var num = n
        var loopNum = Set<Int>()
        
        if n == 0 { return false }
        
        while true {
            let arr = String(num).map { Int(String($0))! }
            var sum = 0
            
            for i in 0...arr.count - 1 {
                let next = arr[i] * arr[i]
                
                sum = sum + next
            }
            
            if loopNum.contains(sum) { return false }
            
            loopNum.insert(sum)
            num = sum
        
            if num == 1 { return true }
        }
    }
}
