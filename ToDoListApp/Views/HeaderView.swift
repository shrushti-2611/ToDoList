//
//  HeaderView.swift
//  ToDoListApp
//
//  Created by Shrushti S Shetty on 28/11/23.
//

import SwiftUI

struct HeaderView: View {
    
    let angle: Double
    
    var body: some View {
        VStack {
            //Header
            ZStack {
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(Color(hex: 0xF6E1C3))
                    .rotationEffect(Angle(degrees: angle))
                
                VStack{
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 100)
                    
                    Text("PlanPal")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(Color(hex: 0xA84448))
                }
                .padding(.top, 30)
                .padding()
            }
            .frame(width: UIScreen.main.bounds.width * 3, height: 300)
            .offset(y: -100)
            
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(angle: 15)
    }
}

extension Color {
    init(hex: UInt32, alpha: Double = 1.0) {
        let red = Double((hex >> 16) & 0xFF) / 255.0
        let green = Double((hex >> 8) & 0xFF) / 255.0
        let blue = Double(hex & 0xFF) / 255.0
        self.init(red: red, green: green, blue: blue, opacity: alpha)
    }
}
