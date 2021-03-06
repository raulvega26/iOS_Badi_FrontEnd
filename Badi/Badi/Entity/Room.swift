//
//  Room.swift
//  Badi
//
//  Created by user on 29/01/2020.
//  Copyright © 2020 Raul. All rights reserved.
//

import Foundation

struct Room : Codable {
    struct City: Codable {
        var name: String!
    }
    
    struct Owner: Codable {
        var id: Int!
        var name: String!
        var birthDate: String!
        var gender: String!
        var about: String!
        
        enum CodingKeys: String, CodingKey {
            case id
            case name
            case birthDate = "birth_date"
            case gender
            case about
        }
    }
    
    struct Extras: Codable {
        var id: Int!
        var name: String!
    }
    
    struct Photos: Codable {
        var id: Int!
        var url: String!
        var order: Int!
    }
    
    struct RoomLocationService: Codable {
        var health: Int!
        var leisure: Int!
        var transport: Int!
        var food: Int!
        var tourism: Int!
    }
    
    var id: Int!
    var name: String!
    var price: Int!
    var billsIncluded: Bool!
    var deposit: Int!
    var roomSize: Int!
    var propertySize: Int!
    var description: String!
    var latitude: Double!
    var longitude: Double!
    var numVisits: Int!
    var createdAt: String!
    var updatedAt: String!
    var owner: Owner!
    var address: String!
    var city: City!
    var currency: String!
    var extras: [Extras]!
    var photos: [Photos]!
    var roomLocationService: RoomLocationService!
    
    init() {
        
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case price
        case billsIncluded = "bills_included"
        case deposit
        case roomSize = "room_size"
        case propertySize = "property_size"
        case description
        case latitude
        case longitude
        case numVisits = "num_visits"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case owner
        case address
        case city
        case currency
        case extras
        case photos
        case roomLocationService = "room_location_service"
    }
}
