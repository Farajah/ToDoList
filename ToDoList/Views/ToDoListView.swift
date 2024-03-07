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
                        viewModel.showingNewItemView = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
                .sheet(isPresented: $viewModel.showingNewItemView) {
                    NewItemView(newItemPresented: $viewModel.showingNewItemView)
                }
            }
        }
    }
    
    struct ToDoListItemsView_Previews: PreviewProvider {
        static var previews: some View {
            ToDoListView(userId: "")
        }
    }
