//
//  UserLoginSwiftyJSON.swift
//  DemoApp
//
//  Created by Sabina Buruiana on 2/15/17.
//  Copyright © 2017 Sabina Buruiana. All rights reserved.
//

import Foundation
import SwiftyJSON

struct UserLoginSwiftyJSON {
    let username:String
    let password:String

    
    init(userDictionary: JSON) {
        username = userDictionary["username"].string!
        password = userDictionary["password"].string!
    }
}

extension UserLoginSwiftyJSON: CustomStringConvertible {
    
    var description: String {
        return "USernameSwiftyJSON - username: \(username); password: \(password);"
    }

}
