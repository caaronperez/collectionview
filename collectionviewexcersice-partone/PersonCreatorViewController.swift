//
//  PersonCreatorViewController.swift
//  collectionviewexcersice-partone
//
//  Created by MCS Devices on 10/31/17.
//  Copyright © 2017 Mobile Consulting Solutions. All rights reserved.
//

import UIKit

class PersonCreatorViewController: UIViewController {

    var person: Person?
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var middleNameTextField: UITextField!
    @IBOutlet weak var ageTextFiel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Create new person 👨‍💻"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let firstName = firstNameTextField.text, let lastName = lastNameTextField.text, let age = Int(ageTextFiel.text!), let middleName = middleNameTextField.text {
            person = Person(firstName: firstName, middleName: middleName, lastName: lastName, age: age)
        }
    }

}
