//
//  RestaurantTableViewCell.swift
//  MyFood
//
//  Created by Flower on 2018/6/8.
//  Copyright © 2018年 KFlower. All rights reserved.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var localtionLabel: UILabel!
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var myImageView: UIImageView! {
        didSet{
            myImageView.layer.cornerRadius = myImageView.layer.bounds.width / 2
            myImageView.clipsToBounds = true
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
