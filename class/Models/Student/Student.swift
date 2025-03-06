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
        return "My name is \(name), nice to meet you!"
    }
    
    internal func isAdult(intAge age: Int) -> Bool {
        if age >= 18 {
            return true
        } else {
            return false
        }
    }
    internal func isPass(intscore score: Int) -> Bool {
        if score >= 60 {
            return true
        } else {
            return false
        }
    }
}
