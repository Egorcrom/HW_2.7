//
//  PersonsListViewController.swift
//  HW_2.7
//
//  Created by Егор Кромин on 10.11.2021.
//

import UIKit

class PersonsListViewController: UITableViewController {

    private let contacts = Person.getContacts()

    // MARK: - Table view data source
        override func tableView(_ tableView: UITableView,
                                numberOfRowsInSection section: Int) -> Int {
            contacts.count
    }
        override func tableView(_ tableView: UITableView, cellForRowAt
                                indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(
                withIdentifier: "person", for: indexPath)

            let person = contacts[indexPath.row]
            var content = cell.defaultContentConfiguration()
            
            content.text = "\(person.name) \(person.surName)"
            cell.contentConfiguration = content
            
            return cell
        }
  
   //  MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personDetailsVC = segue.destination as?
                PersonDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = contacts[indexPath.row]
        personDetailsVC.person = person
    }
}

