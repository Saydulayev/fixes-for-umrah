//
//  ContentView.swift
//  umra
//
//  Created by Akhmed on 26.01.23.
//

import SwiftUI



struct ContentView: View {
    
    @EnvironmentObject var settings: UserSettings

    var body: some View {
        NavigationView {
            ZStack {
                Color.white
                    .edgesIgnoringSafeArea(.bottom)
                ScrollView {
                    VStack {
                        
                        VStack {
                            Divider()
                            NavigationLink(destination: Step1()) {
                                Image("image 1")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .imageCustomMidifier()
                            }
                            Text("title_ihram_screen", bundle: settings.bundle)
                                .titleTextMidifier()
                        }
                        
                        VStack {
                            Divider()
                            NavigationLink(destination: Step2()) {
                                Image("image 2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .imageCustomMidifier()
                            }
                            Text("title_round_kaaba_screen", bundle: settings.bundle)
                                .titleTextMidifier()
                        }
                        
                        VStack {
                            Divider()
                            NavigationLink(destination: Step3()) {
                                Image("image 3")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .imageCustomMidifier()
                            }
                            Text("title_place_ibrohim_stand_screen", bundle: settings.bundle)
                                .titleTextMidifier()
                        }
                        
                        VStack {
                            Divider()
                            NavigationLink(destination: Step4()) {
                                Image("image 4")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .imageCustomMidifier()
                            }
                            Text("title_water_zamzam_screen", bundle: settings.bundle)
                                .titleTextMidifier()
                        }
                        
                        VStack {
                            Divider()
                            NavigationLink(destination: Step5()) {
                                Image("image 5")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .imageCustomMidifier()
                            }
                            Text("title_black_stone_screen", bundle: settings.bundle)
                                .titleTextMidifier()
                        }
                        
                        VStack {
                            Divider()
                            NavigationLink(destination: Step6()) {
                                Image("image 6")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .imageCustomMidifier()
                            }
                            Text("title_safa_and_marva_screen", bundle: settings.bundle)
                                .titleTextMidifier()
                        }
                        
                        VStack {
                            Divider()
                            NavigationLink(destination: Step7()) {
                                Image("image 7")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .imageCustomMidifier()
                            }
                            Text("title_shave_head_screen", bundle: settings.bundle)
                                .titleTextMidifier()
                        }
                        
                        VStack {
                            Divider()
                            NavigationLink(destination: PDFViewWrapper()) {
                                Image("image 9")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .imageCustomMidifier()
                            }
                            Text("title_link_book_screen", bundle: settings.bundle)
                                .titleTextMidifier()
                            Divider()
                        }
                    }
                    Text("")
                        .navigationBarTitle("UMRA", displayMode: .inline)
                        .navigationBarItems(trailing:
                                                NavigationLink(destination: SettingsView()) {
                            Image(systemName: "gearshape")
                                .imageScale(.large)
                                .foregroundColor(.blue)
                        }
                        )
                    LanguageView(settings: settings)
                        .hidden()
                }
            }
        }       .accentColor(Color.green)
    }
}






















//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView().environmentObject(UserSettings())
//    }
//}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(UserSettings())
    }
}
