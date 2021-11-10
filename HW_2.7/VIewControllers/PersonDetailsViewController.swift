//
//  PersonDetailsViewController.swift
//  HW_2.7
//
//  Created by Егор Кромин on 10.11.2021.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var eMailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "\(person.name) \(person.surName)"
        phoneLabel.text! += person.phoneNumber
        eMailLabel.text! += person.email
    }
}
