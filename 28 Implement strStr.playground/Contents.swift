/*
 Implement strStr().

 Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

 Clarification:

 What should we return when needle is an empty string? This is a great question to ask during an interview.

 For the purpose of this problem, we will return 0 when needle is an empty string. This is consistent to C's strstr() and Java's indexOf().

  

 Example 1:

 Input: haystack = "hello", needle = "ll"
 Output: 2
 Example 2:

 Input: haystack = "aaaaa", needle = "bba"
 Output: -1
  

 Constraints:

 1 <= haystack.length, needle.length <= 104
 haystack and needle consist of only lowercase English characters.
 */

class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if needle.isEmpty { return 0 }
        if needle.count > haystack.count { return -1 }
        
        var start = 0
        let end = needle.count - 1
        
        let hayArray = Array(haystack)
        let needleArray = Array(needle)
        
        while (start+end < haystack.count) {
            if (hayArray[start...(start+end)] == needleArray[0...end]) {
                return start
            }
            
            start += 1
        }
        
        return -1
    }
}
