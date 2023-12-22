//
//  LoginViewModel.swift
//  ExpenseTracker
//
//  Created by Nikita on 22.12.2023.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    @Published var username: String = ""
    @Published var password: String = ""
    
    func submit() {
        print("Login: \(self.username), Password: \(self.password)")
    }
    
    
}
