
import Foundation

class Longest_Palindrome{
    func longestPalindrome(_ s: String) -> Int {
        var sDict = [Character: Int]()

        for char in s {
            sDict[char, default: 0] += 1
        }

        var result = 0
        var isOddAdded = false

        for (_, count) in sDict {
            if count%2 == 0 {
                result += count
            } else if isOddAdded == false {
                result += count
                isOddAdded = true
            } else {
                result += count - 1
            }
        }
        return result
    }
}
