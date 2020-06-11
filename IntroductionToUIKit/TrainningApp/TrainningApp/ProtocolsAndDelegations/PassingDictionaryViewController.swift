//
//  PassingDictionaryViewController.swift
//  TrainningApp
//
//  Created by Pragati Pandey on 09/06/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import UIKit

protocol sendingDataToRecievingViewController {
    func sendingDictionary(data: [String : String])
}

class PassingDictionaryViewController: UIViewController {
 
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var fatherNameTextField: UITextField!
    
    var delegate: sendingDataToRecievingViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func sendDataTapped(_ sender: Any) {
        delegate?.sendingDictionary(data: ["name": nameTextField.text ?? "No Name", "age": ageTextField.text ?? "No Age", "fathersName": fatherNameTextField.text ?? "No father's name"])
        self.navigationController?.popViewController(animated: true)
    }
    
}
