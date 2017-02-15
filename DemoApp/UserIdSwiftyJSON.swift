//
//  UserIdSwiftyJSON.swift
//  DemoApp
//
//  Created by Sabina Buruiana on 2/15/17.
//  Copyright © 2017 Sabina Buruiana. All rights reserved.
//

import Foundation
import SwiftyJSON

struct UserIdSwiftyJSON {
    let name:String
    let value:String
    
    init(userDictionary: JSON) {
        name = userDictionary["name"].string!
        value = userDictionary["value"].string!
    }
}

extension UserIdSwiftyJSON: CustomStringConvertible {
    
    var description: String {
        return "USernameSwiftyJSON - name: \(name); value: \(value);"
    }
    
}
