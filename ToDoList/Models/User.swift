//
//  User.swift
//  ToDoList
//
//  Created by Farajah Ebenezar on 29/02/2024.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
