//
//  Alert.swift
//  Appetizers
//
//  Created by TanjilaNur-00115 on 25/4/23.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    
    //MARK: - Network alrtes
    static let invalidData = AlertItem(title: Text("Server Error"),
                                       message: Text("The data received from the server was invalid. Please contact support."),
                                       dismissButton: .default(Text("Ok")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                           message: Text("Invalid response received from the server. Please try again later or contact support"),
                                           dismissButton: .default(Text("Ok")))
    static let invalidURL = AlertItem(title: Text("Server Error"),
                                          message: Text("There was an issue connecting to the server. If that persists, please contact support."),
                                          dismissButton: .default(Text("Ok")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable to complete your request at this time. Please check your internet connection."),
                                            dismissButton: .default(Text("Ok")))
    
    //MARK: - Account alrtes
    static let invalidForm = AlertItem(title: Text("Invalid Form"),
                                          message: Text("Please make sure all the fields of the form have been filled out."),
                                          dismissButton: .default(Text("Ok")))
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                            message: Text("Please ensure your email is correct."),
                                            dismissButton: .default(Text("Ok")))
    
    static let userSaveSuccess = AlertItem(title: Text("Profile saved"),
                                            message: Text("Your profile information were successfully saved."),
                                            dismissButton: .default(Text("Ok")))
    
    static let invalidUserData = AlertItem(title: Text("Profile Error"),
                                            message: Text("There was an error saving or retrieving your profile."),
                                            dismissButton: .default(Text("Ok")))
    
    
}
