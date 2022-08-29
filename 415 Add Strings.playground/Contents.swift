/*
 Given two non-negative integers, num1 and num2 represented as string, return the sum of num1 and num2 as a string.
 
 You must solve the problem without using any built-in library for handling large integers (such as BigInteger). You must also not convert the inputs to integers directly.
 
 
 
 Example 1:
 
 Input: num1 = "11", num2 = "123"
 Output: "134"
 Example 2:
 
 Input: num1 = "456", num2 = "77"
 Output: "533"
 Example 3:
 
 Input: num1 = "0", num2 = "0"
 Output: "0"
 
 
 Constraints:
 
 1 <= num1.length, num2.length <= 104
 num1 and num2 consist of only digits.
 num1 and num2 don't have any leading zeros except for the zero itself.
 */

class Solution {
    func addStrings(_ num1: String, _ num2: String) -> String {
        var num1Arr = [Character](num1.reversed())
        var num2Arr = [Character](num2.reversed())
        var answer = [Int]()
        
        while num1Arr.count != num2Arr.count {
            num1Arr.count < num2Arr.count ? num1Arr.append("0") : num2Arr.append("0")
        }
        
        for i in 0...num1Arr.count - 1 {
            let sum = Int(String(num1Arr[i]))! + Int(String(num2Arr[i]))!
            
            answer.append(sum)
        }
        
        for i in 0...answer.count - 1 {
            if answer[i] > 9 {
                answer[i] = answer[i] % 10
                
                if i == answer.count - 1 {
                    answer.append(1)
                } else {
                    answer[i+1] += 1
                }
            }
        }
        
        return answer.map { String($0) }.reversed().joined()
    }
}
