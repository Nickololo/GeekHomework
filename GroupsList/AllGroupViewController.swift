//
//  AllGroupViewController.swift
//  GeekHomework
//
//  Created by Николя on 16/09/2019.
//  Copyright © 2019 nick. All rights reserved.
//

import UIKit

class AllGroupViewController: UITableViewController {
    
    var groupItem: Group?
    
    var allGroups: [Group] = [
        Group(name: "Chess", photo: #imageLiteral(resourceName: "Chess")),
        Group(name: "Running", photo: #imageLiteral(resourceName: "Running")),
        Group(name: "Yoga", photo: #imageLiteral(resourceName: "Yoga")),
        Group(name: "Bicycles", photo: #imageLiteral(resourceName: "Bicycles"))
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }

}
