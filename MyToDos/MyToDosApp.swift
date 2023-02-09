//
//  MyToDosApp.swift
//  MyToDos
//
//  Created by Triumph on 09/02/2023.
//

import SwiftUI

@main
struct MyToDosApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(DataStore())
        }
    }
}
