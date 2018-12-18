//
//  Film.swift
//  SwapiWrapper
//
//  Created by James Rochabrun on 12/18/18.
//  Copyright © 2018 James Rochabrun. All rights reserved.
//

import Foundation

struct Film: Decodable {
    
    var title: String?
    var episodeId: Int?
    var openingCrawl: String?
    var director: String?
    var producer: String?
    var releaseDate: String?
    var species: [String]?
    var starships: [String]?
    var vehicles: [String]?
    var characters: [String]?
    var planets: [String]?
    var url: String?
    var created: String?
    var edited: String?
}
