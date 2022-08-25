/*
 Given an integer n, return true if it is a power of four. Otherwise, return false.

 An integer n is a power of four, if there exists an integer x such that n == 4x.

  

 Example 1:

 Input: n = 16
 Output: true
 Example 2:

 Input: n = 5
 Output: false
 Example 3:

 Input: n = 1
 Output: true
  

 Constraints:

 -231 <= n <= 231 - 1
  

 Follow up: Could you solve it without loops/recursion?
 */

import Foundation

class Solution {
    func isPowerOfFour(_ n: Int) -> Bool {
        return (log(Double(n)) / log(Double(4))).truncatingRemainder(dividingBy: 1.0) == 0
    }
}

// 반복문이 아닌 log를 이용하기
