//
//  Step 4.swift
//  umra
//
//  Created by Akhmed on 26.01.23.
//

import SwiftUI

struct Step4: View {
    @EnvironmentObject var settings: UserSettings

    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.98108989, green: 0.9316333532, blue: 0.8719255924, alpha: 1))
                .edgesIgnoringSafeArea(.bottom)
        ScrollView {
                VStack {
                    Text("Drinking Zamzam water.", bundle: settings.bundle)
                    .font(.custom("Lato-Black", size: 26))
                    .foregroundColor(.black)
                    Group {
                        
                        Text("Zamzam text", bundle: settings.bundle)
                        
                    }
                    .font(.system(size: 20, weight: .light, design: .serif))
                    .italic()
                    .foregroundColor(.black)
                } .padding(.horizontal, 10)
            LanguageView(settings: settings)
                .hidden()
            }
        } 
    }
}
