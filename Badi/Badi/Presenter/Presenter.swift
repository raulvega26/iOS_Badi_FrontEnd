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
    
    func searchByTyping(request: String, suggestionFiltered: SuggestionAddressTableViewController){
        print("Presenter: \(request)")
        
        let addresses = interactor!.requestAddress(address: request)
        
        routing?.suggestionAddress(addressesArray: addresses as! Array<Post>, filterString: request, sugFiltController: suggestionFiltered)
        
    }
}
