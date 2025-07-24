//
//  ContactDetailsViewController.swift
//  ContactList2026
//
//  Created by Yurii Luka on 24.07.2025.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        
        phoneNumberLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"

    }
}
