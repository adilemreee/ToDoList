//
//  User.swift
//  ToDoList
//
//  Created by Adil Emre Karayürek on 19.10.2023.
//

import Foundation


struct User: Codable{
    let id : String
    let name : String
    let email :String
    let joined :TimeInterval
}

