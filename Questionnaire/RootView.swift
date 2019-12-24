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
                    HStack() {
                        Spacer()
                        Image("main")
                            .resizable()
                            .frame(width: 180, height: 180)
                            .padding(.top, 30)
                            .padding(.bottom, 8)
                        Spacer()
                    }
                    Text("Опросник")
                        .font(.system(size: 42))
                    VStack() {
                        TextField("login", text: self.$login)
                            .textFieldStyle(PlainTextFieldStyle())
                            .padding(.horizontal, 16)
                    }
                    .frame(height: 50)
                    .background(Color.white)
                    .border(Color.black, width: 1.5)
                    .padding(.vertical, 5)
                    .padding(.horizontal, 24)
                    
                    VStack() {
                        SecureField("password", text: self.$password)
                            .textFieldStyle(PlainTextFieldStyle())
                            .padding(.horizontal, 16)
                    }
                    .frame(height: 50)
                    .background(Color.white)
                    .border(Color.black, width: 1.5)
                    .padding(.vertical, 5)
                    .padding(.horizontal, 24)
                    
                    Button(action: {
                        
                    }) {
                        Text("Sign In")
                            .foregroundColor(.white)
                            .bold()
                    }
                    .frame(width: geometry.size.width - 48, height: 50)
                    .background(Color.black)
                    .border(Color.black, width: 1.5)
                    .padding(.vertical, 5)
                    .padding(.horizontal, 24)
                    
                    HStack() {
                        VStack() {
                            Divider().background(Color.black)
                        }
                        .padding(.leading, 24)
                        Text("Or")
                        VStack() {
                            Divider().background(Color.black)
                        }
                        .padding(.trailing, 24)
                    }
                    
                    Button(action: {
                        
                    }) {
                        Text("Register")
                        .foregroundColor(.white)
                        .bold()
                    }
                    .frame(width: geometry.size.width - 48, height: 50)
                    .background(Color.black)
                    .border(Color.black, width: 1.5)
                    .padding(.vertical, 5)
                    .padding(.horizontal, 24)
                }
            }
            .frame(width: geometry.size.width,
                   height: geometry.size.height)
                .background(Color.bgColor())
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
