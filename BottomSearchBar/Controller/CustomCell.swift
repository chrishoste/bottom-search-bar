//
//  CustomCell.swift
//  BottomSearchBar
//
//  Created by Christophe Hoste on 30.03.20.
//  Copyright © 2020 Christophe Hoste. All rights reserved.
//

import UIKit

class CustomCell: UICollectionViewCell {
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 1
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.text = "Place H."
        return label
    }()
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .systemGreen
        imageView.layer.masksToBounds = true
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageView.constrainHeight(constant: 60)
        imageView.layer.cornerRadius = 30
        
        let stackView = UIStackView(arrangedSubviews: [imageView, nameLabel])
        stackView.alignment = .center
        stackView.axis = .vertical
        addSubview(stackView)
        stackView.fillSuperview()
    }
    
    func setup(contact: Contact) {
        nameLabel.text = contact.name
        imageView.image = contact.image
        isFaved(contact.fave)
    }
    
    func isFaved(_ faved: Bool) {
        if faved {
            let faveView = UIImageView()
            faveView.image = UIImage(systemName: "star.circle.fill", withConfiguration: nil)
            faveView.tintColor = .systemGreen
            faveView.backgroundColor = .white
            addSubview(faveView)
            faveView.constrainHeight(constant: 20)
            faveView.constrainWidth(constant: 20)
            faveView.anchor(top: topAnchor, leading: nil, bottom: nil, trailing: trailingAnchor)
            
            faveView.layer.cornerRadius = 10
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
