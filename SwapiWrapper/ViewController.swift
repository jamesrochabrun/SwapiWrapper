//
//  ViewController.swift
//  SwapiWrapper
//
//  Created by James Rochabrun on 12/18/18.
//  Copyright © 2018 James Rochabrun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
         Resources can be of any type for example:
         - People
         - Film
         - Starship..
         Get a feed of Resources with this function.
         */
        
        Vader().get(Resources<Starship>.self) {
            self.handleResult($0)
        }
        
        /*
         Search a type by ID for example ID 1 = "Luke Skywalker"
         */
        Vader().search(People.self, withID: "1") {
            self.handleResult($0)
        }
        
        /*
         Search a type by a query for example r2 = "R2-D2"
         */
        Vader().search(Resources<People>.self, query: "r2") {
            self.handleResult($0)
        }
    }
    
    /*
     Generic method to handle examples.
     */
    private func handleResult<T>(_ result: Result<T, APIError>) {
        switch result {
        case .success(let value): dump(value)
        case .failure(let err): print(err.customDescription)
        }
    }
}



