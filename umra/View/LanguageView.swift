//
//  LanguageView.swift
//  umra
//
//  Created by Akhmed on 06.05.23.
//

import SwiftUI

struct LanguageView: View {
    @StateObject var settings = UserSettings()
    @State private var showingActionSheet = false
    var body: some View {
        VStack {
            Button(action: {
                        showingActionSheet = true
                    }) {
                        Text("select_language_settings_string", bundle: settings.bundle)
                            .foregroundColor(.blue)
                    }
                    .actionSheet(isPresented: $showingActionSheet) {
                        ActionSheet(title: Text("Select a Language"), message: nil, buttons: [
                            .default(Text("Русский")) {
                                settings.lang = "ru"
                                UserDefaults.standard.set(settings.lang, forKey: "selectedLanguage")
                            },
                            .default(Text("English")) {
                                settings.lang = "en"
                                UserDefaults.standard.set(settings.lang, forKey: "selectedLanguage")
                            },
                            .default(Text("Deutsch")) {
                                settings.lang = "de"
                                UserDefaults.standard.set(settings.lang, forKey: "selectedLanguage")
                            },
                            .default(Text("Français")) {
                                settings.lang = "fr"
                                UserDefaults.standard.set(settings.lang, forKey: "selectedLanguage")
                            },
                            .cancel()
                        ])
                    }

        } 
        .onAppear {
            // Load the saved language from UserDefaults
            let savedLang = UserDefaults.standard.string(forKey: "selectedLanguage")
            if let lang = savedLang {
                settings.lang = lang
            }
        }
        .onDisappear {
            // Save the selected language to UserDefaults
            UserDefaults.standard.set(settings.lang, forKey: "selectedLanguage")
        }
        .environmentObject(settings)
    }
}

class UserSettings: ObservableObject {
    @Published var lang: String = "ru"
    
    var bundle: Bundle? {
        let b = Bundle.main.path(forResource: lang, ofType: "lproj")!
        return Bundle(path: b)
    }
}

struct LanguageView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageView()
    }
}
