//
//  MultilineTextView.swift
//  ToDoListApp
//
//  Created by Shrushti S Shetty on 28/11/23.
//

import SwiftUI

struct MultilineTextView: View {
    var text: String

       init(_ text: String) {
           self.text = text
       }

       var body: some View {
           GeometryReader { geometry in
               Text(text)
                   .font(.title2)
                   .minimumScaleFactor(0.5) // Adjust as needed
                   .lineLimit(nil)
                   .frame(width: geometry.size.width, alignment: .leading)
           }
       }
}

struct MultilineTextView_Previews: PreviewProvider {
    static var previews: some View {
        MultilineTextView("hye")
    }
}
