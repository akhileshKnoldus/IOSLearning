//
//  ViewController.swift
//  DemoCollection
//
//  Created by Dharmendra Singh on 10/10/18.
//  Copyright © 2018 Dharmendra Singh NS804. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionViewDemo: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerNib()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func registerNib() {
        let nib = UINib(nibName: "DemoCollectionCell", bundle: nil)
        self.collectionViewDemo.register(nib, forCellWithReuseIdentifier: "DemoCollectionCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DemoCollectionCell", for: indexPath) as? DemoCollectionCell {
            cell.lblText.text = "\(indexPath.item)"
            cell.backgroundColor = UIColor.cyan
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 100, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }
}

