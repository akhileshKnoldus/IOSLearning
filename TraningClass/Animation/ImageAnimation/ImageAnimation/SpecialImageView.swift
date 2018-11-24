//
//  SpecialImageView.swift
//  ImageAnimation
//
//  Created by Akhilesh Gupta on 22/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class SpecialImageView: UIImageView {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(SpecialImageView.jumpArround))
        self.addGestureRecognizer(tapGestureRecognizer)
    }

       @objc func jumpArround(){
        UIView.animate(withDuration: 0.5, animations: {
            self.transform = CGAffineTransform(scaleX: 1.5 , y: 1.5)
        }){
            (sucess : Bool) in
            UIView.animate(withDuration: 0.5, animations: {
                self.transform = CGAffineTransform.identity
            })
        }
        
    }
}
