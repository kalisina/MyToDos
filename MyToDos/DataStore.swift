//
//  DataStore.swift
//  MyToDos
//
//  Created by Triumph on 09/02/2023.
//

import Foundation

class DataStore: ObservableObject {
    @Published var toDos:[ToDo] = []
    
    init() {
        loadToDo()
    }
    
    func addToDo(_ toDo: ToDo) {
        
    }
    
    func updateToDo(_ toDo: ToDo) {
        
    }
    
    func deleteToDo(at indexSet: IndexSet) {
        
    }
    
    func loadToDo() {
        toDos = ToDo.sampleData
    }
    
    func saveToDos() {
        print("Saving toDos to file system eventually")
    }
}
