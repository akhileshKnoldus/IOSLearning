//
//  ViewController.swift
//  CodeGuideLine
//
//  Created by Akhilesh Gupta on 30/10/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblFirstName: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
         let lblSecondName = UILabel()
         let lblTitle = UILabel()
         let txtFieldFristName = UITextField()
         let txtFieldPassword = UITextField()
         let switchNotification = UISwitch()
         let viewContainer = UIView()
         let tblViewContact = UITableView()
         let collectionViewContact = UICollectionView()
         let btnLogin = UIButton()
         let btnSignup = UIButton()
         let txtViewBio = UITextView()
         let segmentGender = UISegmentedControl()
        let imgViewProfile = UIImageView()
        let pickerStudent = UIPickerView()
        
        self.setup()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Private functions
    private func setup() {
        
    }
    
    private func secondFunctions() {
        
    }
    
    // MARK: - Public functions
    public func sendData(array: [String]) {
        
    }
    
    // MARK: - IBAction functions
    @IBAction func tapLogin(_ sender: Any) {
    }
    
    @IBAction func tapSignup(_ sender: Any) {
    }
    
    // MARK: - Notification functions
    func keyboardShow() {
        
    }
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}

extension ViewController: UITextFieldDelegate {
    
}

