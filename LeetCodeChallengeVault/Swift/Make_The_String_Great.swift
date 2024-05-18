class Solution {
    func makeGood(_ s: String) -> String {
        var stack: [Character] = []
        for char in s {
            if let last = stack.last, last != char && last.lowercased() == char.lowercased() {
                stack.popLast()
            } else {
                stack.append(char)
            }
        }
        return String(stack)
    }
}
