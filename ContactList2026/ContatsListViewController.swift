//
//  ContatListViewController.swift
//  ContactList2026
//
//  Created by Yurii Luka on 17.07.2025.
//

import UIKit

class ContatsListViewController: UITableViewController {
    var persons: [Person] = []

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
        
    }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let detailsVC = segue.destination as? ContactDetailsViewController else { return }
            detailsVC.person = persons[indexPath.row]
        }
    }
}
