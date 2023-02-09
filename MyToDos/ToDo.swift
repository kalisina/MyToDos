//
//  ToDo.swift
//  MyToDos
//
//  Created by Triumph on 09/02/2023.
//

import Foundation

struct ToDo: Identifiable, Codable {
    var id: String = UUID().uuidString
    var name: String
    var completed: Bool = false
    
    static var sampleData:[ToDo] {
        [
            ToDo(name: "call the insurance"),
            ToDo(name: "change exhaust", completed: true)
        ]
    }
}
