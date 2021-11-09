//
//  AllContactsTableViewController.swift
//  Task_2.7.1
//
//  Created by Никита Бат on 09.11.2021.
//

import UIKit

class AllContactsTableViewController: UITableViewController {
    
    var contacts: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].fullName
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()

        switch indexPath.row {
            case 0:
                content.image = UIImage(systemName: "phone.fill")
                content.text = "\(contacts[indexPath.section].phone)"
                cell.contentConfiguration = content
            default:
                content.image = UIImage(systemName: "tray.fill")
                content.text = "\(contacts[indexPath.section].email)"
                cell.contentConfiguration = content
        }

        return cell
    }

}
