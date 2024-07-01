class Maximum_Nesting_Depth_of_the_Parentheses {
    func maxDepth(_ s: String) -> Int {
        let arr = Array(s)
        var depth = 0, maxDepth = 0

        arr.forEach { char in
            if char == "(" {
                depth += 1
                maxDepth = max(maxDepth, depth)
            } else if char == ")" {
                depth -= 1
            }
        }
        return maxDepth
    }
}
