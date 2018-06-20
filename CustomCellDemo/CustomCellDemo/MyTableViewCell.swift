//
//  MyTableViewCell.swift
//  CustomCellDemo
//
//  Created by Varun on 18/06/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet var topLabel: UILabel!
    @IBOutlet var rightLabel: UILabel!
    @IBOutlet var leftLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
