class Length_of_Last_Word {
    func lengthOfLastWord(_ s: String) -> Int {
        guard let word = s.split(separator: " ").last else {
            return 0
        }
        return word.count
    }
}
