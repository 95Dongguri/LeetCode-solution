/*
 Given an array nums of n integers where nums[i] is in the range [1, n], return an array of all the integers in the range [1, n] that do not appear in nums.
 
 
 
 Example 1:
 
 Input: nums = [4,3,2,7,8,2,3,1]
 Output: [5,6]
 Example 2:
 
 Input: nums = [1,1]
 Output: [2]
 
 
 Constraints:
 
 n == nums.length
 1 <= n <= 105
 1 <= nums[i] <= n
 
 
 Follow up: Could you do it without extra space and in O(n) runtime? You may assume the returned list does not count as extra space.
 */

class Solution {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        let numsDic = Dictionary(Array(Set(nums)).map {($0, 1)}, uniquingKeysWith: +)
        let rangeArr = Array(1...nums.count)
        var rangeDic = Dictionary(rangeArr.map {($0, 1)}, uniquingKeysWith: +)
        
        for key in numsDic.keys {
            let count = rangeDic[key]!
            
            rangeDic.updateValue(count-1, forKey: key)
        }
        
        return Array(rangeDic.filter { $0.value == 1 }.keys).sorted()
        
        //     간단한 코드
//        let numsSet = Set(nums)
//        return (1...nums.count).compactMap {
//            guard !set.contains($0) else { return nil }
//            return $0
//        }
    }
}
