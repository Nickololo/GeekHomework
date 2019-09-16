//
//  FriendPhotoHeaderView.swift
//  GeekHomework
//
//  Created by Николя on 15/09/2019.
//  Copyright © 2019 nick. All rights reserved.
//

import UIKit

class FriendPhotoHeaderView: UICollectionReusableView {
    
    lazy var photoFriend: UIImageView = {
        let photo = UIImageView()
            photo.layer.cornerRadius = 25
            photo.backgroundColor = .lightGray
            photo.clipsToBounds = true
        
        return photo
    }()
    
    lazy var nameFriend: UILabel = {
        let label = UILabel()
            label.text = "name"
            label.textColor = .black
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        addSubview(photoFriend)
        addSubview(nameFriend)
        
        photoFriend.translatesAutoresizingMaskIntoConstraints = false
        photoFriend.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        photoFriend.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        photoFriend.widthAnchor.constraint(equalToConstant: 50).isActive = true
        photoFriend.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        nameFriend.translatesAutoresizingMaskIntoConstraints = false
        nameFriend.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        nameFriend.leftAnchor.constraint(equalTo: photoFriend.rightAnchor, constant: 20).isActive = true
        nameFriend.widthAnchor.constraint(equalToConstant: 200).isActive = true
        nameFriend.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
}
