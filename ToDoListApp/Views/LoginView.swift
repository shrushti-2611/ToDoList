//
//  LoginView.swift
//  ToDoListApp
//
//  Created by Shrushti S Shetty on 28/11/23.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()

    
    var body: some View {
        NavigationView{
            VStack {

                HeaderView(angle: 20)
                
                Text("Organise your work and \n life, finally!")
                    .font(.title2)
                    .foregroundColor(Color(hex: 0xA84448))
                    .fontWeight(.bold)
                Spacer().frame(height: 15)
                if !viewModel.errorMessage.isEmpty {
                    Text(viewModel.errorMessage)
                        .foregroundColor(Color(hex: 0xA84448))
                }
                //LoginForm
                VStack {
                    TextField("Email", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                        .frame(width: 300,height: 40)
                        .foregroundColor(Color(hex: 0xA84448))
                    
                    Spacer().frame(height: 10)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .frame(width: 300,height: 40)
                        .foregroundColor(Color(hex: 0xA84448))
                    
                    Spacer().frame(height: 35)
                    
                    TLButton(title: "Login", action: {
                        viewModel.login()
                    })
                    .frame(width: 300, height: 40)
                    .padding()
                    
                    
                }
                .padding()
                
                //Create Acc
                
                VStack {
                    Text("New here? Let's get started!")
                        .font(.title3)
                        .foregroundColor(Color(hex: 0xA84448))
                        .fontWeight(.light)
                    
                    
                    NavigationLink("Create an account", destination: RegisterView())
                }
                
                Spacer()
            }
        }
        .background(Color(hex: 0xFEFCF9))
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
