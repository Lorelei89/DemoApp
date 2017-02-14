//
//  UsersCollectionViewController.swift
//  DemoApp
//
//  Created by Sabina Buruiana on 2/14/17.
//  Copyright © 2017 Sabina Buruiana. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire

private let reuseIdentifier = "userCollectionViewCellIdentifier"

private let NUMBER_OF_ITEMS = 2.0
private let MINIMUM_INTERIMITEM_SPACE = 5.0
private let NUMBER_OF_SPACES = 3.0

class UsersCollectionViewController: UICollectionViewController {
    
    let client = UserNetworking()
    let parser = UserParser()
    var users = [User]()
    
    @IBOutlet var usersCollectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        self.refresh {[unowned self] in
            DispatchQueue.main.async {
                self.usersCollectionView.reloadData()
            }
        }

        // Do any additional setup after loading the view.
    }
    
    func refresh(_ completion: @escaping () -> Void) {
        client.fetchUsers { [unowned self] data in
    
            self.users =  self.parser.downloadAllUsers(jsonData: data!)
            print(self.users)
            completion()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 3
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! UserCollectionViewCell
    
        // Configure the cell
//        cell.userPhoto.image = UIImage(named:viewModel.picture(forRowAt: indexPath))
//        cell.nameLabel.text = viewModel.name(forRowAt: indexPath)
//        cell.jobLabel.text = "HR"
        return cell
    }
    
    
   func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UserCollectionViewCell {
      let userCell = UserCollectionViewCell()
    
      return userCell
    }

    //MARK: - UICollectionViewFlowLayout
    
    //Use for size
    func collectionView(_ collectionView: UICollectionView,
                                 layout collectionViewLayout: UICollectionViewLayout,
                                 sizeForItemAt indexPath: IndexPath) -> CGSize{
        
        let screenWidth = UIScreen.main.bounds.size.width
        let twoPicesWith = screenWidth / CGFloat(NUMBER_OF_ITEMS) - CGFloat(NUMBER_OF_SPACES ) * (CGFloat(MINIMUM_INTERIMITEM_SPACE)/CGFloat(NUMBER_OF_ITEMS))
        let size = CGSize(width: twoPicesWith, height: twoPicesWith)
        return size
        
    }
    
    //Use for interspacing
    func collectionView(_ collectionView: UICollectionView,
                                 layout collectionViewLayout: UICollectionViewLayout,
                                 minimumInteritemSpacingForSectionAt section: Int) -> CGFloat{
       return CGFloat(MINIMUM_INTERIMITEM_SPACE)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                                 layout collectionViewLayout: UICollectionViewLayout,
                                 minimumLineSpacingForSectionAt section: Int) -> CGFloat{

        
        return CGFloat(MINIMUM_INTERIMITEM_SPACE)
    }

}
