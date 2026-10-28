class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        var left = 0
        var right = matrix.count - 1

        while left <= right {
            let mid = (left + right) / 2

            let leftArr = matrix[left]
            let rightArr = matrix[right]
            let midArr = matrix[mid]

            if target > midArr[midArr.count - 1] {
                left = mid + 1
            } else if target < midArr[0] {
                right = mid - 1
            } else {
                return binarySearch(midArr, target)
            }
        }


        return false
    }

    func binarySearch(_ nums: [Int], _ target: Int) -> Bool {
        var left = 0 
        var right = nums.count - 1

        while left <= right {
            let mid = (left + right ) / 2

            if target < nums[mid] {
                right = mid - 1
            } else if target > nums[mid] {
                left = mid + 1
            } else {
                return true
            }
        }

        return false 
    }
}
