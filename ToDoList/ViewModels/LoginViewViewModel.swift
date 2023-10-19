//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Adil Emre Karayürek on 19.10.2023.
//

import Foundation
import FirebaseCore
import FirebaseAuth

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init(){}
    
    func login() {
        guard validate() else {
            return
        }
            //try to login
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
  private func validate() -> Bool {
      guard !email.trimmingCharacters(in: .whitespaces).isEmpty , !password.trimmingCharacters(in: .whitespaces).isEmpty else{
          
          errorMessage = "Lütfen Boş Bırakmayın!"
          
          return false
      }
      guard !email.contains("@") && email.contains(".") else {
          errorMessage = "Lütfen Email giriniz!"
          return false
      }
      return true
    }
}
