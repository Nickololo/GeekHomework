//
//  PersonGroupsViewDelegateDataSource.swift
//  GeekHomework
//
//  Created by Николя on 16/09/2019.
//  Copyright © 2019 nick. All rights reserved.
//

import UIKit

extension PersonGroupsViewController {
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myGroups.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let group = myGroups[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonGroupViewCell", for: indexPath) as! PersonGroupViewCell
        
        cell.groupImage.image = group.photo
        cell.nameLabel.text = group.name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let detailViewController = segue.destination as? FriendPhotoViewController,
//            let index = tableView.indexPathForSelectedRow?.row
//            else {
//                return
//        }
//        detailViewController.friend = groups[index]
//    }
}
