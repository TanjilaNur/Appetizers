//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by TanjilaNur-00115 on 28/4/23.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @AppStorage("user") private var userData: Data?
    
    @Published var user = User()
    
    @Published var alertItem: AlertItem?
    
    var isValidForm: Bool {
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.email.isEmpty else {
            self.alertItem = AlertContext.invalidForm
            return false
        }
        
        guard user.email.isValidEmail else {
            self.alertItem = AlertContext.invalidEmail
            return false
        }
        return true
    }
    
    func saveChanges(){
        guard isValidForm else { return }
        
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.invalidEmail
        } catch {
            alertItem = AlertContext.invalidUserData
        }
    }
    
    func retrieveUser(){
        guard let userData = userData else { return }
        
        do {
            let decoder = JSONDecoder()
            user = try decoder.decode(User.self, from: userData)
        } catch {
            alertItem = AlertContext.invalidUserData
        }
    }
}
