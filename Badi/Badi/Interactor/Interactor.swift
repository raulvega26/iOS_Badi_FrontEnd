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
    
    func callAPILocation() {
        
    }
    
    func escape(string: String) -> String {
        let allowedCharacters = string.addingPercentEncoding(withAllowedCharacters: CharacterSet(charactersIn: ":=\"#%/<>?@\\^`{|}").inverted) ?? ""
        return allowedCharacters
    }
    
    func requestAddress(address: String){
        //let urlNew:String = address.replacingOccurrences(of: " ", with: "%20")
        let addressUrl = address.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!

        // 1) http://3.82.105.143:3000/V1/search?text=STRING_TO_FIND -> returns locations list (JSON)
        print("http://3.82.105.143:3000/V1/search?text=\(addressUrl)")
        dataRetriever.retrieve(url: "http://3.82.105.143:3000/V1/search?text=\(addressUrl)", method: "GET") { (result: Result<LocationsResponse, Error>) in
            switch result {
                case .success(let response):
                    DispatchQueue.main.async {
                        self.address = response.locations
                        print(self.address.count)
                    }
                    
                case .failure(let error):
                    print(error)
            }
        }
    }
    
//    func requestRooms(address: Post) -> Array<Post> {
//
//        // "http://3.82.105.143:3000/V1/rooms?city=\(address.name)(or-nil)&topleft_lat=\(address.topleft_lat)&btmright_lat=\(address.btmright_lat)&topleft_long=\(address.topleft_lon)&btmright_long=\(address.btmright_lon)"
//
//        dataRetriever.retrieve(url: "https://jsonplaceholder.typicode.com/posts", method: "GET") { (result: Result<LocationsResponse, Error>) in
//            switch result {
//            case .success(let posts):
//                DispatchQueue.main.async {
//                    self.posts = posts
//                }
//
//            case .failure(let error):
//                print(error)
//            }
//        }
//        return self.posts as! Array<Post>
//    }
}
