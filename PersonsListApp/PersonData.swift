//
//  PersonData.swift
//  PersonsListApp
//
//  Created by macbook on 11/08/2019.
//  Copyright © 2019 macbook. All rights reserved.
//

import Foundation

let nameArray = ["Jax", "Sonia", "Ashot", "Sheila", "Johny", "Meiling", "Harminder"]
let surNameArray = ["Blade", "Smirnov", "Chi", "Baidwan", "Kage", "Black", "Trump"]
let phoneNumberArray = ["88002000600", "1020203", "911", "03", "02", "01", "112"]

let nameArrayShuffled = nameArray.shuffled()
let surNameArrayShuffled = surNameArray.shuffled()
let phoneNumberArrayShuffled = phoneNumberArray.shuffled()

struct Person {
    var name: String
    var surname: String
    var phoneNumber: String
    var email: String
    var fullName: String
}

func personArrayCteating() -> [Person] {
    var personArray: [Person] = []
    let nameArrayShuffled = nameArray.shuffled()
    let surNameArrayShuffled = surNameArray.shuffled()
    let phoneNumberArrayShuffled = phoneNumberArray.shuffled()
    
    for numberOfPerson in 0..<nameArray.count {
        let name = nameArrayShuffled[numberOfPerson]
        let surname = surNameArrayShuffled[numberOfPerson]
        let phoneNumber = phoneNumberArrayShuffled[numberOfPerson]
        let email = ("\(nameArrayShuffled[numberOfPerson])\(surNameArrayShuffled[numberOfPerson])@mail.ru").lowercased()
        let fullName = "\(nameArrayShuffled[numberOfPerson]) \(surNameArrayShuffled[numberOfPerson])"
        
        
        let newPerson = Person(name: name, surname: surname, phoneNumber: phoneNumber, email: email, fullName: fullName)
        personArray.append(newPerson)
    }
    return personArray
}
