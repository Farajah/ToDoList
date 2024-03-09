//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Farajah Ebenezar on 29/02/2024.
//

import Foundation

///ViewModel for list of items view
///Primary tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    init() {}
    
    func delete(id: String) {
        
    }
}

