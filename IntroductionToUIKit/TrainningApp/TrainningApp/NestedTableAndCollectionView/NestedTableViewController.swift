//
//  NestedTableViewController.swift
//  TrainningApp
//
//  Created by Pragati Pandey on 11/03/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import UIKit

class NestedTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var nestedTableView: UITableView!
    
    var sections = ["Action","Drama","Science Fiction","Kids","Horror"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let nib = UINib.init(nibName: "NestedCustomTableViewCell", bundle: nil)
        nestedTableView.register(nib, forCellReuseIdentifier: "NestedCustomCell")
}
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NestedCustomCell", for: indexPath) as! NestedCustomTableViewCell
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
           return sections.count
       }
       
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
           return sections[section]
       }
       
       func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 200
       }
}
