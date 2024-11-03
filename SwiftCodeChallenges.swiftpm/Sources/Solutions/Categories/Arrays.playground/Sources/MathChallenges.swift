import Foundation

public class MathChallenges {
    
    public init () {}
    
    public func isPalindrome(_ x: Int) -> Bool {
        let original = "\(x)"
        let originalCharacters = Array(original)
        
        for (index, letter) in originalCharacters.enumerated() {
            if letter != originalCharacters[(originalCharacters.count - 1) - index] {
                return false
            }
        }

        return true
    }
}
