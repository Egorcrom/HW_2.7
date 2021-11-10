//
//  DetailedPersonsListViewController.swift
//  HW_2.7
//
//  Created by Егор Кромин on 10.11.2021.
//

import UIKit

class DetailedPersonsListViewController: UITableViewController {
    
    private let contacts = Person.getContacts()

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView,
                            titleForHeaderInSection section: Int) -> String? {
        
        let person = contacts[section]
        return "\(person.name) \(person.surName)"
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        2
    }
    override func tableView(_ tableView: UITableView, cellForRowAt
                            indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "detailedPerson", for: indexPath)

        let person = contacts[indexPath.section]
        let details = [person.phoneNumber, person.email]
        let icons = [UIImage(systemName: "phone"), UIImage(systemName: "tray")]
        var content = cell.defaultContentConfiguration()
        
        content.image = icons[indexPath.row]
        content.text = details[indexPath.row]
        cell.contentConfiguration = content
        
        return cell
    }
}
