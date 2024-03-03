//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Farajah Ebenezar on 29/02/2024.
//

import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""

    
    init() {}
    
    func login() {
        guard validate() else {
            return
        }
        
        //Try Login
        Auth.auth().signIn(withEmail: email, password: password)
        
    
    }
    
    func validate() -> Bool{
        errorMessage = "" //Resets the login Function
        //Error Message for empty fields
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else{
            errorMessage = "Please fill in all fields"
            return false
        }
        
        //Error Message for valid email
        guard email.contains("@") && email.contains(".")else{
            errorMessage = "Please enter valid email"
            return false
        }
        return true
        
    }
}
