class Solution {
func isValid(_ s: String) -> Bool {
    let strArr = Array(s)
    let openingChars: [Character: Character] = [")" : "(", "]" : "[", "}" : "{"]
    
    var stack = [Character]()
    
    for char in strArr {
        if let last = stack.last, openingChars[char] == last {
            stack.removeLast()
        } else {
            stack.append(char)
        }
    }
    
    return stack.isEmpty
}
}
