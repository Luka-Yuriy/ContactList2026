//
//  DataStore.swift
//  ContactList2026
//
//  Created by Yurii Luka on 23.07.2025.
//

class DataStore {
    static let shared = DataStore()
    
    let names = [
        "Yuriy", "Andrii", "Oleg", "Viktor", "Serhii"
    ]
    
    let surnames = [
        "Lukashyn", "Kovalenko", "Prykhodko", "Berezovskyi", "Kryvchenko"
    ]
    
    let emails = [
        "yuriy.lukashyn@gmail.com", "andrii.kovalenko@gmail.com", "oleg.prykhodko@gmail.com", "viktor.berezovskyi@gmail.com", "serhii.kryvchenko@gmail.com"
    ]
    
    let phoneNumbers = [
        "+380931234567", "+380998765432", "+380665432198", "+380776543210", "+380991234567"]
    
    private init() {}
}
