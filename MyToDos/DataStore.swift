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
        toDos.append(toDo)
    }
    
    func updateToDo(_ toDo: ToDo) {
        guard let index = toDos.firstIndex(where: { $0.id == toDo.id }) else { return }
        toDos[index] = toDo
    }
    
    func deleteToDo(at indexSet: IndexSet) {
        toDos.remove(atOffsets: indexSet)
    }
    
    func loadToDo() {
        toDos = ToDo.sampleData
    }
    
    func saveToDos() {
        print("Saving toDos to file system eventually")
    }
}
