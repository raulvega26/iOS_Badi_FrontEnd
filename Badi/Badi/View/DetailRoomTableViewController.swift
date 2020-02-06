//
//  DetailRoomTableViewController.swift
//  Badi
//
//  Created by user on 04/02/2020.
//  Copyright © 2020 Raul. All rights reserved.
//

import UIKit
import Kingfisher

class DetailRoomTableViewController: UITableViewController {
    
    let room: Room
    
    private let heightCell:CGFloat = 800
    
    init (room: Room) {
        self.room = room
        super.init(style: .plain)
    }
    
    required init?(coder: NSCoder) {
        self.room = Room()
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "DetailRoomTableViewCell", bundle: nil), forCellReuseIdentifier: "reuseIdentifier")
    }
}


extension DetailRoomTableViewController {
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return heightCell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! DetailRoomTableViewCell
        
        
        let urlImage = URL(string: room.photos[0].url)
        cell.imageRoom.kf.setImage(with: urlImage);
        cell.nameRoom.numberOfLines = 0
        cell.nameRoom.text = room.name
        cell.price.numberOfLines = 0
        cell.price.text = String(room.price) + " " + room.currency
        
        if room.billsIncluded {
            cell.billsIncluded.text = "Gastos incluidos"
        } else {
            cell.billsIncluded.text = "Gastos no incluidos"
        }
        
        cell.billsIncluded.numberOfLines = 0
        
        cell.deposit.text = "Fianza " + String(room.deposit) + " " + room.currency
        cell.deposit.numberOfLines = 0
        cell.owner.text = room.owner.name
        cell.owner.numberOfLines = 0
        cell.roomSize.text = String(room.roomSize) + " m2"
        cell.roomSize.numberOfLines = 0
        cell.propertySize.text = String(room.propertySize) + " m2"
        cell.roomDescription.text = room.description
        cell.roomDescription.numberOfLines = 0
        cell.place.text = room.address + ", " + room.city.name
        cell.place.numberOfLines = 0
        
        return cell
    }
}
