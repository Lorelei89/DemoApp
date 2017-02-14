//
//  User.swift
//  DemoApp
//
//  Created by Sabina Buruiana on 2/14/17.
//  Copyright © 2017 Sabina Buruiana. All rights reserved.
//

import Foundation
import SwiftyJSON
class User {
    var gender: String = ""
    var name: [String:JSON] = [:]
    var location: [String:JSON] = [:]
    var email: String? = nil
    var login: [String:JSON] = [:]
    var phone:String = ""
    var id:String = ""
    var picture: [String:JSON] = [:]
   var nationality:String = ""
}
