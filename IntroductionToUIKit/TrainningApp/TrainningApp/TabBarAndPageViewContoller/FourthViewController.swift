//
//  ViewController3.swift
//  TrainningApp
//
//  Created by Pragati Pandey on 26/02/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .brown
        self.title = "Fourth View Controller"
        // Do any additional setup after loading the view.
    }
    

    @IBAction func button1Tapped() {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "FifthViewController")
        self.navigationController!.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func button2Tapped() {
       self.navigationController?.popViewController(animated: true)
    }
}
