/*
 Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

  

 Example 1:

 Input: nums = [1,2,3,1]
 Output: true
 Example 2:

 Input: nums = [1,2,3,4]
 Output: false
 Example 3:

 Input: nums = [1,1,1,3,3,4,3,2,4,2]
 Output: true
  

 Constraints:

 1 <= nums.length <= 105
 -109 <= nums[i] <= 109
 */

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var dic: [Int: Int] = [: ]
        
        for i in nums {
            if dic[i] == nil { dic[i] = 0 }
            
            let cnt = dic[i]!
            dic.updateValue(cnt + 1 , forKey: i)
        }
        
        return dic.filter { $0.value > 1 }.count != 0
    }
}
