/*
 Given a string s, reverse only all the vowels in the string and return it.
 
 The vowels are 'a', 'e', 'i', 'o', and 'u', and they can appear in both cases.
 
 
 
 Example 1:
 
 Input: s = "hello"
 Output: "holle"
 Example 2:
 
 Input: s = "leetcode"
 Output: "leotcede"
 
 
 Constraints:
 
 1 <= s.length <= 3 * 105
 s consist of printable ASCII characters.
 */

class Solution {
    func reverseVowels(_ s: String) -> String {
        let vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
        var sArr = s.map { String($0) }
        var endIndex = sArr.count - 1
                
        for i in 0...sArr.count - 1 {
            if i >= endIndex { break }
            if !vowels.contains(String(sArr[i])) { continue }
            else {
                while endIndex > i {
                    if !vowels.contains(String(sArr[endIndex])) {
                        endIndex -= 1
                    } else {
                        let char = sArr[endIndex]
                        sArr[endIndex] = sArr[i]
                        sArr[i] = char
                        endIndex -= 1
                        break
                    }
                }
            }
        }
        
        return sArr.joined()
    }
}
