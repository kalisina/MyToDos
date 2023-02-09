//
//  ToDoFormViewModel.swift
//  MyToDos
//
//  Created by Triumph on 09/02/2023.
//

import Foundation

class ToDoFormViewModel: ObservableObject {
    @Published var name = ""
    @Published var completed = false
    var id: String?
    
    var updating: Bool {
        (id != nil)
    }
    
    var isDisabled: Bool {
        name.isEmpty
    }
    
    init() {}
    
    init(_ currentTodo: ToDo) {
        self.name = currentTodo.name
        self.completed = currentTodo.completed
        id = currentTodo.id
    }
}
