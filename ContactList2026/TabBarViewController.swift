//
//  TabBarViewController.swift
//  ContactList2026
//
//  Created by Yurii Luka on 17.07.2025.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let contactListVC = viewControllers?.first as? ContatsListViewController else { return }
        guard let sectionVC = viewControllers?.last as? SectionContactsVIewController else { return }
        
        let contact = Person.getContactList()
        contactListVC.persons = contact
        sectionVC.persons = contact
    }
}
