//
//  TextComponent.swift
//  SwiftUIComponents
//
//  Created by Gustavo Adolfo Cardona Quintero on 12/04/24.
//

import SwiftUI

struct TextComponent: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("SwiftUI")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(10)
                    .shadow(color: .gray, radius: 3, x: 2, y: 2)
                    .padding()
                
                Text("""
                        
                        - Descripción: El componente Text representa una vista que muestra texto en la interfaz de usuario. Puede contener una cadena de texto estática o una cadena de texto dinámica que se actualiza según el estado de la aplicación.
                        
                        Propiedades Principales:
                        1 - content
                        2 - font
                        3 - fontWeight
                        4 - foregroundColor
                        5 - multilineTextAlignment
                        6 - lineLimit
                        7 - minimumScaleFactor
                        8 - truncationMode
                        
                        """)
                .font(.headline)
                .foregroundColor(.black)
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                .padding()
                .multilineTextAlignment(.leading)
            }
        }
    }
}

struct TextComponent_Previews: PreviewProvider {
    static var previews: some View {
        TextComponent()
    }
}

