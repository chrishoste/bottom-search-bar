//
//  Data.swift
//  BottomSearchBar
//
//  Created by Christophe Hoste on 30.03.20.
//  Copyright © 2020 Christophe Hoste. All rights reserved.
//

import UIKit

struct Contact {
    let name: String
    let image: UIImage
    let fave: Bool
    let number: String
}

struct Constants {
    public struct Data {
        public static let contacts: [Contact] = [
            Contact(name: "Chris H.", image: UIImage(named: "chrish")!, fave: false, number: "2323232323"),
            Contact(name: "Juju K.", image: UIImage(named: "jujuk")!, fave: true, number: "2323232323"),
            Contact(name: "Eric H.", image: UIImage(named: "erich")!, fave: true, number: "2323232323"),
            Contact(name: "Har H.", image: UIImage(named: "harh")!, fave: false, number: "2323232323"),
            Contact(name: "Fabi K.", image: UIImage(named: "fabik")!, fave: false, number: "2323232323"),
            Contact(name: "Juju H.", image: UIImage(named: "jujuh")!, fave: true, number: "2323232323"),
            Contact(name: "Fil C.", image: UIImage(named: "filc")!, fave: false, number: "2323232323"),
            Contact(name: "JP H.", image: UIImage(named: "jph")!, fave: true, number: "2323232323"),
        ]
    }
}
