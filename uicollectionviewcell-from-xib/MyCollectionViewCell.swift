//
//  MyCollectionViewCell.swift
//  uicollectionviewcell-from-xib
//
//  Created by bett on 8/18/17.
//  Copyright © 2017 bett. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imgAvatar: UIImageView!
    
    @IBOutlet weak var lbName: UILabel!
    
    @IBOutlet weak var lbComment: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
