
//
//  LoginView.swift
//  ToDoList
//
//  Created by Adil Emre Karayürek on 19.10.2023.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        
     
         
            NavigationView{
                VStack{
                    HeaderView(title: "To Do List", subtitle: "Things Done", angle: 15, background: .pink)
                        .offset(y:-50)
                    
                    Form {
                        if !viewModel.errorMessage.isEmpty {
                            Text(viewModel.errorMessage)
                                .foregroundColor(Color.red)
                        }
                        
                        TextField("Email Adresi",text:$viewModel.email)
                            .textFieldStyle(DefaultTextFieldStyle())
                            .autocapitalization(.none)
                           
                        SecureField("Şifre",text:$viewModel.password)
                            .textFieldStyle(DefaultTextFieldStyle())
                            .autocorrectionDisabled()
                           
                                            
                        
                        TLButton(title: "Giriş Yap", background: .blue){
                            viewModel.login()
                        }
                    }
                    
                   
                    .offset(y:-70)
                   // .padding(.horizontal,)
                    .padding(.vertical,-20)
                    
                    //create account
                    VStack{
                        Text("Burada yeni misiniz?")
                        
                        NavigationLink("Hesap Oluştur", destination: RegisterView())
                    }
                    .padding(.bottom,10)
                    
                    Spacer()
                }
            }
        }
        
    }

#Preview {
    LoginView()
}
