//
//  NestedCustomTableViewCell.swift
//  TrainningApp
//
//  Created by Pragati Pandey on 11/03/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import UIKit

class NestedCustomTableViewCell: UITableViewCell, UICollectionViewDelegate,UICollectionViewDataSource {
    @IBOutlet weak var collectionView: UICollectionView!
        
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
      let nib = UINib.init(nibName: "NestedCustomCollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "CustomCollectionCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        let  cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCollectionCell", for: indexPath)
        return cell
    }
    
    
    
}
