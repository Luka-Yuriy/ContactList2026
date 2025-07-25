//
//  DetailsContactsVIewController.swift
//  ContactList2026
//
//  Created by Yurii Luka on 17.07.2025.
//

import UIKit

class SectionContactsVIewController: UITableViewController {

    var persons: [Person] = []

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = person.phoneNumber
            content.image = UIImage(systemName: Contacts.phone.rawValue)
        default:
            content.text = person.email
            content.image = UIImage(systemName: Contacts.email.rawValue)
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    
}

//MARK: - UITableViewDelegate
extension SectionContactsVIewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HeaderCell") as? HeaderTableViewCell
        let person = persons[section]
        cell?.nameLabel.text = person.name
        cell?.surnameLabel.text = person.surname
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        60
    }
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let fullNameLabel = UILabel(
//            frame: CGRect(
//                x: 16,
//                y: 3,
//                width: 300,
//                height: 20
//            )
//        )
//        fullNameLabel.text = persons[section].fullName
//        fullNameLabel.font = UIFont.boldSystemFont(ofSize: 17)
//        fullNameLabel.textColor = .white
//        
//        let contentView = UIView()
//        contentView.addSubview(fullNameLabel)
//        
//        return contentView
//    }
//    
//    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
//        view.backgroundColor = .gray
//    }
}
