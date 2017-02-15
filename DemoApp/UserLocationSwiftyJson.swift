//
//  UserLocationSwiftyJson.swift
//  DemoApp
//
//  Created by Sabina Buruiana on 2/15/17.
//  Copyright © 2017 Sabina Buruiana. All rights reserved.
//

import Foundation
import SwiftyJSON
struct UserLocationSwiftyJSON {
    let street:String
    let city:String
    let state:String
    let postcode:String
    
    init?(userDictionary: JSON) {
        guard let street:String = userDictionary["street"].string,
            let city:String = userDictionary["city"].string,
            let state:String = userDictionary["state"].string,
            let  postcode:String = userDictionary["postcode"].string else {
                print("Error: couldn't parse from JSON:")
                return nil
        }
        self.street = street
        self.city = city
        self.state = state
        self.postcode = postcode
    }
}

extension UserLocationSwiftyJSON: CustomStringConvertible {
    
    var description: String {
        return "USernameSwiftyJSON - street: \(street); city: \(city); state: \(state); postcode: \(postcode)"
    }
    
    
}
