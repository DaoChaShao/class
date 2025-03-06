//
//  Teacher.swift
//  class
//
//  Created by 刀子叉子勺 on 2025/3/6.
//

class Teacher: Person {
    private var rate: Int

    init(
        teacherName: String, teacherAge: Int, teacherGender: String,
        rate: Int
    ) {
        // First, initialize the attributes of the children's class
        self.rate = rate

        // Then, initialize the attributes of the parent's class
        super.init(name: teacherName, age: teacherAge, gender: teacherGender)
    }

    override func greet() -> String {
        return "I am \(name), how are you doing?"
    }

    internal func isGood(intRate rate: Int) -> String {
        switch rate {
        case 1...4:
            return "Negtive"
        case 5...6:
            return "Medium"
        case 7...10:
            return "Positive"
        default:
            return "Invalid"
        }
    }
}
