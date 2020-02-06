//
//  Address.swift
//  Badi
//
//  Created by user on 28/01/2020.
//  Copyright © 2020 Raul. All rights reserved.
//

import Foundation

struct Address: Codable {
    var name: String!
    var city: String!
    var topLeftLongitude: Double
    var topLeftLatitude: Double
    var bottomRightLongitude: Double
    var bottomLeftLatitude: Double
    
    enum CodingKeys: String, CodingKey {
        case name
        case city
        case topLeftLongitude = "topleft_lon"
        case topLeftLatitude = "topleft_lat"
        case bottomRightLongitude = "btmright_lon"
        case bottomLeftLatitude = "btmright_lat"
    }
}
