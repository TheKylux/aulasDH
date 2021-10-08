//
//  Item.swift
//  BucketList
//
//  Created by Vitor Lentos on 07/10/21.
//

import Foundation

class Item: Codable {
    
    var title: String
    var done: Bool
    
    init(title: String, done: Bool = false) {
        self.title = title
        self.done = done
    }
    
}
