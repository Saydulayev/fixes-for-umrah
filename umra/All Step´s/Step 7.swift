//
//  Step 7.swift
//  umra
//
//  Created by Akhmed on 26.01.23.
//

import SwiftUI

struct Step7: View {
    @EnvironmentObject var settings: UserSettings

    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.98108989, green: 0.9316333532, blue: 0.8719255924, alpha: 1))
                .edgesIgnoringSafeArea(.bottom)
        ScrollView {
                VStack {
                    Text("Shaving the head string", bundle: settings.bundle)
                    .font(.custom("Lato-Black", size: 26))
                    .foregroundColor(.black)
                    Group {
                        
                        Text("Men shorten or shave their hair.", bundle: settings.bundle)
                        Text("Du'a at the end.", bundle: settings.bundle)
                        
                        Text("""
    
     ⵈ━══════╗◊╔══════━ⵈ
    """)
                        
                        
                    }
                    .font(.system(size: 20, weight: .light, design: .serif))
                    .italic()
                    .foregroundColor(.black)
                } .padding(10)
            LanguageView(settings: settings)
                .hidden()
            }
        } 
    }
}
