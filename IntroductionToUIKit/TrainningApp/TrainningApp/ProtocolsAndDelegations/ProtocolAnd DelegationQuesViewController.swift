//
//  ProtocolAnd DelegationQuesViewController.swift
//  TrainningApp
//
//  Created by Pragati Pandey on 11/06/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import UIKit

class ProtocolAnd_DelegationQuesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func ques1Tapped(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "RecievingDataViewController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func ques2Tapped(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "RecieveBroadcastMessageViewController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func ques3Tapped(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "NotificationViewController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
