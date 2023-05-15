//
//  Step 6.swift
//  umra
//
//  Created by Akhmed on 26.01.23.
//

import SwiftUI

struct Step6: View {
    @EnvironmentObject var settings: UserSettings

    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.98108989, green: 0.9316333532, blue: 0.8719255924, alpha: 1))
                .edgesIgnoringSafeArea(.bottom)
        ScrollView {
                VStack {
                    Text("Safa and Marwa", bundle: settings.bundle)
                    .font(.custom("Lato-Black", size: 26))
                    .foregroundColor(.black)
                    Group {
                        
                        Text("Head towards the hill of Safa", bundle: settings.bundle)
                        Text("""
                        إِنَّ الصَّفَا وَالْمَرْوَةَ مِنْ شَعَائِرِ اللهِ ۖ فَمَنْ حَجَّ الْبَيْتَ أَوِ اعْتَمَرَ فَلَا جُنَاحَ عَلَيْهِ أَنْ يَطَّوَّفَ بِهِمَا ۚ وَمَنْ تَطَوَّعَ خَيْرًا فَإِنَّ اللهَ شَاكِرٌ عَلِيمٌ
                        """)
                        .customTextforSteps()
                        
                        PlayerView(fileName: "8")
                            .padding()
                        
                        Text("Surah Al-Baqarah, verse 158.", bundle: settings.bundle)
                        
                        Text("""
نَبْدَأُ بِمَا بَدَأَ اللهُ بِهِ
""")
                        .customTextforSteps()
                        
                        PlayerView(fileName: "9")
                            .padding()
                        
                        Text("We begin with that string", bundle: settings.bundle)
                    }
                    .font(.system(size: 20, weight: .light, design: .serif))
                    .italic()
                    .foregroundColor(.black)
                    
                    Group {
                        Text("""
                        اَلله أَكْبَرُ الله أَكْبَرُ الله اَكْبَرُ، لٰا إِلَهَ إِلَّا اللهُ وَحْدَهُ لٰا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَ لَهُ الْحَمْدُ، يُحْيِي وَ يُمِيتُ ، وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ، لَا إِلٰهَ إِلَّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، أَنْجَزَ وَعْدَهُ، وَنَصَرَ عَبْدَهُ، وَهَزَمَ الْأَحْزَابَ وَحْدَهُ.
                        """)
                        .customTextforSteps()
                        
                        PlayerView(fileName: "10")
                            .padding()
                        
                        Text("Remembrance of Allah during the Sa'i of Safa and Marwa.", bundle: settings.bundle)
                        
                        Text("""
                        رَبِّ اغْفِرْ وَ ارْحَمْ، إِنَّكَ أَنْتَ الْأَعَزُّ الْاَكْرَمُ.
                        """)
                        .customTextforSteps()
                        
                        PlayerView(fileName: "11")
                            .padding()
                        
                        Text("Du'a during the Sa'i ritual of Safa and Marwa.", bundle: settings.bundle)
                        
                        Text("""
                        اَللَّهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَ سَلِّمْ ، اَللَّهُمَّ إِنِّي أَسْأَلُكَ مِنْ فَضْلِكَ.
                        """)
                        .customTextforSteps()
                        
                        PlayerView(fileName: "12")
                            .padding()
                        
                        Text("Du'a upon exiting the Sacred Mosque.", bundle: settings.bundle)
                        
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

