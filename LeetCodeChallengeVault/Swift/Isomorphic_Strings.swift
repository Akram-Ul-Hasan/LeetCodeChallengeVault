class Isomorphic_Strings {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        var hashS = [Character: Character](), hashT = [Character: Character]()
        var s = Array(s), t = Array(t)

        for i in 0..<s.count {
            let c1 = s[i], c2 = t[i]
            if (hashS[c1] != nil && hashS[c1] != c2) || (hashT[c2] != nil && hashT[c2] != c1) {
                return false
            }
            hashS[c1] = c2
            hashT[c2] = c1
        }
        return true

    }
}
