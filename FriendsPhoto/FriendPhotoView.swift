//
//  FriendPhotoView.swift
//  GeekHomework
//
//  Created by Николя on 15/09/2019.
//  Copyright © 2019 nick. All rights reserved.
//

import UIKit

class FriendPhotoView: UIView {
    
    private let collectionViewLayout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
            layout.minimumLineSpacing = 10
            layout.scrollDirection = .vertical
        
        return layout
    }()
    
    lazy var collectionPhotoView: UICollectionView = {
        let view = UICollectionView(frame: .zero, collectionViewLayout: collectionViewLayout)
            view.isPagingEnabled = true
            view.showsVerticalScrollIndicator = false
            view.bounces = false
            view.backgroundColor = .white
        
            view.register(FriendPhotoViewCell.self, forCellWithReuseIdentifier: "FriendPhotoViewCell")
            view.register(FriendPhotoHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "FriendPhotoHeaderView")
        
        return view
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        backgroundColor = .white
        setupView()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    func setupView() {
        addSubview(collectionPhotoView)
        
        collectionPhotoView.translatesAutoresizingMaskIntoConstraints = false
        collectionPhotoView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        collectionPhotoView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        collectionPhotoView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        collectionPhotoView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
}
