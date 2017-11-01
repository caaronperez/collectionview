//
//  CollectionViewCellController.swift
//  collectionviewexcersice-partone
//
//  Created by MCS Devices on 10/31/17.
//  Copyright © 2017 Mobile Consulting Solutions. All rights reserved.
//

import UIKit
import M13Checkbox

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
    var editing: Bool = false {
        didSet {
            self.checkboxImageView?.isHidden = !editing
        }
    }
    
    override var isSelected: Bool {
        didSet {
            if editing {
                self.checkboxImageView!.image = UIImage(named: isSelected ? "checked" : "unchecked")
            }
        }
    }

    
    @IBAction func didPressAgeStepper(_ sender: Any) {
        person?.age = Int(ageStepper.value)
        ageLabel.text = "\(person?.age ?? 0)"
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        checkboxImageView = UIImageView()
        checkboxImageView!.translatesAutoresizingMaskIntoConstraints = false
        checkboxImageView!.contentMode = .scaleAspectFit
        checkboxImageView!.clipsToBounds = true
        checkboxImageView!.isHidden = true
        checkboxImageView!.animationDuration = (TimeInterval(1))
        checkboxImageView!.image = #imageLiteral(resourceName: "unchecked")
        self.contentView.addSubview(checkboxImageView!)
        checkboxImageView!.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 10).isActive = true
        checkboxImageView!.rightAnchor.constraint(equalTo: self.contentView.rightAnchor, constant: -10.0).isActive = true
        checkboxImageView!.widthAnchor.constraint(equalToConstant: 20.0).isActive = true
        checkboxImageView!.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
        
        
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
