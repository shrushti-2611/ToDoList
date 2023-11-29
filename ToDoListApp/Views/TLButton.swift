//
//  TLButton.swift
//  ToDoListApp
//
//  Created by Shrushti S Shetty on 28/11/23.
//

import SwiftUI

struct TLButton: View {
    
    let title: String
    let action: () -> Void

    
    
    var body: some View {
        Button{
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color(hex: 0xF6E1C3))
                
                Text(title)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hex: 0xA84448))
                
            }
        }
    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(title: "Login") {
            //Action
        }
    }
}
