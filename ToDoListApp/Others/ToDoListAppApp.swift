//
//  ToDoListAppApp.swift
//  ToDoListApp
//
//  Created by Shrushti S Shetty on 27/11/23.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListAppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
