//
//  DisplayDetailsViewController.swift
//  TrainningApp
//
//  Created by Pragati Pandey on 23/04/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import UIKit

class DisplayDetailsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
   
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var addButton: UIBarButtonItem!
    
    struct Person {
        var name: String
        var address: String
        var age: String
        var details: String
        var img: UIImage
        
    }
    public static var per: [Person] = []
    public static var temp: [Person] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate =  self
        tableView.dataSource = self
        
        let nib = UINib.init(nibName: "DiaplayTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "displayCell")

    }
    
    override func viewWillAppear(_ animated: Bool) {
           tableView.reloadData()
       }
    
    
    @IBAction func addDetails(_ sender: Any) {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(identifier: "DetailsViewController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DisplayDetailsViewController.temp.count
    }

       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "displayCell", for: indexPath) as! DiaplayTableViewCell
        cell.passTheData(text1: DisplayDetailsViewController.temp[indexPath.row].name, text2: DisplayDetailsViewController.temp[indexPath.row].address, text3: DisplayDetailsViewController.temp[indexPath.row].age, text4: DisplayDetailsViewController.temp[indexPath.row].details, img: DisplayDetailsViewController.temp[indexPath.row].img)
        return cell
       }
    
    @IBAction func refreshButtonTapped(){
        if DisplayDetailsViewController.per.count>10
        {
            var j = 0
            DisplayDetailsViewController.temp = []
            for i in 10..<(DisplayDetailsViewController.per.count-1)
            {
                DisplayDetailsViewController.temp[j].self = DisplayDetailsViewController.per[i].self
                j = j+1
            }
        }
    }
   
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
       }
    
    

    

}
