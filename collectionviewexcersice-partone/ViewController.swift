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
    var images = [#imageLiteral(resourceName: "l1"),#imageLiteral(resourceName: "l2"),#imageLiteral(resourceName: "l3"),#imageLiteral(resourceName: "l5"),#imageLiteral(resourceName: "l6"),#imageLiteral(resourceName: "l7"),#imageLiteral(resourceName: "l8"),#imageLiteral(resourceName: "l9"),#imageLiteral(resourceName: "l10"),#imageLiteral(resourceName: "l11"),#imageLiteral(resourceName: "l12"),#imageLiteral(resourceName: "l13"),#imageLiteral(resourceName: "l14"),#imageLiteral(resourceName: "l15"),#imageLiteral(resourceName: "l16"),#imageLiteral(resourceName: "l4")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundImage.image = #imageLiteral(resourceName: "background")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        let image: UIImageView = cell.viewWithTag(100) as! UIImageView
        image.image = images[indexPath.row]
        return cell
    }
    
    
}

