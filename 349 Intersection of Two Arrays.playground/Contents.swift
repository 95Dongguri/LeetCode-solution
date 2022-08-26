/*
 Given two integer arrays nums1 and nums2, return an array of their intersection. Each element in the result must be unique and you may return the result in any order.
 
 
 
 Example 1:
 
 Input: nums1 = [1,2,2,1], nums2 = [2,2]
 Output: [2]
 Example 2:
 
 Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
 Output: [9,4]
 Explanation: [4,9] is also accepted.
 
 
 Constraints:
 
 1 <= nums1.length, nums2.length <= 1000
 0 <= nums1[i], nums2[i] <= 1000
 */

class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var answer = Set<Int>()
        
        for i in 0...nums1.count - 1 {
            for j in 0...nums2.count - 1 {
                if nums1[i] == nums2[j] {
                    answer.insert(nums1[i])
                    break
                }
            }
        }
        
        // Set 교집합 연산으로 한줄
        // return Array(Set(num1).intersection(Set(num2)))
        return Array(answer)
    }
}
