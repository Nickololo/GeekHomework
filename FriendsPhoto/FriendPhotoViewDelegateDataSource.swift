//
//  FriendPhotoViewDelegateDataSource.swift
//  GeekHomework
//
//  Created by Николя on 15/09/2019.
//  Copyright © 2019 nick. All rights reserved.
//

import UIKit

extension FriendPhotoViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendPhotoViewCell", for: indexPath) as? FriendPhotoViewCell
        
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: view.frame.width * 0.48, height: view.frame.width * 0.48)
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
    
       headerView = (collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "FriendPhotoHeaderView", for: indexPath) as? FriendPhotoHeaderView)!
        headerView.photoFriend.image = friend?.photo
        headerView.nameFriend.text = friend?.name
        
        return headerView
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {

        headerView.layoutIfNeeded()
        // Automagically get the right height
        let height = headerView.photoFriend.systemLayoutSizeFitting(UIView.layoutFittingExpandedSize).height + headerView.nameFriend.systemLayoutSizeFitting(UIView.layoutFittingExpandedSize).height
        
        return CGSize(width: collectionView.frame.width, height: height)
    }
}
