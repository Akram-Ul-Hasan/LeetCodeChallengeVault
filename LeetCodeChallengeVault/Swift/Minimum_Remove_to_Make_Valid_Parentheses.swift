class Solution {
    func minRemoveToMakeValid(_ s: String) -> String {
        var stack = [Int]()
        var arrayS =  Array(s)

        for (i, char) in arrayS.enumerated() {

            if char == "(" {
                stack.append(i)
            } else if char == ")" {
                if let topIndex = stack.last {
                    stack.removeLast()
                } else {
                    arrayS[i] = " "
                }
            }
        }
        for index in stack {
            arrayS[index] = " "
        }

        return String(arrayS.filter{ $0 != " "})
    }
}
