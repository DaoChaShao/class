//
//  Person.swift
//  class
//
//  Created by 刀子叉子勺 on 2025/3/6.
//

class Person {
    internal var name: String
    internal var age: Int
    internal var gender: String

    init(name: String, age: Int, gender: String) {
        self.name = name
        self.age = age
        self.gender = gender
    }

    internal func greet() -> String {
        return "This is \(self.name), hello!"
    }
}
