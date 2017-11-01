//
//  CollectionViewCellController.swift
//  collectionviewexcersice-partone
//
//  Created by MCS Devices on 10/31/17.
//  Copyright © 2017 Mobile Consulting Solutions. All rights reserved.
//

import UIKit

class CollectionViewCellController: UICollectionViewCell {

    static let nibName = "CollectionViewCellController"
    var person: Person?
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var middleNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var ageStepper: UIStepper!
    var flagImageView: UIImageView?
    var checkboxImageView: UIImageView?
    
    @IBAction func didPressAgeStepper(_ sender: Any) {
        person?.age = Int(ageStepper.value)
        ageLabel.text = "\(person?.age ?? 0)"
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        if let age = person?.age {
            ageStepper.value = Double(age)
            ageLabel.text = "\(person?.age ?? 0)"
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
    }

}
