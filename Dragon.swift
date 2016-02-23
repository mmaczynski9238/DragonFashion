//
//  Dragon.swift
//  DragonFashion
//
//  Created by Michael Maczynski on 2/19/16.
//  Copyright © 2016 JohnHerseyHighSchool. All rights reserved.


import Foundation

class Dragon
{
    var name: String
    var description: String
    
    init(Name n:String,Description d:String)
    {
        name = n
        description = d
    }
    
    init()
    {
        name = ""
        description = ""
    }
}