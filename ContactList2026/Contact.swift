//
//  Contact.swift
//  ContactList2026
//
//  Created by Yurii Luka on 17.07.2025.
//


struct Contact {
    let fullName: String
    let phoneNumber: String
    let email: String
    
    static func getContactList() -> [Contact] {
        [
            Contact(fullName: "Piter Ivanoff", phoneNumber: "888888", email: "qqqq@mail.ru"),
            Contact(fullName: "Yura Luka", phoneNumber: "777777", email: "wwww@mail.ru"),
            Contact(fullName: "Seregs Yadrish", phoneNumber: "666666", email: "eeee@mail.ru"),
            Contact(fullName: "Artem Gus", phoneNumber: "555555", email: "rrrr@mail.ru"),
            Contact(fullName: "Kate Tara", phoneNumber: "444444", email: "tttt@mail.ru")
        ]
    }
}
