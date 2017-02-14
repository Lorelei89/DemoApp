//
//  UserNetworking.swift
//  DemoApp
//
//  Created by Sabina Buruiana on 2/14/17.
//  Copyright © 2017 Sabina Buruiana. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire

class UserNetworking {
    func fetchUsers(_ completion: @escaping (Data?) -> Void) {
        let urlString = "https://randomuser.me/api/?page=0&results=100&seed=abc"
        
        guard let url = URL(string: urlString) else {
            print("Error: couldn't create URL from string")
            completion(nil)
            return
        }
        
        let session = URLSession.shared
        let task = session.dataTask(with: url, completionHandler: { data, response, error in
            if let error = error {
                print("Error fetching repositories: \(error)")
                completion(data)
                
                return
            }
            
            completion(data)
        })
        
        task.resume()
        
    }
}
