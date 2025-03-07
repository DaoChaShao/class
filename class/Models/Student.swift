//
//  Student.swift
//  class
//
//  Created by 刀子叉子勺 on 2025/3/6.
//

class Student: Person, Honest {
    static var university: String = "Home University"

    private var chinese: Int
    private var math: Int
    private var english: Int

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

    override func greet() -> String {
        return "My name is \(getName()), nice to meet you!"
    }

    internal func tellTheTruth() -> String {
        return "Tell the truth is a good habit!"
    }

    internal func getChinese() -> Int { return self.chinese }
    internal func getMath() -> Int { return self.math }
    internal func getEnglish() -> Int { return self.english }
    internal func getIsAdult() -> Bool { return self.isAdult }
    internal func isPass(intScore score: Int) -> Bool {
        if score >= 60 {
            return true
        } else {
            return false
        }
    }

    private var isAdult: Bool { return getAge() >= 18 ? true : false }

    subscript(subject: String) -> Int? {
        get {
            switch subject {
            case "chinese": return self.chinese
            case "math": return self.math
            case "english": return self.english
            default: return nil
            }
        }
    }

    var description: String {
        return
            "Name: \(getName()) Age: \(getAge()) Gender: \(getGender()) "
            + "Chinese: \(getChinese()) Math: \(getMath()) English: \(getEnglish())"
    }
}

extension Student {
    internal func getTotal() -> Int {
        return self.chinese + self.math + self.english
    }

    internal func getAverage() -> Double {
        Double([chinese, math, english].reduce(0, +)) / 3.0
    }
}
