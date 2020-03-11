//
//  CustomCellTableViewCell.swift
//  TrainningApp
//
//  Created by Pragati Pandey on 11/03/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import UIKit

class CustomCellTableViewCell: UITableViewCell {

    @IBOutlet weak var sessions: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configCell(sessions : String) {
        self.sessions.text = sessions
    }
    
}
