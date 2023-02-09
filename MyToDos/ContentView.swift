//
//  ContentView.swift
//  MyToDos
//
//  Created by Triumph on 09/02/2023.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var dataStore: DataStore
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(dataStore.toDos, id: \.self) { todo in
                    Button {
                        
                    } label: {
                        Text(todo.name)
                            .font(.title3)
                            .strikethrough(todo.completed)
                            .foregroundColor(todo.completed ? .green : Color(.label))
                    }
                }
                
            }
            .listStyle(.insetGrouped)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DataStore())
    }
}
