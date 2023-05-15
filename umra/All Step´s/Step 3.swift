//
//  Step 3.swift
//  umra
//
//  Created by Akhmed on 26.01.23.
//

import SwiftUI

struct Step3: View {
    @EnvironmentObject var settings: UserSettings

    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.98108989, green: 0.9316333532, blue: 0.8719255924, alpha: 1))
                .edgesIgnoringSafeArea(.bottom)
        ScrollView {
                VStack {
                    Text("Prayer after Tawaf of Kaaba.", bundle: settings.bundle)
                    .font(.custom("Lato-Black", size: 26))
                    .foregroundColor(.black)
                    Group {
                        
                        Text("Having completed seven circuits around the Kaaba", bundle: settings.bundle)
                        
                        Text("""
                        وَاتَّخِذُوا مِن مَّقَامِ إِبْرَاهِيمَ مُصَلًّ
                        """)
                        .customTextforSteps()
                        
                        PlayerView(fileName: "13")
                            .padding()
                        
                    }
                    .font(.system(size: 20, weight: .light, design: .serif))
                    .italic()
                    .foregroundColor(.black)
                    
                    Group {
                        Text("Place of standing of Ibrahim", bundle: settings.bundle)
    
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
