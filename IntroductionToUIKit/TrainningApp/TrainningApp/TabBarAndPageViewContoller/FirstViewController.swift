//
//  ViewController.swift
//  TrainningApp
//
//  Created by Pragati Pandey on 26/02/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var tabbar : UITabBar!
    
    var string = "This is my project"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI() //Calling function of customization NavigationBar
        self.tabbar.backgroundColor = .systemBlue
        
    }
        
  //Customization of NavigationBar
    func configureUI() {
        self.title = "Main View Controller"
        self.view.backgroundColor = .systemTeal
        self.navigationController?.navigationBar.barTintColor = UIColor.systemBlue
        self.navigationController?.navigationBar.tintColor = UIColor.black
        self.navigationController!.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.blue]
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: nil, action: nil)
    }

    
    @IBAction func button1Tapped() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ThirdViewController")
        self.navigationController!.pushViewController(vc, animated: true)
    }
    
    @IBAction func button2Tapped() {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "SecondViewController")
        self.navigationController!.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func programmaticallyTabbarTapped(_ sender : Bool) {
        let storyBoard1 = UIStoryboard.init(name : "Main" , bundle: nil)
        let vc1 = storyBoard1.instantiateViewController(withIdentifier: "ThirdViewController")
        self.navigationController!.pushViewController(vc1, animated: true)
    }
    }



