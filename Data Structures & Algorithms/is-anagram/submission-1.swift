class Solution {
func isAnagram(_ s: String, _ t: String) -> Bool {
    guard s.count == t.count else { return false }

    var sFreq = [Character: Int]()
    var tFreq = [Character: Int]()
    
    for char in s {
        sFreq[char, default: 0] += 1
    }
    
    for char in t {
        tFreq[char, default: 0] += 1
    }
    
    for key in sFreq {
        guard let tFreqValue = tFreq[key.key] else { return false }
        
        if tFreqValue != sFreq[key.key] {
            return false
        }
    }
    
    return true
}
}
