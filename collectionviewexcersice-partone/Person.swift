//
//  Person.swift
//
//  Created by MCS Devices on 10/31/17.
//  Copyright © 2017 Mobile Consulting Solutions. All rights reserved.
//

import UIKit

class Person: NSObject {
    
    var firstName: String, middleName: String, lastName: String, age: Int
    
    init(firstName: String, middleName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.middleName = middleName
        self.lastName = lastName
        self.age = age
    }
}

