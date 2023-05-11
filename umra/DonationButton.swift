//
//  DonateButton.swift
//  umra
//
//  Created by Akhmed on 02.02.23.
//

import SwiftUI
import WebKit

struct CloseButton: View {
    
    @Binding var showDestinationView: Bool
    
    var body: some View {
        VStack {
            PayPalView()
            
            Button(action: {
                self.showDestinationView = false
            }) {
                HStack {
                    Image(systemName: "xmark.square")
                    Text("Закрыть")
                } .foregroundColor(.green)
            }
        }
    }
}

struct DonationButton: View {
    
    @State private var showDestinationView = false
    @EnvironmentObject var settings: UserSettings




    
    var body: some View {
        ZStack {
            VStack {
                Button(action: {
                    self.showDestinationView.toggle()
                }) {
                    Text("text_button_support_string", bundle: settings.bundle)
                        .foregroundColor(.blue)
                }
               
                    
                if showDestinationView {
                    CloseButton(showDestinationView: $showDestinationView)
                }
            }
            .sheet(isPresented: $showDestinationView) {
                CloseButton(showDestinationView: $showDestinationView)
            }
            LanguageView(settings: settings)
                .hidden()
        }
    }
}



//struct DonationButton_Previews: PreviewProvider {
//    static var previews: some View {
//        DonationButton().environmentObject(UserSettings())
//    }
//}

