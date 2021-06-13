//
//  DetailPersonViewController.swift
//  Contacts
//
//  Created by Алексей on 12.06.2021.
//

import UIKit

class DetailPersonViewController: UIViewController {
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person?
    
    override func viewDidLoad() {
        guard let person = person else { return }
        navigationItem.backButtonTitle = "Persons List"
        navigationItem.title = "\(person.lastName) \(person.name)"
        phoneLabel.text = person.phoneNumber
        emailLabel.text = person.email
    }
    
}
