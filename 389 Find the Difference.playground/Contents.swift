/*
 You are given two strings s and t.

 String t is generated by random shuffling string s and then add one more letter at a random position.

 Return the letter that was added to t.

  

 Example 1:

 Input: s = "abcd", t = "abcde"
 Output: "e"
 Explanation: 'e' is the letter that was added.
 Example 2:

 Input: s = "", t = "y"
 Output: "y"
  

 Constraints:

 0 <= s.length <= 1000
 t.length == s.length + 1
 s and t consist of lowercase English letters.
 */

class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var tDic = Dictionary(t.map {($0, 1)}, uniquingKeysWith: +)
        
        for char in s {
            let count = tDic[char]!
            
            tDic.updateValue(count - 1, forKey: char)
        }
        
        return tDic.filter { $0.value != 0 }.keys.first!
    }
}
