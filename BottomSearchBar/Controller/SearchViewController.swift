//
//  SearchViewController.swift
//  BottomSearchBar
//
//  Created by Christophe Hoste on 30.03.20.
//  Copyright © 2020 Christophe Hoste. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    let searchBar = UISearchBar()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Recents"
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupSearchBar()
        setupStackView()
    }
    
    func setupSearchBar() {
        searchBar.placeholder = "Search by name or number"
        searchBar.barTintColor = .white
        searchBar.searchBarStyle = .minimal // removes lines above and under the bar
        view.addSubview(searchBar)
        searchBar.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 8, left: 8, bottom: 0, right: 8))
    }
    
    func setupStackView() {
        let horizontalController = PeopleHorizontalController()
        horizontalController.view.constrainHeight(constant: 100)
        
        let alignmentStackView = UIStackView(arrangedSubviews: [titleLabel, UIView()])
        alignmentStackView.isLayoutMarginsRelativeArrangement = true
        alignmentStackView.layoutMargins = .init(top: 0, left: 16, bottom: 0, right: 0)
        
        addChild(horizontalController)
        let stackView = UIStackView(arrangedSubviews: [alignmentStackView, horizontalController.view])
        stackView.axis = .vertical
        view.addSubview(stackView)
        stackView.anchor(top: searchBar.bottomAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor)
    }
}
