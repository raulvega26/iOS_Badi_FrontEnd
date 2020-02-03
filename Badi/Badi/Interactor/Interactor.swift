//
//  Interactor.swift
//  Badi
//
//  Created by user on 24/01/2020.
//  Copyright © 2020 Raul. All rights reserved.
//
import UIKit

class Interactor {
    var presenter: Presenter?
    private let dataRetriever = URLSessionDataRetriever()
    var address = [Address]()
    
    func requestAddress(address: String){
        
        let addressUrl = address.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!
        
        dataRetriever.retrieve(url: "http://3.82.105.143:3000/V1/search?text=\(addressUrl)", method: "GET") { (result: Result<LocationsResponse, Error>) in
            switch result {
                case .success(let response):
                    DispatchQueue.main.async {
                        self.address = response.locations
                        print(response.locations)
                    }
                    
                case .failure(let error):
                    print(error)
            }
        }
    }
    
    func requestRooms(addressRequest: String)  -> Array<String>{
        
        let rooms = ["room A", "room B", "room C", "room D"]
        
        return rooms
    }
}
