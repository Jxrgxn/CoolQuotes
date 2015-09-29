//
//  Author.swift
//  CoolQuotes
//
//  Created by BASEL FARAG on 9/22/15.
//  Copyright © 2015 BaselNotBasilProductions. All rights reserved.
//

import Foundation

class Author {
    var authorFirstName: String!
    var authorMiddleName: String?
    var authorLastName: String!

    var fullAuthorName: String {
        get {
            return authorFirstName + " " + authorLastName
        }
    }
}



