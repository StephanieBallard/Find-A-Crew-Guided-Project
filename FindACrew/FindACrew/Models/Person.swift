//
//  Person.swift
//  FindACrew
//
//  Created by Stephanie Ballard on 4/6/20.
//  Copyright © 2020 Stephanie Ballard. All rights reserved.
//

import Foundation

struct Person: Decodable {
    enum CodingKeys: String, CodingKey {
        case name
        case gender
        case birthYear = "birth_year"
    }
    
    let name: String
    let gender: String
    let birthYear: String
}

extension Person: Hashable {
    
}

struct PersonSearch: Decodable {
    let results: [Person]
}
