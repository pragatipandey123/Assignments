//
//  SecondAutoLayoutViewController.swift
//  TrainningApp
//
//  Created by Pragati Pandey on 05/03/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import UIKit

class SecondAutoLayoutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func calculatorButtonTapped(_ sender: Bool) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "ThirdAutoLayoutViewController")
        self.navigationController?.pushViewController(vc, animated: true)
    }

}
