//
//  ButtonComponent.swift
//  SwiftUIComponents
//
//  Created by Gustavo Adolfo Cardona Quintero on 12/04/24.
//

import SwiftUI

struct ContentView: View {
    @State private var counter = 0
    @State private var definition = ""
    
    var body: some View {
        VStack {
            Text("Contador: \(counter)")
                .font(.title)
                .padding()
            
            Button(action: {
                self.counter += 1
            }) {
                Text("Incrementar contador")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(10)
                    .shadow(color: .gray, radius: 3, x: 2, y: 2)
            }
            
            Text("""
            El componente Button representa un elemento interactivo en la interfaz de usuario que los usuarios pueden tocar para realizar acciones o desencadenar eventos en la aplicación.
            
            Propiedades Principales:
            1 - action: El cierre (closure) que se ejecutará cuando el botón sea activado.
            
            2 - label: El contenido del botón, que generalmente es otro componente SwiftUI como Text o una imagen.
            
            3 - isEnabled: Una bandera booleana que indica si el botón está habilitado o deshabilitado para interacciones del usuario.
            """)
                .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
