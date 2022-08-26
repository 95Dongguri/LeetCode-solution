/*
 Given a positive integer num, write a function which returns True if num is a perfect square else False.

 Follow up: Do not use any built-in library function such as sqrt.

  

 Example 1:

 Input: num = 16
 Output: true
 Example 2:

 Input: num = 14
 Output: false
  

 Constraints:

 1 <= num <= 2^31 - 1
 */

class Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        var cnt = 1
        
        if num == 0 { return false }
        
        while cnt * cnt <= num {
            let square = cnt * cnt
            
            if square == num { return true }
            cnt += 1
        }
        
        // pow 함수로 한줄
        // return pow(Double(num), 0.5).truncatingRemainder(dividingBy: 1.0) == 0
        return false
    }
}
