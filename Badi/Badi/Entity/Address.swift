//
//  Address.swift
//  Badi
//
//  Created by user on 28/01/2020.
//  Copyright © 2020 Raul. All rights reserved.
//

import Foundation

struct Address: Codable {
    var name: String 
    var city: String
    var topleft_lon: Double
    var topleft_lat: Double
    var btmright_lon: Double
    var btmright_lat: Double
}
