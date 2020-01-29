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
    var posts: [Post?] = []
    
    
    func requestAddress(address: String) -> Array<Codable>{
        print("Interactor: \(address)")
        dataRetriever.retrieve(url: "https://jsonplaceholder.typicode.com/posts", method: "GET") { (result: Result<Array<Post>, Error>) in
            switch result {
            case .success(let posts):
                DispatchQueue.main.async {
                    self.posts = posts
                }
                
            case .failure(let error):
                print(error)
            }
        }
        
        return posts
    }
    
    
}
