//
//  CustomMidifier.swift
//  umra
//
//  Created by Akhmed on 26.01.23.
//

import SwiftUI

//MARK: ImageCustomMidifier

struct ImageCustomMidifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(color: Color.black.opacity(0.5), radius: 10, x: 10, y: 10)
            .padding(25)
    }
}

extension View {
    func imageCustomMidifier() -> some View {
        self.modifier(ImageCustomMidifier())
    }
}

//MARK: TextCustomMidifier

struct CustomText: View {
    var name: String
    var body: some View {
      Text(name)
            .font(.custom("Lato-Black", size: 38))
            .foregroundColor(Color.init(#colorLiteral(red: 0.5188618898, green: 0.2738361061, blue: 0.2221542895, alpha: 1)))
            .multilineTextAlignment(.center)
            .padding(10)

    }
}
//MARK: CustomTextforSteps

struct CustomTextforSteps: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.gray]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .font(.custom("Lato-Black", size: 34))
            .lineSpacing(15)
    }
}

extension View {
    func customTextforSteps() -> some View {
        self.modifier(CustomTextforSteps())
    }
}


struct TitleTextMidifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Lato-Black", size: 38))
            .foregroundColor(Color.init(#colorLiteral(red: 0.5188618898, green: 0.2738361061, blue: 0.2221542895, alpha: 1)))
            .multilineTextAlignment(.center)
            .padding(10)
    }
}

extension View {
    func titleTextMidifier() -> some View {
        self.modifier(TitleTextMidifier())
    }
}
