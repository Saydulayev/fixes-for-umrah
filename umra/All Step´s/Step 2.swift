//
//  Step 2.swift
//  umra
//
//  Created by Akhmed on 26.01.23.
//

import SwiftUI

struct Step2: View {
    @EnvironmentObject var settings: UserSettings

    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.98108989, green: 0.9316333532, blue: 0.8719255924, alpha: 1))
                .edgesIgnoringSafeArea(.bottom)
        ScrollView {
                VStack {
                        Text("Kaaba text1", bundle: settings.bundle)
                        .font(.custom("Lato-Black", size: 26))
                        .foregroundColor(.black)
                        Group {
                            
                            
                            Text("Kaaba text2", bundle: settings.bundle)
                            
                            
                            Text("الله أكبر‎")
                                .customTextforSteps()
                            
                            PlayerView(fileName: "6")
                                .padding()
                            
                            Text("Kaaba text3", bundle: settings.bundle)
                            
                            Text("""
        رَبَّنَا آتِنَا فِي الدُّنْيَا حَسَنَةً وَفِي الْآخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ
        """)
                            .customTextforSteps()
                            
                            PlayerView(fileName: "7")
                                .padding()
                            
                            Text("Kaaba text4", bundle: settings.bundle)
                            

                            
                            
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

