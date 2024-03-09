//
//  ToDoListItemsView.swift
//  ToDoList
////  Created by Farajah Ebenezar on 29/02/2024.
//

import FirebaseFirestoreSwift
import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    @FirestoreQuery var items: [ToDoListItem]
    
    init(userId: String) {
        // users/<id>/todos/<entries>
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos"
        )
    }
        var body: some View {
            NavigationView {
                VStack {
                    List(items) {
                        item in
                        ToDoListItemView(item: item)
                            .swipeActions{
                                Button("Delete") {
                                    viewModel.delete(id: item.id)
                                }
                                .backgroundStyle(Color.red)
                            }
                    }
                    .listStyle(PlainListStyle())
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
            ToDoListView(userId: "qvZslLHbLPMAjU3pG9z1DTIoas53")
        }
    }
