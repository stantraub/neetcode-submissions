class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var best = 0
        var current = 0

        for n in nums {
            current = n == 1 ? current + 1 : 0
            best = max(best, current)
        }

        return best
    }   
}
