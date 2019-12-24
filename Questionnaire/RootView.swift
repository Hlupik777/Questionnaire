//
//  ContentView.swift
//  Questionnaire
//
//  Created by Сергей on 23/12/2019.
//  Copyright © 2019 digt. All rights reserved.
//

import SwiftUI

struct RootView: View {
    
    @State var login: String = ""
    @State var password: String = ""
    
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .center) {
                ScrollView {
                    AuthImageView()
                    
                    Text("Опросник")
                        .font(.system(size: 42))
                    
                    AuthTextFieldView(field: self.$login, placeholder: "login", isSecure: false)
                    AuthTextFieldView(field: self.$password, placeholder: "password", isSecure: true)
                    
                    AuthButtonView(width: geometry.size.width, text: "Sign In")
                    
                    AuthLineView(text: "Or")
                    
                    AuthButtonView(width: geometry.size.width, text: "Register")
                }
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
            .background(Color.bgColor())
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
