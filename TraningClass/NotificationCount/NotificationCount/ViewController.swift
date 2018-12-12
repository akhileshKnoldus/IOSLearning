//
//  ViewController.swift
//  NotificationCount
//
//  Created by Akhilesh Gupta on 26/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let badgeNumber : Int = 12
        let application = UIApplication.shared
        let centre = UNUserNotificationCenter.current()
        centre.requestAuthorization(options: [.badge , .alert , .sound]){(sucess , error)
            in
            print("Sucess")
        }
        application.applicationIconBadgeNumber = badgeNumber
        application.registerForRemoteNotifications()
    }
    

    
}

