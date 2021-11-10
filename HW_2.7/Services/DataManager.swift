//
//  DataManager.swift
//  HW_2.7
//
//  Created by Егор Кромин on 10.11.2021.
//

import Foundation

let namesSet: Set = ["John", "Simon", "Will", "Ben",
                  "Jack", "Tim", "Bob", "Ted"]
let surNamesSet: Set = ["Doe", "Smith", "Brown", "Carter",
                     "West", "White", "Green", "Einstein"]
let emailsSet: Set = ["onlyforspam@gmail.com", "donttextme@gmail.com",
                   "afkfortenyears@gmail.com", "trashinbox@gmail.com",
                   "notforwork@gmail.com", "fakemail@gmail.com",
                   "africanprince@gmail.com", "6c6f6c@gmail.com"]

func getPhones() -> [String] {
    var phones: [String] = []
    for _ in 0..<8 {
        phones.append(String(Int.random(in: 100000000...999999999)))
    }
    return phones
}

