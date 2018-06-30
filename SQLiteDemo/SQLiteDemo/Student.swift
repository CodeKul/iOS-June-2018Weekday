//
//  Student.swift
//  SQLiteDemo
//
//  Created by Varun on 30/06/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import Foundation

class Student {
    var rno : Int
    var name : String
    var marks : Int
    
    init(rno: Int, name: String, marks: Int) {
        self.rno = rno
        self.name = name
        self.marks = marks
    }
}
