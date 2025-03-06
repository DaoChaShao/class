//
//  Student.swift
//  class
//
//  Created by 刀子叉子勺 on 2025/3/6.
//

class Student: Person {
    private var chinese: Int
    private var math: Int
    private var english: Int

    private var isAdult: Bool {
        return getAge() >= 18
    }

    static var university: String = "Home University"

    init(
        studentName: String, studentAge: Int, studentGender: String,
        chinese: Int, math: Int, english: Int
    ) {
        // First, initialize the attributes of the children's class
        self.chinese = chinese
        self.math = math
        self.english = english

        // Then, initialize the attributes of the parent's class
        super.init(name: studentName, age: studentAge, gender: studentGender)
    }

    internal func getChinese() -> Int { return self.chinese }
    internal func getMath() -> Int { return self.math }
    internal func getEnglish() -> Int { return self.english }
    internal func getIsAdult() -> Bool { return self.isAdult }

    var description: String {
        return
            "Name: \(getName()) Age: \(getAge()) Gender: \(getGender())"
            + "Chinese: \(getChinese()) Math: \(getMath()) English: \(getEnglish())"
    }

    override func greet() -> String {
        return "My name is \(getName()), nice to meet you!"
    }

    internal func isPass(intScore score: Int) -> Bool {
        if score >= 60 {
            return true
        } else {
            return false
        }
    }
}
