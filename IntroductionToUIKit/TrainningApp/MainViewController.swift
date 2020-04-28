//
//  MainViewController.swift
//  TrainningApp
//
//  Created by Pragati Pandey on 11/03/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import UIKit

class MainViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    var sessionArray = ["NavigationAndTabBar","AutoLayoutSession1","TableViewAndCollectionView","AutoLayoutSession2","DataPassingTableView"]
    var storyBoardIDArray = ["FirstViewController","FirstAutoLayoutViewController","NestedTableViewController", "NavigatingViewController","DisplayDetailsViewController"]
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            self.title = "Assignments"
            let nib = UINib.init(nibName: "CustomCellTableViewCell", bundle: nil)
            tableView.register(nib, forCellReuseIdentifier: "CustomCell")
     
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return sessionArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCellTableViewCell
        cell.configCell(sessions: "\(sessionArray[indexPath.row])")
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "\(storyBoardIDArray[indexPath.row])")
        self.navigationController?.pushViewController(vc, animated: true)
    }
        

    }
   
     
        

