//
//  myTableViewCell.swift
//  MyTest09
//
//  Created by WJY on 2018/6/13.
//  Copyright © 2018年 WJY. All rights reserved.
//

import UIKit

class myTableViewCell: UITableViewCell {

    @IBOutlet var lbName: UILabel!
    @IBOutlet var lbType: UILabel!
    @IBOutlet var lbLocation: UILabel!
    @IBOutlet var myImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
