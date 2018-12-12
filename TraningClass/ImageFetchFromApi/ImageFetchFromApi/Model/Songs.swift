//
//  Songs.swift
//  ImageFetchFromApi
//
//  Created by Akhilesh Gupta on 26/11/18.
//  Copyright © 2018 appventurez. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Songs{
    
    var artistName: String = ""
    var trackCensoredName: String = ""
    var artworkUrl100: String = ""
    init(){
        
    }
    
    init(json: JSON){
        artistName = json["artistName"].stringValue
        trackCensoredName = json["trackCensoredName"].stringValue
        artworkUrl100 = json["artworkUrl100"].stringValue
    }
}
