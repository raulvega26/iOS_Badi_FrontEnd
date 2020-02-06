//
//  RoomListTableViewController.swift
//  Badi
//
//  Created by user on 29/01/2020.
//  Copyright © 2020 Raul. All rights reserved.
//

import UIKit

class RoomListTableViewController: UITableViewController {
    
    private var pictures = ["room.jpeg","room2.jpg","room3.jpg","room4.jpg"]
    private var user_details = ["Raul, 25", "Irati, 25", "Didac, 23", "Joan, 25"]
    private var prices = ["320 €/mes", "550 €/mes", "700 €/mes", "680 €/mes"]
    private var room_descriptions = ["habitacion individual", "habitacion doble", "habitacion individual", "habitacion doble"]
    private let heightCell: CGFloat = 350
    private var presenter: Presenter
    private var rooms: Array<Room>
    
    init(rooms: Array<Room>, presenter: Presenter) {
        self.rooms = rooms
        self.presenter = presenter
        super.init(style: .plain)
    }
    
    required init?(coder: NSCoder) {
        self.presenter = Presenter()
        self.rooms = [Room()]
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.title = "Room List"
        /*
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        */
        
         tableView.register(UINib(nibName: "RoomListTableViewCell", bundle: nil), forCellReuseIdentifier: "reuseIdentifier")
       
    }
}

extension RoomListTableViewController {
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return heightCell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rooms.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! RoomListTableViewCell

        // let image = UIImage (named: pictures[indexPath.row])

        cell.roomImage.backgroundColor = UIColor.cyan
        cell.userInformation.text = rooms[indexPath.row].owner.name
        
        cell.roomInformation.text = rooms[indexPath.row].name
        cell.price.text =  String(rooms[indexPath.row].price) +  rooms[indexPath.row].currency

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        presenter.detailRoomSelected()
        
    }
    
    func updateData(rooms: Array<Room>) {
        self.rooms = rooms
        self.tableView.reloadData()
    }
}
