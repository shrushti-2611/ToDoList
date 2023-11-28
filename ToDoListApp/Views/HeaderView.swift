//
//  HeaderView.swift
//  ToDoListApp
//
//  Created by Shrushti S Shetty on 28/11/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            //Header
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(Color.teal)
                    .rotationEffect(Angle(degrees: 15))
                
                VStack{
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 100)
                    
                    Text("PlanPal")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(Color(hue: 0.963, saturation: 0.633, brightness: 0.553))
                }
                .padding(.top, 30)
            }
            .frame(width: UIScreen.main.bounds.width * 3, height: 300)
            .offset(y: -100)
            
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
