//
//  Appetizer.swift
//  Appetizers
//
//  Created by TanjilaNur-00115 on 25/4/23.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}
struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 1,
                                           name: "Nachos",
                                           description: "I love nachos",
                                           price: 215.00,
                                           imageURL: "",
                                           calories: 20,
                                           protein: 4,
                                           carbs: 30)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItemOne = Appetizer(id: 1,
                                           name: "Nachos",
                                           description: "I love nachos",
                                           price: 215.00,
                                           imageURL: "",
                                           calories: 20,
                                           protein: 4,
                                           carbs: 30)
    static let orderItemTwo = Appetizer(id: 2,
                                           name: "Nachos",
                                           description: "I love nachos",
                                           price: 215.00,
                                           imageURL: "",
                                           calories: 20,
                                           protein: 4,
                                           carbs: 30)
    static let orderItemThree = Appetizer(id: 3,
                                           name: "Nachos",
                                           description: "I love nachos",
                                           price: 215.00,
                                           imageURL: "",
                                           calories: 20,
                                           protein: 4,
                                           carbs: 30)
    static let orderItemFour = Appetizer(id: 4,
                                           name: "Nachos",
                                           description: "I love nachos",
                                           price: 215.00,
                                           imageURL: "",
                                           calories: 20,
                                           protein: 4,
                                           carbs: 30)
    
    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree, orderItemFour]
}
