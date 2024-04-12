//
//  ListComponent.swift
//  SwiftUIComponents
//
//  Created by Gustavo Adolfo Cardona Quintero on 12/04/24.
//

import SwiftUI

struct ListComponent: Identifiable {
    var id = UUID()
    var title: String
    var description: String
}

struct ListComponentView: View {
    @State private var definition: String = ""
    
    let items: [ListComponent] = [
        ListComponent(title: "content", description: "Un cierre (closure) que genera el contenido de la lista. Puede ser una variedad de elementos estáticos o dinámicos."),
        ListComponent(title: "id", description: "Un identificador único para cada elemento de la lista, que permite que SwiftUI realice actualizaciones eficientes cuando la lista cambia."),
        ListComponent(title: "style", description: "El estilo de la lista, que puede ser predeterminado, agrupado o una lista personalizada."),
        ListComponent(title: "listStyle()", description: "Establece el estilo de la lista como GroupedListStyle() "),
        ListComponent(title: "background", description: " Establece el color de fondo de la lista."),
        ListComponent(title: "cornerRadius", description: "Establece el radio de las esquinas de la lista como"),
        ListComponent(title: "shadow", description: "Agrega una sombra a la lista con un radio."),
        ListComponent(title: "onDelete()", description: " Permite especificar un cierre de acción para manejar la eliminación de elementos de la lista."),
        ListComponent(title: "onMove()", description: "Permite especificar un cierre de acción para manejar el movimiento de elementos dentro de la lista."),
        ListComponent(title: "onInsertion()", description: "Permite especificar un cierre de acción para manejar la inserción de elementos en la lista."),
        ListComponent(title: "onDeleteCommand()", description: " Permite especificar un cierre de acción para manejar el comando de eliminación (por ejemplo, presionar la tecla Eliminar en un teclado) en la lista."),
        ListComponent(title: "onMoveCommand()", description: "Permite especificar un cierre de acción para manejar el comando de movimiento (por ejemplo, presionar las teclas de flecha arriba/abajo en un teclado) en la lista.")
    ]
    
    var body: some View {
        NavigationView {
            VStack() {
                Text("""
                 El componente List representa una vista que muestra una lista de elementos en la interfaz de usuario de una aplicación. Cada elemento de la lista puede ser personalizado y puede contener cualquier contenido compatible con SwiftUI.
                """)
                .padding()
                .font(.body)
                
                List(items) { item in
                    VStack(alignment: .leading) {
                        Text(item.title)
                            .font(.title)
                        Text(item.description)
                            .font(.subheadline)
                            .foregroundColor(.white)
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading )
                    .listRowInsets(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
                    .background(Color.gray)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                }
                .listStyle(GroupedListStyle())
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 5)
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListComponentView()
    }
}
