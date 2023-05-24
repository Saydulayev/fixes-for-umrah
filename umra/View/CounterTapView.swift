//
//  SwiftUIView.swift
//  umra
//
//  Created by Dokx Dig on 24.05.23.
//

import SwiftUI

struct CounterTapView: View {
    @EnvironmentObject var settings: UserSettings
    @State private var counter = 0
    
    var body: some View {
        VStack {
            HStack {
                Text("circle_string", bundle: settings.bundle)
                    .font(.largeTitle.bold())
                Text("\(counter)")
                    .font(.largeTitle.bold())
            }
            
            if counter == 7 {
                Text("Sa´y finished_string", bundle: settings.bundle)
                    .foregroundColor(.black)
                    .font(.title.bold())
                    .padding()
            }
            
            HStack(spacing: 20) {
                Button(action: {
                    incrementCounter()
                }) {
                    Text("add_string", bundle: settings.bundle)
                        .foregroundColor(.black)
                        .font(.system(size: 25))
                        .padding(20)
                        .background(
                            LinearGradient(
                                gradient: Gradient(colors: [.green, .gray]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .cornerRadius(20)
                        .shadow(color: Color.gray.opacity(0.4), radius: 10, x: 0, y: 10)
                }
                
                Button(action: {
                    decrementCounter()
                }) {
                    Text("reset_string", bundle: settings.bundle)
                        .foregroundColor(.black)
                        .font(.system(size: 25))
                        .padding(20)
                        .background(
                            LinearGradient(
                                gradient: Gradient(colors: [.red, .gray]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .cornerRadius(20)
                        .shadow(color: Color.gray.opacity(0.4), radius: 10, x: 0, y: 10)
                }
            }
            LanguageView(settings: settings)
                .hidden()
        }
    }
    
    
    func incrementCounter() {
        if counter < 7 {
            counter += 1
        }
    }
    
    func decrementCounter() {
        if counter > 0 {
            counter = 0
        }
    }
}

//struct SwiftUIView_Previews: PreviewProvider {
//    static var previews: some View {
//        CounterTapView()
//    }
//}
