//
//  RoomListTableViewCell.swift
//  Badi
//
//  Created by user on 29/01/2020.
//  Copyright © 2020 Raul. All rights reserved.
//

import UIKit

class RoomListTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imageRoom: UIImageView!
    @IBOutlet weak var userInformation: UILabel!
    
    @IBOutlet weak var roomDescription: UILabel!
    
    @IBOutlet weak var price: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
