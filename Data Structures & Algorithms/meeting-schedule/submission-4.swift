/**
 * Definition of Interval:
 * class Interval {
 *     var start: Int
 *     var end: Int
 *     init(_ start: Int, _ end: Int) {
 *         self.start = start
 *         self.end = end
 *     }
 * }
 */

class Solution {
    func canAttendMeetings(_ intervals: [Interval]) -> Bool {
        let sorted = intervals.sorted { $0.start < $1.start }

        for i in 0..<sorted.count {
            let nextIntervalIdx = i + 1

            if nextIntervalIdx < sorted.count {
                if sorted[i].end > sorted[nextIntervalIdx].start {
                    return false
                }
            }
        }

        return true
    }
}
