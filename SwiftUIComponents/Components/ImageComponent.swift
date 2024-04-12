//
//  ImageComponent.swift
//  SwiftUIComponents
//
//  Created by Gustavo Adolfo Cardona Quintero on 12/04/24.
//

import SwiftUI

struct ImageComponent: View {
    @State private var definition = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Image("AppleImage.com-3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(20)
                    .shadow(color: .black, radius: 10, x: 0, y: 5)
                
                Text("""
            El componente Image representa una imagen en la interfaz de usuario de una aplicación.
            
            Propiedades Principales:
            
            1 - systemName / uiImage: Para cargar una imagen de sistema (como las disponibles en SF Symbols) o una imagen personalizada (UIImage).
            2 - resizable: Un modificador que permite que la imagen sea redimensionable.
            3 - aspectRatio: Un modificador que permite especificar la relación de aspecto de la imagen.
            4 - renderingMode: Un modificador que controla el modo de renderizado de la imagen.
            5 - foregroundColor: Un modificador que permite cambiar el color de la imagen.
            6 - clipShape: Un modificador que permite recortar la imagen con una forma específica.
            """)
                .font(.body)
                .padding()
            }
        }
    }
}

struct ImageComponent_Previews: PreviewProvider {
    static var previews: some View {
        ImageComponent()
    }
}

