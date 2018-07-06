//
//  myResttTableViewCell.swift
//  myRestt
//
//  Created by eeam on 2018/6/26.
//

import UIKit

class myResttTableViewCell: UITableViewCell {

    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myType: UILabel!
    @IBOutlet var myLocation: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
