//
//  RegisterView.swift
//  ToDoList
//
//  Created by Farajah Ebenezar on 29/02/2024.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack {
            //Header
            HeaderView(title: "Register", subtitle: "Start Organizing todos", angle: -15, background: .red)
            
            Spacer()
        }
    }
    
    struct RegisterView_Previews: PreviewProvider {
        static var previews: some View {
            RegisterView()
        }
    }
}
