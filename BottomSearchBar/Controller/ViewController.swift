//
//  ViewController.swift
//  BottomSearchBar
//
//  Created by Christophe Hoste on 30.03.20.
//  Copyright © 2020 Christophe Hoste. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "background")
        return imageView
    }()
    
    let bottomCardView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        view.addSubview(imageView)
        imageView.fillSuperview()
        setupBottomCardView()
        setupSearchViewController()
    }
    
    func setupSearchViewController() {
        let searchViewController = SearchViewController()
        bottomCardView.addSubview(searchViewController.view)
        searchViewController.view.fillSuperview()
        addChild(searchViewController)
    }
    
    func setupBottomCardView() {
        bottomCardView.backgroundColor = .white
        bottomCardView.layer.cornerRadius = 15
        bottomCardView.layer.masksToBounds = true
        view.addSubview(bottomCardView)
        bottomCardView.anchor(top: nil, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor, padding: .init(top: 0, left: 16, bottom: 16, right: 16))
    }
}

