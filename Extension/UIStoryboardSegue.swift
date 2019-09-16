//
//  UIStoryboardSegue.swift
//  GeekHomework
//
//  Created by Николя on 16/09/2019.
//  Copyright © 2019 nick. All rights reserved.
//

import UIKit


extension UIStoryboardSegue {
    func forward(_ friend: Friends?, to destination: UIViewController) {
        if let navigationController = destination as? UINavigationController {
            let root = navigationController.viewControllers[0]
            forward(friend, to: root)
        }
        if let detailViewController = destination as? FriendPhotoViewController {
            detailViewController.friend = friend
        }
        
    }
}
