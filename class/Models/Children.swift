//
//  Children.swift
//  class
//
//  Created by 刀子叉子勺 on 2025/3/8.
//

class Boy: Father {
    var score: Int

    init(boyName: String, boyAge: Int, boyGender: String, score: Int) {
        self.score = score
        super.init(fatherName: boyName, fatherAge: boyAge, fatherGender: boyGender)
    }
}

class Girl: Mother {
    var score: Int
    
    required init(girlName: String, girlAge: Int, girlGender: String, score: Int) {
        self.score = score
        super.init(motherName: girlName, motherAge: girlAge, motherGender: girlGender)
    }
    
    required init(motherName: String, motherAge: Int, motherGender: String) {
        fatalError("init(motherName:motherAge:motherGender:) has not been implemented")
    }
}
