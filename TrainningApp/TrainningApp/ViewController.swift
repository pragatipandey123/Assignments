//
//  ViewController.swift
//  TrainningApp
//
//  Created by Pragati Pandey on 26/02/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    static let string = "String in first VC"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        self.title = "Main View Controller"
        
        self.view.backgroundColor = .systemTeal
    }

    override func viewWillAppear(_ animated: Bool) {
         super.viewWillAppear(true)
       print(ViewController.string)
        
       self.navigationController?.navigationBar.barTintColor = UIColor.systemBlue
       self.navigationController?.navigationBar.tintColor = UIColor.black
       self.navigationController!.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.blue]
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
    }
    
    @IBAction func button1Tapped() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ViewController2")
        self.navigationController!.pushViewController(vc, animated: true)
    }
    
    @IBAction func button2Tapped() {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "ViewController1")
        self.navigationController!.present(vc, animated: true, completion: nil)
    }
    }


//MARK:- SEGUE

//The segue is used to define the flow of our app’s interface. A segue defines a transition between two view controllers in our app’s storyboard file. The starting point of a segue is the button, table row, or gesture recognizer that initiates the segue. The end point of a segue is the view controller you want to display. A segue always presents a new view controller, but we can also use an unwind segue to dismiss a view controller.
//We do not need to trigger segues programmatically. At runtime, UIKit loads the segues associated with a view controller and connects them to the corresponding elements. When the user interacts with the element, UIKit loads the appropriate view controller, notifies your app that the segue is about to occur, and executes the transition. You can use the notifications sent by UIKit to pass data to the new view controller


//MARK:- Storyboard and xib's

// Storyboard: Storyboard is one single file for all the views or screens that are present in our apps. It transitions one screen to another screen. It minimizes the number of files in our apps. Storyboard can put the XIB files. Storyboard is universal; that means our apps can run both iPhone and iPad.In Storyboard you can also used XIB if you need it in Storyboard. Storyboard contains all the controllers, like tool bar, view controller, ant tab bar. If we don’t want to use Storyboard when creating a new project then you can avoid it by unchecking the Storyboard option.

//xib: Xib stands for xml interface builder. Xibs are the older way to perform iOS interface design. With xib any arbitrary/custom view can be designed, which a developer can attach to a view controller as needed. If we apply object oriented approach for our UIs, then it make sense to use xib and break view controller's view down into separate modules.


