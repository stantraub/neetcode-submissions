class Solution {
    func calPoints(_ operations: [String]) -> Int {
        var stack = [Int]()

        for op in operations { 
            if op == "+" {
                let last = stack[stack.count - 1]
                let secondToLast = stack[stack.count - 2]
                stack.append(last + secondToLast)
            } else if op == "C" {
                stack.removeLast()
            } else if op == "D" {
                let last = stack.last ?? 0
                stack.append(last * 2)
            } else {
                stack.append(Int(op) ?? 0)
            }
        }

        return stack.reduce(0, +)
    }
}
