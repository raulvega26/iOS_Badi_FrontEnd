//
//  Routing.swift
//  Badi
//
//  Created by user on 24/01/2020.
//  Copyright © 2020 Raul. All rights reserved.
//

import UIKit

class Routing {
    
    let vc: LocationTableViewController = LocationTableViewController()
    var presenter = Presenter()
    let interactor = Interactor()
    
    var navigationController: UINavigationController?
    
    init () {
        vc.presenter = presenter
        presenter.view = vc
        presenter.interactor = interactor
        presenter.routing = self
        interactor.presenter = presenter
        navigationController = UINavigationController(rootViewController: vc)
    }
    
    /*
    func suggestionAddress(adressesArray: Array<Address>, filterString: String, sugFiltController: SuggestionAddressTableViewController){
        let sAVC: SuggestionAddressTableViewController = SuggestionAddressTableViewController()
        
        sugFiltController.adresses = adressesArray.filter{ $0.title.lowercased().starts(with: filterString.lowercased()) }
        
    } */
    
    func suggestionAddress(addressesArray: Array<String>, sugFiltController: SuggestionAddressTableViewController){
        sugFiltController.posts = addressesArray
    }
    
    func goToRoomList(rooms: Array<Post>) {
        let roomList = RoomListTableViewController()
       
        
    }
}
