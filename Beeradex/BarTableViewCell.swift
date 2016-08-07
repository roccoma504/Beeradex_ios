//
//  BarTableViewCell.swift
//  Beeradex
//
//  Created by Matthew Rocco on 8/7/16.
//  Copyright © 2016 Matthew Rocco. All rights reserved.
//

import UIKit

class BarTableViewCell: UITableViewCell {

    @IBOutlet weak var barLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
