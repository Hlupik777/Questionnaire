//
//  AuthImageView.swift
//  Questionnaire
//
//  Created by Сергей on 24/12/2019.
//  Copyright © 2019 digt. All rights reserved.
//

import SwiftUI

struct AuthImageView: View {
    var body: some View {
        HStack() {
            Spacer()
            
            Image("main")
                .resizable()
                .frame(width: 160, height: 160)
                .padding(.top, 30)
            
            Spacer()
        }
    }
}
