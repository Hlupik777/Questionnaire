//
//  AuthLineView.swift
//  Questionnaire
//
//  Created by Сергей on 24/12/2019.
//  Copyright © 2019 digt. All rights reserved.
//

import SwiftUI

struct AuthLineView: View {
    
    var text: String = ""
    
    var body: some View {
        HStack() {
            VStack() {
                Divider().background(Color.black)
            }
            .padding(.leading, 24)
            
            Text(text)
            
            VStack() {
                Divider().background(Color.black)
            }
            .padding(.trailing, 24)
        }
    }
}

struct AuthLineView_Previews: PreviewProvider {
    static var previews: some View {
        AuthLineView()
    }
}
