//
//  ViewController.swift
//  Contacts
//
//  Created by Алексей on 11.06.2021.
//

import UIKit

class ContactsViewController: UITableViewController {
    var contacts: [Person] = []
    
    override func viewDidLoad() {
        contacts = TestData.persons
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = "\(contacts[indexPath.row].lastName) \(contacts[indexPath.row].name)"
        return cell!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailPerson" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                guard let controller = segue.destination as? DetailPersonViewController else { return }
                let contact = contacts[indexPath.row]
                controller.person = contact
            }
        }
    }
}

