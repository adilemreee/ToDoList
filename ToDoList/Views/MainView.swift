//
//  ContentView.swift
//  ToDoList
//
//  Created by Adil Emre Karayürek on 19.10.2023.
//

import SwiftUI

struct MainView: View {
   @StateObject var viewModel = MainViewViewModel()
    
    
    var body: some View {
        NavigationView {
           LoginView()
        }
    }
}

#Preview {
    MainView()
}
