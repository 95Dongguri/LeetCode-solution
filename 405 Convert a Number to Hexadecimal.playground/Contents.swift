/*
 Given an integer num, return a string representing its hexadecimal representation. For negative integers, two’s complement method is used.

 All the letters in the answer string should be lowercase characters, and there should not be any leading zeros in the answer except for the zero itself.

 Note: You are not allowed to use any built-in library method to directly solve this problem.

  

 Example 1:

 Input: num = 26
 Output: "1a"
 Example 2:

 Input: num = -1
 Output: "ffffffff"
  

 Constraints:

 -231 <= num <= 231 - 1
 */

class Solution {
    func toHex(_ num: Int) -> String {
        // 변환 미사용
//        var num = num
//        var answer = ""
//        let hexCodes = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"]
//
//        if num < 0 { num += 4294967296 }
//
//        while true {
//            let extra = num % 16
//            answer = hexCodes[extra] + answer
//
//            if num / 16 == 0 { return answer }
//            num /= 16
//        }
//
//        return answer
        
        // 한줄 코드
        return num < 0 ? String(num+4294967296, radix: 16) : String(num, radix: 16)
    }
}
