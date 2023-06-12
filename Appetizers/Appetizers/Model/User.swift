//
//  User.swift
//  Appetizers
//
//  Created by TanjilaNur-00115 on 28/4/23.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
