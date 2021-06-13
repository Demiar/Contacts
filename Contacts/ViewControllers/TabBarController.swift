//
//  TabBarController.swift
//  Contacts
//
//  Created by Алексей on 13.06.2021.
//

import UIKit

class TabBarController: UITabBarController {
    let dataManager = DataManager()
    var contacts: [Person] = []
    
    override func viewDidLoad() {
        if let persons = dataManager.getPersons() {
            contacts = persons
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        for viewController in viewControllers {
            if let result = viewController as? ContactsViewController {
                result.contacts = contacts
            } else if let result = viewController as? AnotherContactsViewController {
                result.contacts = contacts
            }
        }
    }
}
