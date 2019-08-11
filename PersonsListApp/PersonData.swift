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
}

func personArrayCteating() -> [Person] {
    var personArray: [Person] = []
    let nameArrayShuffled = nameArray.shuffled()
    let surNameArrayShuffled = surNameArray.shuffled()
    let phoneNumberArrayShuffled = phoneNumberArray.shuffled()
    
    for numberOfPerson in 0..<nameArray.count {
        let newPerson = Person(name: nameArrayShuffled[numberOfPerson],
                               surname: surNameArrayShuffled[numberOfPerson],
                               phoneNumber: phoneNumberArrayShuffled[numberOfPerson],
                               email: "\(nameArrayShuffled[numberOfPerson])\(surNameArrayShuffled[numberOfPerson])@mail.ru")
        personArray.append(newPerson)
    }
    return personArray
}
