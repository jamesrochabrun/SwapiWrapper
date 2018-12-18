//
//  Species.swift
//  SwapiWrapper
//
//  Created by James Rochabrun on 12/18/18.
//  Copyright © 2018 James Rochabrun. All rights reserved.
//

import Foundation

struct Species: Decodable {
    
    var name: String?
    var classification: String?
    var designation: String?
    var averageHeight: String?
    var averageLifespan: String?
    var eyeColors: String?
    var hairColors: String?
    var skinColors: String?
    var language: String?
    var homeworld: String?
    var people: [String]?
    var films: [String]?
    var url: String?
    var created: String?
    var edited: String?
}
