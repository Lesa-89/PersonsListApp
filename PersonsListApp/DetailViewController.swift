//
//  DetailViewController.swift
//  PersonsListApp
//
//  Created by macbook on 11/08/2019.
//  Copyright © 2019 macbook. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = person.name + " " + person.surname
        phoneLabel.text = person.phoneNumber
        emailLabel.text = (person.email).lowercased()
        
    }

}
