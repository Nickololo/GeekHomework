//
//  FriendPhotoViewCell.swift
//  GeekHomework
//
//  Created by Николя on 15/09/2019.
//  Copyright © 2019 nick. All rights reserved.
//

import UIKit

class FriendPhotoViewCell: UICollectionViewCell {
    
    lazy var photoFriend: UIImageView = {
        let view = UIImageView(frame: CGRect(x: 3, y: 3, width: frame.width - 6, height: frame.height - 6))
            view.backgroundColor = .lightGray
            view.layer.cornerRadius = 15
        
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.cornerRadius = 15
        backgroundColor = .clear
        layer.borderWidth = 0.05
        
        addSubview(photoFriend)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
