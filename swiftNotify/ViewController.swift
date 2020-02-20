//
//  ViewController.swift
//  swiftNotify
//
//  Created by Eoan on 20/02/2020.
//  Copyright © 2020 WebSpace. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         print("Loaded!!")
    }
    
    @IBAction func btnPressed(_ sender: Any) {
            print("pressed!!")
            let center = UNUserNotificationCenter.current()

            let content = UNMutableNotificationContent()
            content.title = "Reminder"
            content.body = "Body of reminder"
            content.sound = .default

            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)

            let request = UNNotificationRequest(identifier: "reminder", content: content, trigger: trigger)

            center.add(request, withCompletionHandler: { (error) in
                if error != nil {
                    print("Error! \(error?.localizedDescription ?? "Error local notification")")
                }
            })
        }

}

