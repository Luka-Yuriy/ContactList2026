//
//  Contact.swift
//  ContactList2026
//
//  Created by Yurii Luka on 17.07.2025.
//


struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        return "\(name) \(surname)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
        var persons: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let phoneNumbers = DataStore.shared.phoneNumbers.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        
        let iterationCount = min(
            names.count,
            surnames.count,
            phoneNumbers.count,
            emails.count
        )
        
        for index in 0..<iterationCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            )
            
            persons.append(person)
        }
        
        return persons
    }
}

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}
