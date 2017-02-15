//
//  UserPictureSwiftyJSON.swift
//  DemoApp
//
//  Created by Sabina Buruiana on 2/15/17.
//  Copyright © 2017 Sabina Buruiana. All rights reserved.
//

import Foundation
import SwiftyJSON

struct UserPictureSwiftyJSON {
    let large:URL
    let medium:URL
    let thumbnail:URL
    
    init(userDictionary: JSON) {
        large = userDictionary["large"].url!
        medium = userDictionary["medium"].url!
        thumbnail = userDictionary["thumbnail"].url!
    }
}

extension UserPictureSwiftyJSON: CustomStringConvertible {
    
    var description: String {
        return "USernameSwiftyJSON - large: \(large); medium: \(medium); thumbnail: \(thumbnail)"
    }
    
}
