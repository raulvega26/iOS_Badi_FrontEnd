//
//  TableViewController.swift
//  Badi
//
//  Created by user on 24/01/2020.
//  Copyright © 2020 Raul. All rights reserved.
//

import UIKit

class LocationTableViewController: UITableViewController {

    var presenter: Presenter?
    private var activityIndicator = UIActivityIndicatorView(style: .medium)
    
    let filtered = SuggestionAddressTableViewController()
    private lazy var searchController: UISearchController = {
        let s = UISearchController(searchResultsController: filtered)
        s.searchResultsUpdater = self as UISearchResultsUpdating
        return s
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter?.initAPILocation()
        
        let cancelButton = UIBarButtonItem(customView: activityIndicator)
        navigationItem.rightBarButtonItem = cancelButton
        
        navigationItem.searchController = searchController
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
        
        
    }
}

extension LocationTableViewController {
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.presenter?.addressSelected(address: filtered.posts[indexPath.row])
    }
}

extension LocationTableViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        if searchController.searchBar.text!.count > 2 {
            presenter?.searchByTyping(request: searchController.searchBar.text!, suggestionFiltered: filtered)
        } else {
            filtered.posts = []
        }
        
        //filtered.posts = provider.posts.filter{ $0.title.lowercased().contains(with: searchController.searchBar.text!.lowercased()) }
    }
}
