//
//  DataManager.swift
//  Contacts
//
//  Created by Алексей on 11.06.2021.
//

import Foundation

class DataManager {
    private var name = ["John", "Andrew", "Anna", "Steve", "Max", "Alex", "Elon", "Joseph", "Nicole"]
    private var lastName = ["Doe", "Smith", "White", "Musk", "Brown", "Johnson", "Williams", "Jones", "Davis"]
    private var phoneNumber = ["555-555-77", "555-444-77", "555-333-77", "555-222-77", "555-666-77", "555-777-77", "555-444-33", "555-444-22", "555-444-34"]
    private var email = ["emailOne@mail.com", "emailTwo@mail.com", "emailThree@mail.com", "emailFour@mail.com", "emailFive@mail.com", "emailSix@mail.com", "emailSeven@mail.com", "emailEight@mail.com", "emailNine@mail.com"]
    
    var persons: [Person] {
        getPersons()!
    }
    
    private func getPersons() -> [Person]? {
        var persons: [Person] = []
        while name.count != 0 || lastName.count != 0  {
            persons.append(Person(name: getName(),
                                  lastName: getLastName(),
                                  phoneNumber: getPhoneNumber(),
                                  email: getEmail()
                            )
            )
        }
        return persons
    }
    
    private func getName() -> String{
        if name.count > 0 {
            name = name.shuffled()
            return name.removeFirst()
        }
        return ""
    }
    
    private func getLastName() -> String{
        if lastName.count > 0 {
            lastName = lastName.shuffled()
            return lastName.removeFirst()
        }
        return ""
    }
    
    private func getPhoneNumber() -> String{
        if phoneNumber.count > 0 {
            phoneNumber = phoneNumber.shuffled()
            return phoneNumber.removeFirst()
        }
        return ""
    }
    
    private func getEmail() -> String{
        if email.count > 0 {
            email = email.shuffled()
            return email.removeFirst()
        }
        return ""
    }
    
    
}

