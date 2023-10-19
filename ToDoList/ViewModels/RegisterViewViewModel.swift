//
//  RegisterViewViewModel.swift
//  ToDoList
//
//  Created by Adil Emre Karayürek on 19.10.2023.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class RegisterViewViewModel : ObservableObject {
    @Published var email = ""
    @Published var name = ""
    @Published var password = ""
    
    init(){}
    
    func register (){
        guard validate() else {
            return
        }
        Auth.auth().createUser(withEmail: email, password: password){ [weak self]
            result ,error in guard let userId = result?.user.uid else {
                return
            }
            self?.İnsertUserRecord(id: userId)
        }
    }
    
    private func İnsertUserRecord(id: String ){
        let newUser = User(id: id, name: name, email: email, joined: Date.timeIntervalSinceReferenceDate)
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(id).setData(newUser.asDictioanry())
    }
    
    private func validate() -> Bool {
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        
        guard email.contains("@") && email.contains(".") else {
            return false
        }
        
        guard password.count >= 6 else {
            return false
        }
        return true
    }
}
