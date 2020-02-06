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
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var billsIncluded: UILabel!
    @IBOutlet weak var deposit: UILabel!
    @IBOutlet weak var owner: UILabel!
    
    @IBOutlet weak var roomSize: UILabel!
    
    @IBOutlet weak var propertySize: UILabel!
    @IBOutlet weak var roomDescription: UILabel!
    
    @IBOutlet weak var place: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
