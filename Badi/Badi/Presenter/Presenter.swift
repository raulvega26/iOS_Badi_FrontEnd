//
//  Presenter.swift
//  Badi
//
//  Created by user on 24/01/2020.
//  Copyright © 2020 Raul. All rights reserved.
//

struct Presenter {
    var view: LocationTableViewController?
    var interactor: Interactor?
    var routing: Routing?
    
    func searchByTyping(request: String) -> String{
        
        interactor.requestAddress(address: request)
        
        return ""
    }
}
