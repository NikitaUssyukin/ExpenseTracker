//
//  LoginView.swift
//  ExpenseTracker
//
//  Created by Nikita on 18.12.2023.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject var loginViewModel = LoginViewModel()
    
    var body: some View {
        
        ZStack {
            
            VStack {
                Image(systemName: "dollarsign.square")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, alignment: .center)
                    .opacity(0.5)
                    .padding()
                
                VStack {
                    TextField("Username (e-mail address)", text: $loginViewModel.username, prompt: Text("E-mail"))
                        .padding()
                    
                    Divider()
                    
                    SecureField("Password", text: $loginViewModel.password, prompt: Text("Password"))
                        .padding()
                    Button(
                        "Sign in",
                        action: { loginViewModel.submit() })
                        .cornerRadius(45.0)
                        .frame(width: 200, height: 50, alignment: .center)
                        .scaledToFit()
                        .padding()
                        
                }
                .padding()
                
                
                
                Spacer()
            }
        }
        
    }

}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


