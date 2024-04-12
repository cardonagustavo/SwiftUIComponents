//
//  SwiftUIComponentsApp.swift
//  SwiftUIComponents
//
//  Created by Gustavo Adolfo Cardona Quintero on 12/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                NavigationLink(destination: TextComponent()) {
                    Text("Text Component")
                }
                .buttonStyle(ButtonSelect())
                
                NavigationLink(destination: ButtonComponent()) {
                    Text("Button Component")
                }
                .buttonStyle(ButtonSelect())
                
                NavigationLink(destination: ImageComponent()) {
                    Text("Image Component")
                }
                .buttonStyle(ButtonSelect())
                
                NavigationLink(destination: ListComponentView()) {
                    Text("List Component")
                }
                .buttonStyle(ButtonSelect())
            }
            .padding()
            .navigationTitle("Components Navigation")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
