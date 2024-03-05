//
//  ToDoListItemsView.swift
//  ToDoList
////  Created by Farajah Ebenezar on 29/02/2024.
//

import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    
    private let userId: String
    init(userId: String) {
        self.userId = userId
    }
        var body: some View {
            NavigationView {
                VStack {
                }
                .navigationTitle("To Do List")
                .toolbar {
                    Button {
                        //Action
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
    
    struct ToDoListItemsView_Previews: PreviewProvider {
        static var previews: some View {
            ToDoListView(userId: "")
        }
    }
