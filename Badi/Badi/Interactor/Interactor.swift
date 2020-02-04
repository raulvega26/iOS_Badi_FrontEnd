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
    var rooms = [Room]()
    
    
    func requestAddress(address: String){
        
        let addressUrl = address.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!
        
        dataRetriever.retrieve(url: "http://3.82.105.143:3000/V1/search?text=\(addressUrl)", method: "GET") { (result: Result<LocationsResponse, Error>) in
            switch result {
                case .success(let response):
                    DispatchQueue.main.async {
                        self.address = response.locations
                    }
                    
                case .failure(let error):
                    print(error)
            }
        }
    }
    
    func requestRooms(addressRequest: String)  -> Array<String>{
        
        var addressSelected = address.filter { (singleAddress) -> Bool in
            return singleAddress.name == addressRequest
        }
        
        addressSelected[0].name = addressSelected[0].name.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!
        
        addressSelected[0].city = addressSelected[0].city.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!
        
        dataRetriever.retrieve(url: "http://3.82.105.143:3000/V1/rooms?city=\(addressSelected[0].city)(or-nil)&topleft_lat=\(addressSelected[0].topLeftLatitude)&btmright_lat=\(addressSelected[0].bottomRightLongitude)&topleft_long=\(addressSelected[0].topLeftLongitude)&btmright_long=\(addressSelected[0].bottomRightLongitude)", method: "GET") { (result: Result<LocationsResponse, Error>) in
            switch result {
                case .success(let response):
                    DispatchQueue.main.async {
                        self.address = response.locations
                    }
                    
                case .failure(let error):
                    print(error)
            }
        }
        
        let rooms = ["room A", "room B", "room C", "room D"]
        
        return rooms
    }
    
    
    func requestDetailRoom () {
        
    }
}
