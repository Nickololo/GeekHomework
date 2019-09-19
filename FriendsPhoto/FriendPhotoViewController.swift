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
    
    lazy var imageView: UIImageView = {
        let image = UIImageView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/2))
        image.image = UIImage(named: "mick")
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.backgroundColor = .lightGray
        
        return image
    }()
    
    override func loadView() {
        view = FriendPhotoView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        
        view.addSubview(imageView)
        rootView?.collectionPhotoView.dataSource = self
        rootView?.collectionPhotoView.delegate = self
        headerView.nameFriend.text = friend?.name
        imageView.image = friend?.photo
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        rootView?.collectionPhotoView.collectionViewLayout.invalidateLayout()
    }
    

    
    private var rootView: FriendPhotoView? {
        return view as? FriendPhotoView
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let contentOffsetY = scrollView.contentOffset.y

        //Animation image
        let y = 300 - (contentOffsetY + 300)
        let height = min(max(y, 70), UIScreen.main.bounds.height)
        imageView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: height)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        segue.forward(friend, to: segue.destination)
//    }
}


extension UINavigationBar {
    func transparentNavigationBar() {
        self.setBackgroundImage(UIImage(), for: .default)
        self.shadowImage = UIImage()
        self.isTranslucent = true
    }
}
