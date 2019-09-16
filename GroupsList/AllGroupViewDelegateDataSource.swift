//
//  AllGroupViewDelegateDataSource.swift
//  GeekHomework
//
//  Created by Николя on 16/09/2019.
//  Copyright © 2019 nick. All rights reserved.
//

import UIKit

extension AllGroupViewController {
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allGroups.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let group = allGroups[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "AllGroupViewCell", for: indexPath) as! AllGroupViewCell
        
        cell.groupImage.image = group.photo
        cell.nameLabel.text = group.name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        allGroups.remove(at: indexPath.row)
        print("All Group - \(allGroups)")
        tableView.reloadData()
        
        
    }
    
}
