//
//  ViewController.swift
//  collectionviewexcersice-partone
//
//  Created by MCS Devices on 10/31/17.
//  Copyright © 2017 Mobile Consulting Solutions. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var recipeCollection: UICollectionView!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var editButton: UIBarButtonItem!
    var persons: [Person] = [Person(firstName: "Cristian", middleName: "M.", lastName: "Tejeda", age: 22), Person(firstName: "Katya", middleName: "V.", lastName: "Ortega", age: 20), Person(firstName: "Carlos", middleName: "A.", lastName: "Anza", age: 38), Person(firstName: "Arturo", middleName: "D.", lastName: "De la Barrera", age: 29)]
    private var edit = false
    
    @IBAction func didPressEdit(_ sender: Any) {
        edit = edit ? false : true
        editButton.title = edit ? "Done" : "Edit"
        self.navigationController?.setToolbarHidden(!edit, animated: true)        //recipeCollection.setEditing(edit, animated: true)
    }
    
    @IBAction func didPressDelete(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImage.image = #imageLiteral(resourceName: "backgroundthree")
        recipeCollection.register(UINib(nibName: CollectionViewCellController.nibName, bundle: nil), forCellWithReuseIdentifier: CollectionViewCellController.nibName)
        self.title = "🕺 Persons 💃"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func unwindToThisView(sender: UIStoryboardSegue) {
        if let source = sender.source as? PersonCreatorViewController {
            persons.append((source.person)!)
            recipeCollection.reloadData()
        }
    }

}

extension ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return persons.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCellController.nibName, for: indexPath) as! CollectionViewCellController
        cell.person = persons[indexPath.row]
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        cell.awakeFromNib()
        
        return cell
    }
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: Segues.showPresenterFromCollection, sender: persons[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Segues.showPresenterFromCollection {
            if let presenter = segue.destination as? PersonPresenterViewController {
                if let postObject = sender as? Person {
                    presenter.person = postObject
                }
            }
        }
    }
}

extension ViewController {
    
    
}


struct Segues {
    static let showCreatorFromCollection = "showCreatorFromCollection"
    static let showPresenterFromCollection = "showPresenterFromCollection"
}

