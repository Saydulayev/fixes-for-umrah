//
//  LanguageView.swift
//  umra
//
//  Created by Dokx Dig on 06.05.23.
//

import SwiftUI

struct LanguageView: View {
    @StateObject var settings = UserSettings()

    var body: some View {
        VStack {
//            Text("example", bundle: settings.bundle)
            Picker("Select language", selection: $settings.lang) {
                Text("Russian").tag("ru")
                Text("English").tag("en")
            }
            .pickerStyle(MenuPickerStyle())
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
