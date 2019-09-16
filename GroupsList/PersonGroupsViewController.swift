//
//  PersonGroupsViewController.swift
//  GeekHomework
//
//  Created by Николя on 16/09/2019.
//  Copyright © 2019 nick. All rights reserved.
//

import UIKit

class PersonGroupsViewController: UITableViewController {
    
    var myGroups: [Group] = [
        Group(name: "Adventure", photo: #imageLiteral(resourceName: "Adventure")),
        Group(name: "Therapy", photo: #imageLiteral(resourceName: "Therapy")),
        Group(name: "Travel", photo: #imageLiteral(resourceName: "Travel")),
        Group(name: "Learning", photo: #imageLiteral(resourceName: "Learning"))
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    
    @IBAction func addCity(segue: UIStoryboardSegue) {
        if segue.identifier == "addGroup" {
            guard let allGroupViewController = segue.source as? AllGroupViewController else { return }
            
            if let indexPath = allGroupViewController.tableView.indexPathForSelectedRow {
                let group = allGroupViewController.allGroups[indexPath.row]
                
                if !myGroups.contains(obj: group) {
                    myGroups.append(group)
                    tableView.reloadData()
                }
            }
        }

    }


    
}

