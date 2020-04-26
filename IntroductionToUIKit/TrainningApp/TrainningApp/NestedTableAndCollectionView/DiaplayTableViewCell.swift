//
//  DiaplayTableViewCell.swift
//  TrainningApp
//
//  Created by Pragati Pandey on 23/04/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import UIKit

class DiaplayTableViewCell: UITableViewCell {

    @IBOutlet weak var finalImage: UIImageView!
    @IBOutlet weak var finalAddress: UILabel!
    @IBOutlet weak var finalName: UILabel!
    @IBOutlet weak var finalAge: UILabel!
    @IBOutlet weak var finalDetails: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        finalImage.layer.cornerRadius = finalImage.frame.height/2
        finalImage.contentMode = .scaleToFill
        finalImage.clipsToBounds = true
    }
    
    func passTheData(text1:String, text2:String, text3:String, text4:String, img:UIImage) {
        finalName.text = text1
        finalAddress.text = text2
        finalAge.text = text3
        finalDetails.text = text4
        finalImage.image = img
    }
    
}
