//
//  RecieveBroadcastMessageViewController.swift
//  TrainningApp
//
//  Created by Pragati Pandey on 11/06/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import UIKit

class RecieveBroadcastMessageViewController: UIViewController {

    @IBOutlet weak var messageBroadcasted: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(self.receiveData(notification:)), name: NSNotification.Name(rawValue: notificationIdentifier), object: nil)
    }
    
    @objc func receiveData(notification : Notification) {
              messageBroadcasted.text = notification.userInfo![1] as? String
          }
    

    @IBAction func nextScreenTapped(_ sender: Any) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "BroadcastViewController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    

}
