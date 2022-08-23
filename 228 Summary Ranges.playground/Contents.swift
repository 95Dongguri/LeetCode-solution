/*
 You are given a sorted unique integer array nums.

 A range [a,b] is the set of all integers from a to b (inclusive).

 Return the smallest sorted list of ranges that cover all the numbers in the array exactly. That is, each element of nums is covered by exactly one of the ranges, and there is no integer x such that x is in one of the ranges but not in nums.

 Each range [a,b] in the list should be output as:

 "a->b" if a != b
 "a" if a == b
  

 Example 1:

 Input: nums = [0,1,2,4,5,7]
 Output: ["0->2","4->5","7"]
 Explanation: The ranges are:
 [0,2] --> "0->2"
 [4,5] --> "4->5"
 [7,7] --> "7"
 Example 2:

 Input: nums = [0,2,3,4,6,8,9]
 Output: ["0","2->4","6","8->9"]
 Explanation: The ranges are:
 [0,0] --> "0"
 [2,4] --> "2->4"
 [6,6] --> "6"
 [8,9] --> "8->9"
  

 Constraints:

 0 <= nums.length <= 20
 -231 <= nums[i] <= 231 - 1
 All the values of nums are unique.
 nums is sorted in ascending order.
 */

class Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        if nums.count == 0 { return [] }
        if nums.count == 1 { return ["\(nums.first!)"]}
        
        var answer = [String]()
        var current = 0
        var next = 0
        
        while current < nums.count {
            while next + 1 < nums.count && nums[next + 1] - nums[next] == 1 { next += 1 }
            
            if next < nums.count && nums[current] != nums[next] {
                answer.append("\(nums[current])->\(nums[next])")
                next += 1
                current = next
            } else {
                answer.append("\(nums[current])")
                current += 1
                next += 1
            }
        }
        
        return answer
    }
}
