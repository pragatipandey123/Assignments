//
//  SegmentViewController.swift
//  UIElementsApp
//
//  Created by Pragati Pandey on 02/03/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import UIKit

class SegmentViewController: UIViewController {
    @IBOutlet weak var segmentLabel: UILabel!
    @IBOutlet weak var segmentSelection: UISegmentedControl!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "SEGMENT CONTROL"
    }
    
    @IBAction func segmentsChanged(sender: UISegmentedControl) {
        switch segmentSelection.selectedSegmentIndex
        {
        case 0:
            segmentLabel.text = "Employeer Segment Selected"
            
        case 1:
            segmentLabel.text = "Employee Segment Selected"
        default:
            
            break;
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
