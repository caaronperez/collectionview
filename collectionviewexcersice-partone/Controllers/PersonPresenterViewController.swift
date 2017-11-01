//
//  PersonPresenterViewController.swift
//  collectionviewexcersice-partone
//
//  Created by MCS Devices on 10/31/17.
//  Copyright © 2017 Mobile Consulting Solutions. All rights reserved.
//

import UIKit

class PersonPresenterViewController: UIViewController {

    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var middleNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    weak var person: Person?
    @IBOutlet weak var backgrounImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Person details 🏃💨"
        if let age = person?.age {
            ageLabel.text = "\(age)"
        }
        
        if let firstName =  person?.firstName {
            firstNameLabel.text = firstName
        }
        
        if let middleName = person?.middleName {
            middleNameLabel.text = middleName
        }
        
        if let lastName = person?.lastName {
            lastNameLabel.text = lastName
        }
 
        personImage.layer.cornerRadius = personImage.frame.size.width/2
        personImage.clipsToBounds = true
        personImage.image = #imageLiteral(resourceName: "user")
        backgrounImage.image = #imageLiteral(resourceName: "backgroundone")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
