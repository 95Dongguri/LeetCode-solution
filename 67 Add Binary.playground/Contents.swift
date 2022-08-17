/*
 Given two binary strings a and b, return their sum as a binary string.

  

 Example 1:

 Input: a = "11", b = "1"
 Output: "100"
 Example 2:

 Input: a = "1010", b = "1011"
 Output: "10101"
  

 Constraints:

 1 <= a.length, b.length <= 104
 a and b consist only of '0' or '1' characters.
 Each string does not contain leading zeros except for the zero itself.
 */

class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var numA = a.compactMap { Int(String($0)) }
        var numB = b.compactMap { Int(String($0)) }

        var answer: [Int] = []

        while (numA.count != numB.count) {
            numA.count < numB.count ? numA.insert(0, at: 0) : numB.insert(0, at: 0)
        }


        for i in 0...numA.count - 1 {
            let sum = numA[i] + numB[i]
            answer.insert(sum, at: i)
        }

        for i in answer.indices.reversed() {
            if answer[i] > 1 {
                answer[i] = answer[i] % 2
                
                if i == 0 {
                    answer.insert(1, at: 0)
                } else {
                    answer[i - 1] += 1
                }
            }
        }

        return answer.map { String($0) }.joined()
    }
}

// compactMap 활용
