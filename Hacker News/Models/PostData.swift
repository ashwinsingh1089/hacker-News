//
//  PostData.swift
//  Hacker News
//
//  Created by Ashwin Singh on 24/08/20.
//  Copyright © 2020 Zedexinfo. All rights reserved.
//

import Foundation

struct Results: Decodable{
    let hits: [Post]
}

struct Post: Decodable, Identifiable{
    var id: String{
        return objectID
    }
    let objectID: String
    let title: String
    let points: Int
    let url: String?
}
