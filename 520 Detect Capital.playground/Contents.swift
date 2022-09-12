/*
 We define the usage of capitals in a word to be right when one of the following cases holds:
 
 All letters in this word are capitals, like "USA".
 All letters in this word are not capitals, like "leetcode".
 Only the first letter in this word is capital, like "Google".
 Given a string word, return true if the usage of capitals in it is right.
 
 
 
 Example 1:
 
 Input: word = "USA"
 Output: true
 Example 2:
 
 Input: word = "FlaG"
 Output: false
 
 
 Constraints:
 
 1 <= word.length <= 100
 word consists of lowercase and uppercase English letters.
 */

class Solution {
    func detectCapitalUse(_ word: String) -> Bool {
        if word.count == 1 { return true }
        
        for i in 0...word.count - 2 {
            let current = word[.init(utf16Offset: i, in: word)]
            let next = word[.init(utf16Offset: i+1, in: word)]
            
            if (current.isLowercase && next.isLowercase) ||
                (current.isUppercase && next.isUppercase) ||
                (i == 0 && current.isUppercase && next.isLowercase) { continue }
            else { return false }
        }
        
        return true
    }
}
