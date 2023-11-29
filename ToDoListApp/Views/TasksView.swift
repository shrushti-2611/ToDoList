//
//  TasksView.swift
//  ToDoListApp
//
//  Created by Shrushti S Shetty on 29/11/23.
//

import SwiftUI

struct TasksView: View {
    var body: some View {
            VStack {
                HStack {
                    Text("Azimo")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding()
                VStack(alignment: .leading) {
                    Text("Today's UI Design for Azimo")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding(.bottom)
                    VStack(alignment: .leading) {
                        HStack {
                            Text("08:00 AM - 10:00 AM")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            Spacer()
                        }
                        .padding(.bottom)
                        HStack {
                            Text("10:00 AM - 01:00 PM")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            Spacer()
                        }
                        .padding(.bottom)
                        HStack {
                            Text("04:00 AM - 07:00 AM")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            Spacer()
                        }
                        .padding(.bottom)
                        HStack {
                            Text("Done")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            Spacer()
                        }
                        .padding(.bottom)
                        HStack {
                            Text("In Progress")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                            Spacer()
                        }
                    }
                }
                .padding()
                Spacer()
            }
        }
}

struct TasksView_Previews: PreviewProvider {
    static var previews: some View {
        TasksView()
    }
}
