//
//  FriendPhotoHeaderView.swift
//  GeekHomework
//
//  Created by Николя on 15/09/2019.
//  Copyright © 2019 nick. All rights reserved.
//

import UIKit

class FriendPhotoHeaderView: UICollectionReusableView {
    
    lazy var nameFriend: UILabel = {
        let label = UILabel()
            label.text = "name"
            label.textColor = .black
            label.textAlignment = .center
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
        addSubview(nameFriend)
        
        nameFriend.translatesAutoresizingMaskIntoConstraints = false
        nameFriend.topAnchor.constraint(equalTo: topAnchor).isActive = true
        nameFriend.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        nameFriend.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
        nameFriend.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
}
