//
//  LoginView.swift
//  ToDoListApp
//
//  Created by Shrushti S Shetty on 28/11/23.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""

    
    var body: some View {
        VStack {
            HeaderView()
            
            Spacer()
            
            Text("Organise your work and \n life, finally!")
                .font(.title2)
                .foregroundColor(Color(hue: 0.963, saturation: 0.633, brightness: 0.553))
                .fontWeight(.medium)
        
            //LoginForm
            Form {
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button{
                    //Attempt login
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.teal)
                        
                        Text("Login")
                            .font(.title2)
                            .fontWeight(.medium)
                            .foregroundColor(Color(hue: 0.963, saturation: 0.633, brightness: 0.553))
                    }
                }
                .frame(width: 300)
                .padding(.leading)


            }
            
            //Create Acc
            
            VStack {
                Text("New here? Let's get started!")
                    .font(.title3)
                    .foregroundColor(Color(hue: 0.963, saturation: 0.633, brightness: 0.553))
                    .fontWeight(.medium)
                
                Button {
                    //create acc
                } label: {
                    Text("Create an account")
                        .foregroundColor(Color(hue: 0.963, saturation: 0.633, brightness: 0.553))
                        .underline()
                }
                
            }
            
            Spacer()
        }

    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
