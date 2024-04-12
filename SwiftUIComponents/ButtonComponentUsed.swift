//
//  ButtonComponentUsed.swift
//  SwiftUIComponents
//
//  Created by Gustavo Adolfo Cardona Quintero on 12/04/24.
//

import SwiftUI

struct ButtonSelect: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(.title3, design: .rounded))
            .fontWeight(.bold)
            .foregroundColor(Color(white: 0.1))
            .padding(.horizontal, 30)
            .padding(.vertical, 10)
            .background(Color.white)
            .overlay(RoundedRectangle(cornerRadius: 1000)
            .stroke(Color.black, lineWidth: 1)
            )
            .clipShape(Capsule())
            .shadow(color: configuration.isPressed ? Color.black.opacity(0.5) : Color.clear, radius: 10, x: 0, y: 10)
            .scaleEffect(configuration.isPressed ? 0.96 : 1.0)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

struct ButtonSelect_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {}) {
            Text("Button")
        }
        .buttonStyle(ButtonSelect())
    }
}

