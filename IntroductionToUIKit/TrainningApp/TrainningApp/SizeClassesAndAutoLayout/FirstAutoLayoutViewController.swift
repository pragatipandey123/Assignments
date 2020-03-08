//
//  FirstAutoLayoutViewController.swift
//  TrainningApp
//
//  Created by Pragati Pandey on 05/03/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import UIKit

class FirstAutoLayoutViewController: UIViewController {
    @IBOutlet weak var roundImage: UIImageView!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imageRounded()
    }
    
    //Function for round image
    func imageRounded() {
        roundImage.layer.cornerRadius = roundImage.frame.height/2
        roundImage.contentMode = .scaleToFill
        roundImage.clipsToBounds = true
        roundImage.backgroundColor = UIColor.black
    }
    
    @IBAction func nextAutoLayoutTapped(_ sender: Bool) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "SecondAutoLayoutViewController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
   

}
