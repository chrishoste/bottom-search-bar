//
//  PeopleHorizontalController.swift
//  BottomSearchBar
//
//  Created by Christophe Hoste on 30.03.20.
//  Copyright © 2020 Christophe Hoste. All rights reserved.
//

import UIKit

class PeopleHorizontalController: BaseSnappingHorizontalController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(CustomCell.self, forCellWithReuseIdentifier: "cellId")
        collectionView.backgroundColor = .white
        collectionView.contentInset.left = 16
        collectionView.contentInset.right = 16
    }
}

extension PeopleHorizontalController: UICollectionViewDelegateFlowLayout {
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Constants.Data.contacts.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as? CustomCell {
            cell.setup(contact: Constants.Data.contacts[indexPath.item])
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: 60, height: 90)
    }
}
