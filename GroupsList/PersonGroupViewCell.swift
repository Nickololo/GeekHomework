//
//  PersonGroupViewCell.swift
//  GeekHomework
//
//  Created by Николя on 16/09/2019.
//  Copyright © 2019 nick. All rights reserved.
//

import UIKit

class PersonGroupViewCell: UITableViewCell {

    lazy var groupImage: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .lightGray
        image.layer.cornerRadius = 10
        image.clipsToBounds = true
        
        return image
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "name"
        
        return label
    }()
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColor = .clear
        selectionStyle = .none
        
        setupView()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setupView() {
        addSubview(groupImage)
        addSubview(nameLabel)
        
        groupImage.translatesAutoresizingMaskIntoConstraints = false
        groupImage.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        groupImage.leftAnchor.constraint(equalTo: leftAnchor, constant: 10).isActive = true
        groupImage.widthAnchor.constraint(equalToConstant: 50).isActive = true
        groupImage.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        nameLabel.leftAnchor.constraint(equalTo: groupImage.rightAnchor, constant: 20).isActive = true
        nameLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
}
