//
//  AuthTextFieldView.swift
//  Questionnaire
//
//  Created by Сергей on 24/12/2019.
//  Copyright © 2019 digt. All rights reserved.
//

import SwiftUI

struct AuthTextFieldView: View {
    
    @Binding var field: String
    
    var placeholder: String = ""
    var isSecure: Bool = false
    
    var body: some View {
        VStack() {
            if isSecure {
                SecureField(placeholder, text: self.$field)
                    .textFieldStyle(PlainTextFieldStyle())
                    .padding(.horizontal, 16)
            } else {
                TextField(placeholder, text: self.$field)
                    .textFieldStyle(PlainTextFieldStyle())
                    .padding(.horizontal, 16)
            }
        }
        .frame(height: 50)
        .background(Color.white)
        .border(Color.black, width: 1.5)
        .padding(.vertical, 5)
        .padding(.horizontal, 24)
    }
}
