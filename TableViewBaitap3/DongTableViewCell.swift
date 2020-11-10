//
//  DongTableViewCell.swift
//  TableViewBaitap3
//
//  Created by Công on 11/10/20.
//  Copyright © 2020 Công. All rights reserved.
//

import UIKit

class DongTableViewCell: UITableViewCell {

    @IBOutlet weak var imageAvartar: UIImageView!
    @IBOutlet weak var imageNoti: UIImageView!
    @IBOutlet weak var imageIcon: UIImageView!
    @IBOutlet weak var labelNoti: UILabel!
    @IBOutlet weak var labelTimeLine: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        imageAvartar.layer.cornerRadius = imageAvartar.frame.size.width / 2
        imageAvartar.layer.cornerRadius = 30
        imageNoti.layer.cornerRadius = 5
        imageIcon.layer.cornerRadius = 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
