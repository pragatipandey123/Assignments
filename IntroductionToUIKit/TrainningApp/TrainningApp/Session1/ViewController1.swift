//
//  ViewController1.swift
//  TrainningApp
//
//  Created by Pragati Pandey on 26/02/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    static let string = "String of first VC"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "First View Controller"
        self.view.backgroundColor = .systemGreen
        // Do any additional setup after loading the view.
        
    }
    

    @IBAction func buttonTapped(){
        self.dismiss(animated: true, completion: nil)
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
