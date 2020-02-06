//
//  DetailRoomTableViewCell.swift
//  Badi
//
//  Created by user on 05/02/2020.
//  Copyright © 2020 Raul. All rights reserved.
//

import UIKit

class DetailRoomTableViewCell: UITableViewCell {

    @IBOutlet weak var imageRoom: UIImageView!
    @IBOutlet weak var nameRoom: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
