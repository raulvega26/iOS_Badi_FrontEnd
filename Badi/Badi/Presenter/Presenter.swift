//
//  Presenter.swift
//  Badi
//
//  Created by user on 24/01/2020.
//  Copyright © 2020 Raul. All rights reserved.
//

class Presenter {
    var view: LocationTableViewController?
    var interactor: Interactor?
    var routing: Routing?
    
    var viewRoom: RoomListTableViewController?
    
    var roomsArray: Array<Room> = []
    
    func searchByTyping(request: String, suggestionFiltered: SuggestionAddressTableViewController){
        var stringAddresses = [String]()
        
        interactor!.requestAddress(address: request)
        
        let direccions = (interactor?.address.filter{ $0.name.lowercased().contains(request.lowercased())
            })!
        
        for dir in direccions {
            stringAddresses.append(dir.name)
        }
        
        routing?.suggestionAddress(addressesArray: stringAddresses , sugFiltController: suggestionFiltered)
    }
    
    func addressSelected(address: String) {
        print("Presenter\(address)")
        let rooms = (interactor?.requestRooms(addressRequest: address))!
        
        routing?.goToRoomList(rooms: rooms)
        
    }
}
