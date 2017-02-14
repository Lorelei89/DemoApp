//
//  UserParser.swift
//  DemoApp
//
//  Created by Sabina Buruiana on 2/14/17.
//  Copyright © 2017 Sabina Buruiana. All rights reserved.
//

import Foundation
import SwiftyJSON

class UserParser {
    var users  = [User]()
    
    func parseUserFromJson(json: JSON) ->[User]  {
        print(json.type)
        if let userArray = json.array {
            for user in userArray {
                let userClass = User()
                if let userParentDictonary = user.dictionary {
                    if let userInfo = userParentDictonary["results"]?.dictionary {
                        if let gender = userInfo["gender"]?.string {
                            userClass.gender = gender
                        }
                        
                        if let name = userInfo["name"]?.dictionary {
                            userClass.name = name
                        }
                        if let location = userInfo["location"]?.dictionary {
                            userClass.location = location
                        }
                        
                        if let email = userInfo["email"]?.string {
                            userClass.email = email
                        }
                        if let login = userInfo["login"]?.dictionary {
                            userClass.login = login
                        }
                        
                        if let phone = userInfo["phone"]?.string {
                            userClass.phone = phone
                        }
                        if let id = userInfo["id"]?.string {
                            userClass.id = id
                        }
                        
                        if let picture = userInfo["picture"]?.dictionary {
                            userClass.picture = picture
                        }
                        
                        if let nationality = userInfo["nat"]?.string {
                            userClass.nationality = nationality
                        }
                    }
                }
                self.users.append(userClass)
            }
        }
        return self.users
    }
    
    
}
