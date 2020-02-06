//
//  DetailRoomTableViewController.swift
//  Badi
//
//  Created by user on 04/02/2020.
//  Copyright © 2020 Raul. All rights reserved.
//

import UIKit

class DetailRoomTableViewController: UITableViewController {
    
    // let room: Room
    
    private let heightCell:CGFloat = 800
    
    init () {
        super.init(style: .plain)
    }
    
    required init?(coder: NSCoder) {
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
        
        cell.imageRoom.backgroundColor = .blue
        cell.nameRoom.text = "habitación grande"
        
        return cell
    }
}
