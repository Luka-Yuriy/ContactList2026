//
//  TabBarViewController.swift
//  ContactList2026
//
//  Created by Yurii Luka on 17.07.2025.
//

import UIKit

class TabBarViewController: UITabBarController {

    let contactList = Contact.getContactList()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactTableVC = segue.destination as? ContatsTableVIewController else { return }
        contactTableVC.contactList = contactList
        guard let contactDetailVC = segue.destination as? ContatsDetailsTableVIewController else { return }
        contactDetailVC.contactList = contactList
    }
}
