//
//  Order.swift
//  Appetizers
//
//  Created by TanjilaNur-00115 on 28/4/23.
//

import Foundation

final class Order: ObservableObject {
    @Published var items: [Appetizer] = []
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price}
    }
    
    func add(_ appetizer: Appetizer){
        items.append(appetizer)
    }
    func deleteItems(at offset: IndexSet){
        items.remove(atOffsets: offset)
    }
}
