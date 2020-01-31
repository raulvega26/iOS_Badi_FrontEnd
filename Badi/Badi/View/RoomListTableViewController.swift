//
//  RoomListTableViewController.swift
//  Badi
//
//  Created by user on 29/01/2020.
//  Copyright © 2020 Raul. All rights reserved.
//

import UIKit

class RoomListTableViewController: UITableViewController {
    var pictures = ["room.jpeg","room2.jpg","room3.jpg","room4.jpg"]
    var user_details = ["Raul, 25", "Irati, 25", "Didac, 23", "Joan, 25"]
    var descriptions = ["habitacion individual", "habitacion doble", "habitacion individual", "habitacion doble"]
    var prices = ["320 €/mes", "550 €/mes", "700 €/mes", "680 €/mes"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        */
        
        tableView.register(UINib(nibName: "RoomTableViewCell", bundle: nil), forCellReuseIdentifier: "reuseIdentifier")
        
    }
}


extension RoomListTableViewController {
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 350//Choose your custom row height
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! RoomListTableViewCell

        let image = UIImage (named: pictures[indexPath.row])
       /* cell.roomImage.image = image
        cell.userData.text = user_details[indexPath.row]
        cell.informationRoom.text = descriptions[indexPath.row]
        cell.priceRent.text = prices[indexPath.row]
        */
        return cell
    }
}
