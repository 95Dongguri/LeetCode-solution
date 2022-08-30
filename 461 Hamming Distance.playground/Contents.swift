/*
 461. Hamming Distance
 Easy

 3228

 202

 Add to List

 Share
 The Hamming distance between two integers is the number of positions at which the corresponding bits are different.

 Given two integers x and y, return the Hamming distance between them.

  

 Example 1:

 Input: x = 1, y = 4
 Output: 2
 Explanation:
 1   (0 0 0 1)
 4   (0 1 0 0)
        ↑   ↑
 The above arrows point to positions where the corresponding bits are different.
 Example 2:

 Input: x = 3, y = 1
 Output: 1
  

 Constraints:

 0 <= x, y <= 231 - 1
 */

class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        var xBitArr = Array(String(x, radix: 2))
        var yBitArr = Array(String(y, radix: 2))
        var count = 0
        
        while xBitArr.count != yBitArr.count {
            xBitArr.count < yBitArr.count ? xBitArr.insert("0", at: 0) : yBitArr.insert("0", at: 0)
        }
        
        for i in 0...xBitArr.count - 1 {
            if xBitArr[i] != yBitArr[i] { count += 1 }
        }
        
        return count
        // XOR 활용
        // return (x^y).nonzeroBitCount
    }
}
