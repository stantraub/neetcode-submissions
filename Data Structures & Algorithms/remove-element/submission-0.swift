class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var k = 0 

        for i in nums.indices {
            if nums[i] != val {
                nums[k] = nums[i]
                k += 1
            }
        }

        return k
    }
}
