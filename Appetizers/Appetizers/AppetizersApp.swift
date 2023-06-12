//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by TanjilaNur-00115 on 18/4/23.
// Api- https://seanallen-course-backend.herokuapp.com/swiftui-fundamentals/appetizers

import SwiftUI

@main
struct AppetizersApp: App {
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
            
        }
    }
}
