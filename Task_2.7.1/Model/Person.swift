    //
    //  Person.swift
    //  Task_2.7.1
    //
    //  Created by Никита Бат on 09.11.2021.
    //

import Foundation

class Person {
    
    let name: String
    let surname: String
    let phone: String
    let email: String
    var fullName: String {
        "\(name) \(surname)"
    }
    
    init(name: String, surname: String, phone: String, email: String) {
        self.name = name
        self.surname = surname
        self.phone = phone
        self.email = email
    }
    
}

extension Person {
    
    static func createPersons() -> [Person] {
        let arraysOf = DataManager()
        var arrayOfPersons: [Person] = []
        
        for _ in 1...arraysOf.names.count {
        arrayOfPersons.append(Person(name: arraysOf.names[Int.random(in: 0..<arraysOf.names.count)],
                   surname: arraysOf.surnames[Int.random(in: 0..<arraysOf.surnames.count)],
                   phone: arraysOf.phones[Int.random(in: 0..<arraysOf.phones.count)],
                   email: arraysOf.emails[Int.random(in: 0..<arraysOf.emails.count)]))
        }
        
        return arrayOfPersons
    }
    
}
