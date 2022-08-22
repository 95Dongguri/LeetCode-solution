/*
 Given two strings s and t, determine if they are isomorphic.

 Two strings s and t are isomorphic if the characters in s can be replaced to get t.

 All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character, but a character may map to itself.

  

 Example 1:

 Input: s = "egg", t = "add"
 Output: true
 Example 2:

 Input: s = "foo", t = "bar"
 Output: false
 Example 3:

 Input: s = "paper", t = "title"
 Output: true
  

 Constraints:

 1 <= s.length <= 5 * 104
 t.length == s.length
 s and t consist of any valid ascii character.
 */

class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        if s.count == 1 { return true }
        if s.count != t.count { return false }

        var indexS = [String.Element: Int]()
        var indexT = [String.Element: Int]()
        
        let arrayS = Array(s)
        let arrayT = Array(t)
        
        for i in 0...s.count - 1 {
            if indexS[arrayS[i]] != indexT[arrayT[i]] { return false }
            
            indexS[arrayS[i]] = i
            indexT[arrayT[i]] = i
        }
        
        return true
    }
}
