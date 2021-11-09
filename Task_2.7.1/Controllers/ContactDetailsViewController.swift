//
//  DetailsViewController.swift
//  Task_2.7.1
//
//  Created by Никита Бат on 09.11.2021.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var phoneNumber: String!
    var emailAddress: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoneLabel.text = "Phone: " + phoneNumber
        emailLabel.text = "Email: " + emailAddress
    }

}
