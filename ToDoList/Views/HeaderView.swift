//
//  HeaderView.swift
//  ToDoList
//
//  Created by Adil Emre Karayürek on 19.10.2023.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle:Double
    let background : Color
    
    var body: some View {
        // Header
        ZStack{
            RoundedRectangle(cornerRadius: 0).foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
                
            
            VStack{
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
                    .font(.system(size: 50))
                Text(subtitle)
                    .foregroundColor(Color.white)
                    .font(.system(size: 30))
            }
            .padding(.top,80 )
        }
        .frame(width: UIScreen.main.bounds.width * 3 ,height: 350)
        .offset(y: -150)
        //Login Form
       
        
        //Create Account
        Spacer()
    }
}

#Preview {
    HeaderView(title: "title", subtitle: "subtitle", angle: 15, background: .blue)
}
