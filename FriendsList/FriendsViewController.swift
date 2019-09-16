//
//  FriendsViewController.swift
//  GeekHomework
//
//  Created by Николя on 15/09/2019.
//  Copyright © 2019 nick. All rights reserved.
//

import UIKit

class FriendsViewController: UITableViewController {

        var friends: [Friends] = [
            Friends(name: "Madison", photo: #imageLiteral(resourceName: "mick")),
            Friends(name: "Ron", photo: #imageLiteral(resourceName: "ron")),
            Friends(name: "Bob", photo: #imageLiteral(resourceName: "jhon")),
            Friends(name: "Mick", photo: #imageLiteral(resourceName: "bob"))
        ]
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
    }

}
