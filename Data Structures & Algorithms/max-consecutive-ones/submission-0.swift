class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var max = 0
       
        var curIdx = 0 

        while curIdx < nums.count {
            var curMax = 0

            if nums[curIdx] == 1 {
                while curIdx < nums.count && nums[curIdx] != 0 {
                    curIdx += 1
                    curMax += 1
                }
            }
            curIdx += 1
            max = curMax > max ? curMax : max
        }

        return max
    }   
}
