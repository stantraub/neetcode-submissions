class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var seen = [Int: Int]() // value -> index

        for (i, num) in nums.enumerated() {
            let complement = target - num
            if let j = seen[complement] {
                return [j, i] // j is always smaller since we iterate left to right
            }
            seen[num] = i
        }
        return []
    }
}
