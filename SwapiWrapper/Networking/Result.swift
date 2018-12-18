//
//  Result.swift
//  SwapiWrapper
//
//  Created by James Rochabrun on 12/18/18.
//  Copyright © 2018 James Rochabrun. All rights reserved.
//

import Foundation

enum Result<T, U> where U: Error  {
    case success(T)
    case failure(U)
}
