//
//  Post.swift
//  Badi
//
//  Created by user on 28/01/2020.
//  Copyright © 2020 Raul. All rights reserved.
//

import Foundation

struct Post: Codable {
    var userId: Int
    var id: Int
    var title: String
    var body: String
}
