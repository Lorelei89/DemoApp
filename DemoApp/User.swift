//
//  User.swift
//  DemoApp
//
//  Created by Sabina Buruiana on 2/14/17.
//  Copyright © 2017 Sabina Buruiana. All rights reserved.
//

import Foundation
struct User {
    var gender: String
    var name: UserNameSwiftyJSON
    var location: UserLocationSwiftyJSON
    var email: String
    var login: UserLoginSwiftyJSON
    var phone:String
    var id:UserIdSwiftyJSON
    var picture: UserPictureSwiftyJSON
    var nationality:String
    
//    init(gender: String, name: [String:AnyObject], location: [String:AnyObject], email: String, login:  [String:AnyObject], phone:String, id:String, picture:[String:AnyObject], nationality:String)
//        {
//        self.gender = gender
//        self.name = name
//        self.location = location
//        self.email = email
//        self.login = login
//        self.phone = phone
//        self.id = id
//        self.picture = picture
//        self.nationality = nationality
//    }
    
    
//    init(userDictionary: [String:AnyObject])
//    {
//        gender = userDictionary["gender"] as? String
//        name = userDictionary["name"] as? [String:AnyObject]
//        location = userDictionary["location"] as? [String:AnyObject]
//        email = userDictionary["email"] as? String
//        login = userDictionary["login"] as? [String:AnyObject]
//        phone = userDictionary["phone"] as? String
//        id = userDictionary["id"] as? String
//        picture = userDictionary["id"] as?  [String:AnyObject]
//        nationality = userDictionary["nat"] as? String
//    }
    
    
}


extension User: CustomStringConvertible {
    
    var description: String {
        return "User - gender: \(gender)\nname: \(name)\nlocation: \(location)\nemail: \(email)\nlogin: \(login)\nphone:\(phone)\nid:\(id)\npicture:\(picture)\nnationality:\(nationality)"
    }
}
