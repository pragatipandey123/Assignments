//
//  InputViewController.swift
//  TrainningApp
//
//  Created by Pragati Pandey on 23/03/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import UIKit

class InputViewController: UIViewController {

    @IBOutlet weak var inputText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func selectionButton(_ sender: Any) {
        switch(inputText.text) {
        case "1":
            let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
            let vc = storyBoard.instantiateViewController(withIdentifier: "FirstInputViewController")
            self.navigationController!.pushViewController(vc, animated: true)
            
        case "2":
            let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
            let vc = storyBoard.instantiateViewController(withIdentifier: "SecondInputViewController")
            self.navigationController!.pushViewController(vc, animated: true)
            
        case "3":
            let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
            let vc = storyBoard.instantiateViewController(withIdentifier: "ThirdInputViewController")
            self.navigationController!.pushViewController(vc, animated: true)
            
        case "4":
            let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
            let vc = storyBoard.instantiateViewController(withIdentifier: "FourthInputViewController")
            self.navigationController!.pushViewController(vc, animated: true)
            
        default:
            print("Wrong Input")
            break

    
}
}
}
