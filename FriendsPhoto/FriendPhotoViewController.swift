//
//  FriendPhotoViewController.swift
//  GeekHomework
//
//  Created by Николя on 15/09/2019.
//  Copyright © 2019 nick. All rights reserved.
//

import UIKit

class FriendPhotoViewController: UIViewController {

    var headerView = FriendPhotoHeaderView()
    var friend: Friends?
    
    override func loadView() {
        view = FriendPhotoView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rootView?.collectionPhotoView.dataSource = self
        rootView?.collectionPhotoView.delegate = self
        headerView.nameFriend.text = friend?.name
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.forward(friend, to: segue.destination)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        rootView?.collectionPhotoView.collectionViewLayout.invalidateLayout()
    }
    private var rootView: FriendPhotoView? {
        return view as? FriendPhotoView
    }
}
