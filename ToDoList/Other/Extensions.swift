//
//  Extensions.swift
//  ToDoList
//
//  Created by Adil Emre Karayürek on 20.10.2023.
//

import Foundation


extension Encodable{
    func asDictioanry() -> [String:Any ] {
        guard let data = try? JSONEncoder().encode(self) else {
            return [:]
        }
        
        do{
            let json = try JSONSerialization.jsonObject(with: data) as? [String: Any]
            return json ?? [:]
        } catch {
            return [:]
        }
    }
}
