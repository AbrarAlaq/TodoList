//
//  TodoListApp.swift
//  TodoList
//
//  Created by ابرار on 05/11/1442 AH.
//

import SwiftUI

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }.environmentObject(listViewModel)
       
        }
    }
}
