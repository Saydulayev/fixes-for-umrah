//
//  ContentView.swift
//  umra
//
//  Created by Akhmed on 26.01.23.
//

import SwiftUI
import WebKit


struct ContentView: View {
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
                            CustomText(name: "Ихрам")
                        }
                        
                        VStack {
                            Divider()
                            NavigationLink(destination: Step2()) {
                                Image("image 2")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .imageCustomMidifier()
                            }
                            CustomText(name: "Обход Каабы")
                        }
                        
                        VStack {
                            Divider()
                            NavigationLink(destination: Step3()) {
                                Image("image 3")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .imageCustomMidifier()
                            }
                            CustomText(name: "Место стояние Ибрахима")
                        }
                        
                        VStack {
                            Divider()
                            NavigationLink(destination: Step4()) {
                                Image("image 4")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .imageCustomMidifier()
                            }
                            CustomText(name: "Питье воды Замзам")
                        }
                        
                        VStack {
                            Divider()
                            NavigationLink(destination: Step5()) {
                                Image("image 5")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .imageCustomMidifier()
                            }
                            CustomText(name: "Возврат к Черному камню")
                        }
                        
                        VStack {
                            Divider()
                            NavigationLink(destination: Step6()) {
                                Image("image 6")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .imageCustomMidifier()
                            }
                            CustomText(name: "Сафа и Марва")
                        }
                        
                        VStack {
                            Divider()
                            NavigationLink(destination: Step7()) {
                                Image("image 7")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .imageCustomMidifier()
                            }
                            CustomText(name: "Бритье головы")
                        }
                        
                        VStack {
                            Divider()
                            NavigationLink(destination: PDFView()) {
                                Image("image 9")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .imageCustomMidifier()
                            }
                            CustomText(name: "Ссылка на книгу")
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
        ContentView()
    }
}
