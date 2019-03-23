//
//  UserTableViewCell.swift
//  workya
//
//  Created by Hackathon19 on 3/22/19.
//  Copyright © 2019 swiftbus. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    

    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var servicesLabel: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
