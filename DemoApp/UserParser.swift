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
    
//    func parseJSONFromData(_ jsonData: Data?) -> [String : AnyObject]?
//    {
//        if let data = jsonData {
//            do {
//                let jsonDictionary = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableContainers) as? [String : AnyObject]
//                return jsonDictionary
//                
//            } catch let error as NSError {
//                print("error processing json data: \(error.localizedDescription)")
//            }
//        }
//        
//        return nil
//    }
//    
//    func downloadAllUsers(jsonData:Data?) -> [User]
//    {
//        
//        if let jsonDictionary = self.parseJSONFromData(jsonData) {
//            let usersDictionaries = jsonDictionary["results"] as! [[String : AnyObject]]
//            for userDictionary in usersDictionaries {
//                let newUser = User(userDictionary: userDictionary)
//                self.users.append(newUser)
//            }
//        }
//        
//        return self.users
//    }
    
    func swiftyJSONResponseHandler(_ data: Data) ->[User]{
        
        let json = JSON(data: data)
        
        if let usersDictionaries:[JSON] = json.dictionary?["results"]?.arrayValue {
            
                for userDictionary in usersDictionaries {
                    
                
               let gender = userDictionary["gender"].stringValue
               let nameDictionary = userDictionary["name"]
               let locationDictionary = userDictionary["location"]
               let email = userDictionary["email"].stringValue
               let loginDictionary = userDictionary["login"]
               let phone = userDictionary["phone"].stringValue
               let idDictionary = userDictionary["id"]
               let pictureDictionary = userDictionary["picture"]
               let nationality = userDictionary["nat"].stringValue
                
                let name = UserNameSwiftyJSON.init(userDictionary: nameDictionary)
                let location = UserLocationSwiftyJSON.init(userDictionary: locationDictionary)

                let login =  UserLoginSwiftyJSON.init(userDictionary: loginDictionary)
                let id =  UserIdSwiftyJSON.init(userDictionary: idDictionary)
                let picture = UserPictureSwiftyJSON.init(userDictionary: pictureDictionary)

                let user = User(gender: gender, name: name, location: location!, email: email, login: login, phone: phone, id: id, picture: picture, nationality: nationality)
                
                print(user)
                self.users.append(user)
                }
            
            }
           return self.users
        }
}

