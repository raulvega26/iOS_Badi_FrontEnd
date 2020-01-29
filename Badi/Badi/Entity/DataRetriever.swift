//
//  DataRetriever.swift
//  Badi
//
//  Created by user on 28/01/2020.
//  Copyright © 2020 Raul. All rights reserved.
//

import Foundation

protocol DataRetriever {
    func retrieve<T: Codable>(url: String, method: String, _ completionBlock: @escaping (Result<T, Error>) -> Void)
}

extension DataRetriever {
    func retrieve<T: Codable>(url: String,
                              method: String = "GET",
                              _ completionBlock: @escaping (Result<T, Error>) -> Void) {
        self.retrieve(url: url, method: method, completionBlock)
    }
}
