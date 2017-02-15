//
//  UserNameSwiftyJSON.swift
//  DemoApp
//
//  Created by Sabina Buruiana on 2/15/17.
//  Copyright © 2017 Sabina Buruiana. All rights reserved.
//

import Foundation
import SwiftyJSON
struct UserNameSwiftyJSON {
    let title:String
    let firstName:String
    let lastName:String
    

    init(userDictionary: JSON) {
        title = userDictionary["title"].string!
        firstName = userDictionary["first"].string!
        lastName = userDictionary["last"].string!
    }
}

extension UserNameSwiftyJSON: CustomStringConvertible {
    
    var description: String {
        return "USernameSwiftyJSON - title: \(title); firstName: \(firstName); lastName: \(lastName)"
    }

    
    
}
