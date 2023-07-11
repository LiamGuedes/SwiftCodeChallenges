import Foundation

public class ArraysChallenges {
    public init() {}
    
    public func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var numberIndexDict = [Int: Int]()

        for (index, number) in numbers.enumerated() {
            let complement = target - number
            if let complementIndex = numberIndexDict[complement] {
                return [complementIndex, index]
            }
            numberIndexDict[number] = index
        }

        return []
    }
}
