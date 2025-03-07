//
//  Parent.swift
//  class
//
//  Created by 刀子叉子勺 on 2025/3/8.
//

class Father {
    var name: String
    var age: Int
    var gender: String

    init(fatherName: String, fatherAge: Int, fatherGender: String) {
        self.name = fatherName
        self.age = fatherAge
        self.gender = fatherGender
    }

    internal func education() -> Int { return 9 }
}

class Mother {
    var name: String
    var age: Int
    var gender: String

    required init(motherName: String, motherAge: Int, motherGender: String) {
        self.name = motherName
        self.age = motherAge
        self.gender = motherGender
    }

    internal func education() -> Int { return 9 }
}
