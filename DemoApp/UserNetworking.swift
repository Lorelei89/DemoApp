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
    lazy var configuration: URLSessionConfiguration = URLSessionConfiguration.default
    lazy var session: URLSession = URLSession(configuration: self.configuration)
    
    typealias ImageDataHandler = ((Data) -> Void)
    
    func downloadImage(_ completion: @escaping ImageDataHandler)
    {
        let urlString = "https://randomuser.me/api/?page=0&results=100&seed=abc"
        let url = URL(string: urlString)
        let request = URLRequest(url: url!)
        let dataTask = session.dataTask(with: request, completionHandler: { (data, response, error) in
        
        if error == nil {
        if let httpResponse = response as? HTTPURLResponse {
        switch (httpResponse.statusCode) {
        case 200:
            if let data = data {
                completion(data)
            }
        default:
            print(httpResponse.statusCode)
            }
           }
        } else {
            print("Error: \(error?.localizedDescription)")
            }
        })
        
        dataTask.resume()
    }
    
    
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




