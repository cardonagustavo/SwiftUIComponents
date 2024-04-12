//
//  NavigationApp.swift
//  SwiftUIComponents
//
//  Created by Gustavo Adolfo Cardona Quintero on 12/04/24.
//

import SwiftUI

@main
struct NavigationApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}


/*
 Claro, vamos a analizar cada parte en detalle:

 ```swift
 @main
 struct NavigationApp: App {
 ```
 1. `@main`: Este es un decorador utilizado en Swift 5.3 y versiones posteriores para marcar una estructura como el punto de entrada principal de la aplicación. En este caso, `NavigationApp` es la estructura que se utilizará como punto de inicio cuando se ejecute la aplicación.

 2. `struct NavigationApp: App {`: Aquí se define una estructura llamada `NavigationApp` que conforma al protocolo `App`. El protocolo `App` es proporcionado por SwiftUI y se utiliza para definir la aplicación principal.

 ```swift
 let persistenceController = PersistenceController.shared
 ```
 3. `let persistenceController = PersistenceController.shared`: Esto declara una constante llamada `persistenceController` y la inicializa con una instancia compartida de `PersistenceController`. Esto sugiere que `PersistenceController` es una clase o estructura que gestiona la persistencia de datos en la aplicación.

 ```swift
 var body: some Scene {
 ```
 4. `var body: some Scene {`: Esta es una propiedad calculada que devuelve un objeto de escena (`Scene`). Una escena es una colección de vistas que representan el estado actual de tu aplicación. En este caso, estás utilizando una sintaxis abreviada de propiedad para definir la propiedad `body`. Esta propiedad es la que describe cómo se presenta la aplicación.

 ```swift
 WindowGroup {
     ContentView()
         .environment(\.managedObjectContext, persistenceController.container.viewContext)
 }
 ```
 5. `WindowGroup`: Esta es una vista especializada proporcionada por SwiftUI que representa la ventana principal de la aplicación. Es el contenedor principal para el contenido de la interfaz de usuario de la aplicación. Todo lo que coloques dentro de `WindowGroup` se mostrará en la ventana principal de la aplicación.

 6. `ContentView()`: Aquí estás creando una instancia de la vista `ContentView` y colocándola dentro de `WindowGroup`. `ContentView` es la vista principal de tu aplicación, por lo que todo lo que se coloque dentro de `ContentView` se mostrará en la ventana principal de la aplicación cuando se inicie.

 ```swift
 .environment(\.managedObjectContext, persistenceController.container.viewContext)
 ```
 7. `.environment(\.managedObjectContext, persistenceController.container.viewContext)`: Esto establece el contexto de objetos administrados (`managedObjectContext`) del entorno de la vista `ContentView`. Parece que `persistenceController.container.viewContext` proporciona el contexto de objetos administrados necesario para la gestión de datos en la aplicación.

 En resumen, este bloque de código define la estructura principal de tu aplicación SwiftUI. `NavigationApp` se marca como el punto de entrada principal de la aplicación (`@main`), conforma al protocolo `App`, y define cómo se presenta la aplicación utilizando `WindowGroup`, con `ContentView` como la vista principal que se mostrará en la ventana principal de la aplicación. Además, se configura el contexto de objetos administrados para la vista principal.
 */
