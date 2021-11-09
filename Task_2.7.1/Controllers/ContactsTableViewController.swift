//
//  ContactsTableViewController.swift
//  Task_2.7.1
//
//  Created by Никита Бат on 09.11.2021.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    
    private let persons = Person.createPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let viewControllers = tabBarController?.viewControllers else { return }
        let allContacts = viewControllers[1]
        (allContacts as? AllContactsTableViewController)?.contacts = persons
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.text = persons[indexPath.row].fullName
        cell.contentConfiguration = content

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let viewController = segue.destination as? ContactDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        viewController.title = "\(persons[indexPath.row].fullName)"
        viewController.phoneNumber = "\(persons[indexPath.row].phone)"
        viewController.emailAddress = "\(persons[indexPath.row].email)"
    }

}

