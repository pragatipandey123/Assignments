//
//  NavigatingViewController.swift
//  TrainningApp
//
//  Created by Pragati Pandey on 20/03/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import UIKit

class NavigatingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
       
       @IBAction func calculatorButton(_ sender: Any) {
           
           let vc = storyBoard.instantiateViewController(withIdentifier: "CalculatorStackViewController")
           self.navigationController?.pushViewController(vc, animated: true)
           
       }
       
       @IBAction func programmaticallyAutoLayoutButton(_ sender: Any) {
           
           let vc = storyBoard.instantiateViewController(identifier: "ProgrammaticallyAutoLyoutViewController")
           self.navigationController?.pushViewController(vc, animated: true)
           
       }
       
       @IBAction func scrollConstraintsButton(_ sender: Any) {
           
           let vc = storyBoard.instantiateViewController(identifier: "ScrollViewController")
                  self.navigationController?.pushViewController(vc, animated: true)
       }

}
