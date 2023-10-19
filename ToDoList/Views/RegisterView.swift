//
//  RegisterView.swift
//  ToDoList
//
//  Created by Adil Emre Karayürek on 19.10.2023.
//

import SwiftUI

struct RegisterView: View {
   @StateObject var viewModel = RegisterViewViewModel()
    
    
    var body: some View {
        VStack{
            HeaderView(title: "Kayıt Ol", subtitle: "Düzene Hazır ol", angle: -15, background: .orange)
            
            Form{
                TextField("Tam İsim",text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Adresi",text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Şifre",text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Kayıt Ol", background: .orange, action: {})
                    .padding(.all,2)
            }
           
        }
    }
}

#Preview {
    RegisterView()
}
