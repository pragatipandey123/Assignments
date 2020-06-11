//
//  BroadcastViewController.swift
//  TrainningApp
//
//  Created by Pragati Pandey on 11/06/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import UIKit

let notificationIdentifier = "boardcastData"

class BroadcastViewController: UIViewController {

    @IBOutlet weak var broadcastMessage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        broadcastMessage.becomeFirstResponder()
    }
    

    @IBAction func broadcastMessgaeTapped(_ sender: Any) {
        
        NotificationCenter.default.post(name: Notification.Name(rawValue: notificationIdentifier) , object: self , userInfo: [1 : broadcastMessage.text!])
        self.navigationController?.popViewController(animated: true)
    }
    

}
