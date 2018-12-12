//
//  Country.swift
//  JSONWithAlomafire
//
//  Created by Akhilesh Gupta on 26/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import Foundation
import  ObjectMapper


class Country:Mappable
    
{
    var name : String?
    var capital : String?
    
    required init?(map: Map) {
        
    }
    
    
    
    
    
    func mapping(map: Map) {
        name <- map["name"]
        capital <- map["capital"]
        
    }
    

   
    
    
}
