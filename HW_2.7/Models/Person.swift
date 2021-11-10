//
//  Person.swift
//  HW_2.7
//
//  Created by Егор Кромин on 10.11.2021.
//

struct Person {
    let name: String
    let surName: String
    let phoneNumber: String
    let email: String
}

extension Person {
    static func getContacts() -> [Person] {
        let phones = getData(phonesSet)
        let names = getData(namesSet)
        let surNames = getData(surNamesSet)
        let emails = getData(emailsSet)
        
        var contacts: [Person] = []
        
        for count in 0..<names.count {
            let person = Person(name: names[count],
                                surName: surNames[count],
                                phoneNumber: phones[count],
                                email: emails[count])
            contacts.append(person)
        }
        return contacts
    }
    
    static func getData(_ Set:Set<String>) -> [String] {
        var temp: [String] = []
        for count in Set {
            temp.append(count)
        }
        return temp
    }
}

