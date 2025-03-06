//
//  Person.swift
//  class
//
//  Created by 刀子叉子勺 on 2025/3/6.
//

class Person {
    private var name: String
    private var age: Int
    private var gender: String

    init(name: String, age: Int, gender: String) {
        self.name = name
        self.age = age
        self.gender = gender
    }

    internal func greet() -> String { return "This is \(self.name), hello!" }

    internal func getName() -> String { return self.name }
    internal func getAge() -> Int { return self.age }
    internal func getGender() -> String { return self.gender }
}
