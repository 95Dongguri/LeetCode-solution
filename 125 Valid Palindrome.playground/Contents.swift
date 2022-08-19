/*
 A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

 Given a string s, return true if it is a palindrome, or false otherwise.

  

 Example 1:

 Input: s = "A man, a plan, a canal: Panama"
 Output: true
 Explanation: "amanaplanacanalpanama" is a palindrome.
 Example 2:

 Input: s = "race a car"
 Output: false
 Explanation: "raceacar" is not a palindrome.
 Example 3:

 Input: s = " "
 Output: true
 Explanation: s is an empty string "" after removing non-alphanumeric characters.
 Since an empty string reads the same forward and backward, it is a palindrome.
  

 Constraints:

 1 <= s.length <= 2 * 105
 s consists only of printable ASCII characters.
 */

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let AtoZ = Array(65...90)
        let atoz = Array(97...122)
        let numsCode = Array(48...57)
        
        if s.isEmpty { return true }
        
        var arr = Array(s.lowercased().utf8CString)
            .map { Int($0) }
            .filter { AtoZ.contains($0) || atoz.contains($0) || numsCode.contains($0) }
        
        while !arr.isEmpty {
            guard let first = arr.first,
                  let last = arr.last else { return true }
            
            if arr.count == 1 { return true }
            if first != last {
                return false
            } else {
                arr.removeFirst()
                arr.removeLast()
            }
        }
        
        return true
    }
}
