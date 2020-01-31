//
//  LocationFilteredTableViewController.swift
//  Badi
//
//  Created by user on 27/01/2020.
//  Copyright © 2020 Raul. All rights reserved.
//

import UIKit

class SuggestionAddressTableViewController: UITableViewController {
    // var posts = [Any]()
    /*
    var adresses = [Address]() {
        didSet {
            tableView.reloadData()
        }
    }*/
    
    var posts = [String]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
        // return addresses.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        cell.textLabel?.text = posts[indexPath.row]
        
        return cell
    }
}
