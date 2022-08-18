/*
 Given an integer rowIndex, return the rowIndexth (0-indexed) row of the Pascal's triangle.
 
 In Pascal's triangle, each number is the sum of the two numbers directly above it as shown:
 
 
 
 
 Example 1:
 
 Input: rowIndex = 3
 Output: [1,3,3,1]
 Example 2:
 
 Input: rowIndex = 0
 Output: [1]
 Example 3:
 
 Input: rowIndex = 1
 Output: [1,1]
 
 
 Constraints:
 
 0 <= rowIndex <= 33
 */

class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        var answer: [[Int]] = []
        
        for i in 0...33 {
            answer.append(Array(repeating: 1, count: i+1))
        }
        
        
        for i in 2...answer.count - 1 {
            for j in 1...answer[i].count - 2 {
                answer[i][j] = answer[i-1][j-1] + answer[i-1][j]
            }
        }
        
        return answer[rowIndex]
    }
}
