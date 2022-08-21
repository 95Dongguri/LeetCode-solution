/*
 Given an array nums of size n, return the majority element.
 
 The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.
 
 
 
 Example 1:
 
 Input: nums = [3,2,3]
 Output: 3
 Example 2:
 
 Input: nums = [2,2,1,1,1,2,2]
 Output: 2
 
 
 Constraints:
 
 n == nums.length
 1 <= n <= 5 * 104
 -109 <= nums[i] <= 109
 
 
 Follow-up: Could you solve the problem in linear time and in O(1) space?
 */

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var dic: [Int: Int] = [: ]
        
        for i in nums {
            if dic[i] == nil { dic[i] = 0 }
            
            let cnt = dic[i]!
            dic.updateValue(cnt + 1, forKey: i)
        }
        
        let dicArr = dic.sorted() { $0.value > $1.value}
        
        return dicArr[0].key
    }
}
