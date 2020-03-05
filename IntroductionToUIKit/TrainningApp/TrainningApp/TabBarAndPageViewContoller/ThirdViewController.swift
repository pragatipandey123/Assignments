//
//  ViewController2.swift
//  TrainningApp
//
//  Created by Pragati Pandey on 26/02/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemYellow
        self.title = "Third View Controller"
       
        createTabBar() //Calling the function to create a TabBar
    }
    
    @IBAction func button1Tapped() {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "FourthViewController")
        self.navigationController!.pushViewController(vc, animated: true)
    }
        
    @IBAction func button2Tapped() {
        self.navigationController?.popViewController(animated: true)
    }

   // Programmatically creating TabBar
    func createTabBar() {
        let tabbar = UITabBar(frame: CGRect(x: 0, y: self.view.frame.height-100, width: self.view.frame.width, height: 150))
        tabbar.backgroundColor = .systemBlue
        self.view.addSubview(tabbar)
        let itemOne = UITabBarItem(title: "Item1", image: nil, selectedImage: nil)
        let itemTwo = UITabBarItem(title: "Item2", image: nil, selectedImage: nil)
        let itemThree = UITabBarItem(title: "Item3", image: nil, selectedImage: nil)
        let itemFour = UITabBarItem(title: "Item4", image: nil, selectedImage: nil)
        tabbar.setItems([itemOne, itemTwo, itemThree, itemFour], animated: false)
        tabBarItem.badgeColor = .black
        
    }
}
