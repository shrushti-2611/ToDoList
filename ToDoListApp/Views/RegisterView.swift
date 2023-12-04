//
//  RegisterView.swift
//  ToDoListApp
//
//  Created by Shrushti S Shetty on 28/11/23.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            Spacer().frame(height: 50)
            HeaderView(angle: -20)
            Spacer()
            Text("Start Your Journey!")
                .font(.title2)
                .foregroundColor(Color(hex: 0xA84448))
                .fontWeight(.bold)
            
            Spacer().frame(height: 40)
            VStack {
                TextField("Full Name", text: $viewModel.name)
                    .frame(width: 300, height: 45)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocorrectionDisabled()

                
                TextField("Email Address", text: $viewModel.email)
                    .frame(width: 300, height: 45)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $viewModel.password)
                    .frame(width: 300, height: 45)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

            }
            
            TLButton(title: "Create Account") {
                viewModel.register()
            }
            .frame(width: 300, height: 40)
            .padding()
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
        .background(Color(hex: 0xFEFCF9))
        
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
