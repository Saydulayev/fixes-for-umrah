//
//  Step 5.swift
//  umra
//
//  Created by Akhmed on 26.01.23.
//

import SwiftUI

struct Step5: View {
    @EnvironmentObject var settings: UserSettings

    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.98108989, green: 0.9316333532, blue: 0.8719255924, alpha: 1))
                .edgesIgnoringSafeArea(.bottom)
        ScrollView {
                VStack {
                    Text("Return to the Black Stone.", bundle: settings.bundle)
                    .font(.custom("Lato-Black", size: 26))
                    .foregroundColor(.black)
                    Group {
                        
                        Text("Return to the Black Stone, recite the Takbir.", bundle: settings.bundle)
                        Spacer()
                        
                        Text("Allah is great.", bundle: settings.bundle)
                        Text("الله أكبر‎")
                            .customTextforSteps()
                        
                        PlayerView(fileName: "6")
                            .padding()
                    
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

