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
    
    func parseJSONFromData(_ jsonData: Data?) -> [String : AnyObject]?
    {
        if let data = jsonData {
            do {
                let jsonDictionary = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableContainers) as? [String : AnyObject]
                return jsonDictionary
                
            } catch let error as NSError {
                print("error processing json data: \(error.localizedDescription)")
            }
        }
        
        return nil
    }
    
    func downloadAllUsers(jsonData:Data?) -> [User]
    {
        
        if let jsonDictionary = self.parseJSONFromData(jsonData) {
            let usersDictionaries = jsonDictionary["results"] as! [[String : AnyObject]]
            for userDictionary in usersDictionaries {
                let newUser = User(userDictionary: userDictionary)
                self.users.append(newUser)
            }
        }
        
        return self.users
    }
    
}
