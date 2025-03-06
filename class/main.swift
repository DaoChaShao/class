//
//  main.swift
//  class
//
//  Created by 刀子叉子勺 on 2025/3/6.
//

import Fakery
import Foundation

let faker = Faker()

let SEPERATOR: String = String(repeatElement("-", count: 30))

let genders: [String] = [Gender.male.rawValue, Gender.female.rawValue]
var students: [Student] = []
for _ in 1...5 {
    let name: String = faker.name.firstName()
    let age: Int = Int.random(in: 6...24)
    let gender: String = genders.randomElement()!
    let chinese: Int = Int.random(in: 30...100)
    let math: Int = Int.random(in: 30...100)
    let english: Int = Int.random(in: 30...100)

    let student: Student = Student(
        studentName: name, studentAge: age, studentGender: gender,
        chinese: chinese, math: math, english: english)

    students.append(student)
}

for student in students {
    print(student.description)
}
print(SEPERATOR)

print(
    "Is \(students[0].getName()), "
        + "who is studying at the \(Student.university), "
        + "an adult? \(students[0].getIsAdult())!"
)
print(SEPERATOR)

print(
    "Does \(students[0].getName()) pass in chinese? "
        + "\(students[0].isPass(intScore: students[0].getChinese()))"
)
print(SEPERATOR)
