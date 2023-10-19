//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Adil Emre Karayürek on 19.10.2023.
//
import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
