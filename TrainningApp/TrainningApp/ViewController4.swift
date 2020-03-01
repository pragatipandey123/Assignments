//
//  ViewController4.swift
//  TrainningApp
//
//  Created by Pragati Pandey on 26/02/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .cyan
        self.title = "Fourth View Controller"
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(true)
    print(ViewController.string)
    }
    
    
    @IBAction func button1Tapped() {
        self.navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func button2Tapped() {

        let viewControllers = (navigationController?.viewControllers)
        for vc in viewControllers! {
            if vc is ViewController2{
                self.navigationController?.popToViewController(vc, animated: true)
            }
        }
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
