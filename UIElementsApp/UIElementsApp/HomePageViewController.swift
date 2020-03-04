//
//  HomePageViewController.swift
//  UIElementsApp
//
//  Created by Pragati Pandey on 02/03/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController {

    @IBOutlet weak var HomePageImage: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    var inheritedImage : UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "HOME"
        textView.layer.borderWidth = 2
        textView.layer.borderColor = UIColor.systemPink.cgColor

        // Do any additional setup after loading the view.
        HomePageImage.image = inheritedImage
        
        HomePageImage.layer.cornerRadius = HomePageImage.frame.height/2
        HomePageImage.clipsToBounds = true
    }
    
    
    @IBAction func nextBtnTapped(_ sender : Bool) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SegmentViewController") as! SegmentViewController
        self.navigationController?.pushViewController(vc, animated: true)
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
