/*
 Given two strings s and t, return true if s is a subsequence of t, or false otherwise.

 A subsequence of a string is a new string that is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (i.e., "ace" is a subsequence of "abcde" while "aec" is not).

  

 Example 1:

 Input: s = "abc", t = "ahbgdc"
 Output: true
 Example 2:

 Input: s = "axc", t = "ahbgdc"
 Output: false
  

 Constraints:

 0 <= s.length <= 100
 0 <= t.length <= 104
 s and t consist only of lowercase English letters.
  

 Follow up: Suppose there are lots of incoming s, say s1, s2, ..., sk where k >= 109, and you want to check one by one to see if t has its subsequence. In this scenario, how would you change your code?
 */

class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        let sArr = Array(s)
        let tArr = Array(t)
        var sIndex = 0
        var tIndex = 0
        
        if sArr.isEmpty { return true }
        else if tArr.isEmpty { return false }
        
        while tIndex < tArr.count && sIndex < sArr.count {
            if sArr[sIndex] == tArr[tIndex] {
                sIndex += 1
                tIndex += 1
                
                if (tIndex == tArr.count) && (sIndex != sArr.count)  { return false }
            } else if sArr[sIndex] != tArr[tIndex] {
                tIndex += 1
                
                if tIndex == tArr.count { return false }
            }
        }
        
        return true
    }
}
