//
//  AnotherContactsViewController.swift
//  Contacts
//
//  Created by Алексей on 12.06.2021.
//

import UIKit

class AnotherContactsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var contacts: [Person] = []
    
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
        
        contacts = TestData.persons
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        var text = ""
        var image = ""
        if indexPath.row == 0 {
            image = "phone"
            text = contacts[indexPath.section].phoneNumber
        } else {
            image = "mail"
            text = contacts[indexPath.section].email
        }
        cell?.imageView?.image = UIImage(systemName: image)
        cell?.textLabel!.text = text
        return cell!
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "\(contacts[section].lastName) \(contacts[section].name)"
    }
    
}
