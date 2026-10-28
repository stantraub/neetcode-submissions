class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        var mid = right / 2

        while left <= right {
            mid = (left + right) / 2

            if nums[mid] > target {
                right = mid - 1
            } else if nums[mid] < target {
                left = mid + 1 
            } else {
                return mid
            }
        }

        return -1
    }
}
