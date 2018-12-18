//
//  APIError.swift
//  SwapiWrapper
//
//  Created by James Rochabrun on 12/18/18.
//  Copyright © 2018 James Rochabrun. All rights reserved.
//

import Foundation

public enum APIError: Error {
    
    case requestFailed(description: String)
    case jsonConversionFailure(description: String)
    case invalidData
    case responseUnsuccessful(description: String)
    case jsonParsingFailure
    
    var localizedDescription: String {
        switch self {
        case .requestFailed(let desc): return "Request Failed error -> \(desc)"
        case .invalidData: return "Invalid Data error)"
        case .responseUnsuccessful(let desc): return "Response Unsuccessful error -> \(desc)"
        case .jsonParsingFailure: return "JSON Parsing Failure error)"
        case .jsonConversionFailure(let desc): return "JSON Conversion Failure -> \(desc)"
        }
    }
}
