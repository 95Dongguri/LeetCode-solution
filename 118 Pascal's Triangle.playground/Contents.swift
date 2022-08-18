/*
 Given an integer numRows, return the first numRows of Pascal's triangle.

 In Pascal's triangle, each number is the sum of the two numbers directly above it as shown:


  

 Example 1:

 Input: numRows = 5
 Output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
 Example 2:

 Input: numRows = 1
 Output: [[1]]
  

 Constraints:

 1 <= numRows <= 30
 */

class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var answer: [[Int]] = []
        
        for i in 0...numRows - 1 {
            answer.append(Array(repeating: 1, count: i+1))
        }
        
        if answer.count < 3 { return answer } else {
            for i in 2...answer.count - 1 {
                for j in 1...answer[i].count - 2 {
                    answer[i][j] = answer[i-1][j-1] + answer[i-1][j]
                }
            }
        }
        return answer
    }
}
