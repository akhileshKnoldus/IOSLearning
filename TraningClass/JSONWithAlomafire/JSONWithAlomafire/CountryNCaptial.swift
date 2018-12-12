//
//  CountryNCaptial.swift
//  JSONWithAlomafire
//
//  Created by Akhilesh Gupta on 26/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import Foundation
import  ObjectMapper


class CountryNCaptial : Mappable
{
    
    required init?(map: Map) {
        
    }
    
    var Id: Int?
    var name: String?
    var url : String?
    var ImageUrl: String?
    
    
    
    func mapping(map: Map) {
        Id <- map["id"]
        name <- map["name"]
        url <- map["link"]
        ImageUrl <- map["imageUrl"]
    }
    
    
    
}
