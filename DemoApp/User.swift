//
//  User.swift
//  DemoApp
//
//  Created by Sabina Buruiana on 2/14/17.
//  Copyright © 2017 Sabina Buruiana. All rights reserved.
//

import Foundation

class User {
    var gender: String?
    var name: [String:AnyObject]?
    var location: [String:AnyObject]?
    var email: String?
    var login: [String:AnyObject]?
    var phone:String?
    var id:String?
    var picture: [String:AnyObject]?
    var nationality:String?
    
    init(gender: String, name: [String:AnyObject], location: [String:AnyObject], email: String, login:  [String:AnyObject], phone:String, id:String, picture:[String:AnyObject], nationality:String)
        {
        self.gender = gender
        self.name = name
        self.location = location
        self.email = email
        self.login = login
        self.phone = phone
        self.id = id
        self.picture = picture
        self.nationality = nationality
    }
    
    
    init(userDictionary: [String:AnyObject])
    {
        gender = userDictionary["gender"] as? String
        name = userDictionary["name"] as? [String:AnyObject]
        location = userDictionary["location"] as? [String:AnyObject]
        email = userDictionary["email"] as? String
        login = userDictionary["login"] as? [String:AnyObject]
        phone = userDictionary["phone"] as? String
        id = userDictionary["id"] as? String
        picture = userDictionary["id"] as?  [String:AnyObject]
        nationality = userDictionary["nat"] as? String
    }
    
    
    
}
