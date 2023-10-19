//
//  MainViewViewModel.swift
//  ToDoList
//
//  Created by Adil Emre Karayürek on 19.10.2023.
//

import Foundation
import FirebaseAuth


class MainViewViewModel : ObservableObject {
    @Published var currentUserId :String = ""
    
    init(){
        let handler = Auth.auth().addStateDidChangeListener(<#T##listener: (Auth, User?) -> Void##(Auth, User?) -> Void#>)
    }
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
