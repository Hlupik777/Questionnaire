//
//  AuthButtonView.swift
//  Questionnaire
//
//  Created by Сергей on 24/12/2019.
//  Copyright © 2019 digt. All rights reserved.
//

import SwiftUI

struct AuthButtonView: View {
    
    var width: CGFloat = 0.0
    var text: String = ""
    
    var body: some View {
        Button(action: {
            
        }) {
            Text(text)
            .foregroundColor(.white)
            .bold()
        }
        .frame(width: width - 48, height: 50)
        .background(Color.black)
        .border(Color.black, width: 1.5)
        .padding(.vertical, 5)
        .padding(.horizontal, 24)
    }
}
