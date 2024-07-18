//
//  ContentView.swift
//  Navigation
//
//  Created by Scholar on 7/12/24.
//

import SwiftUI

private var colorsArray: [Color] = [.red, .orange, .yellow, .green, .teal, .blue, .purple]

struct ContentView: View {
    var body: some View {
        NavigationStack{
            List (colorsArray, id: \.self){ individualColor in
                NavigationLink(destination: individualColor .ignoresSafeArea()){
                    Text(individualColor.description)
                }
            }
            
            /*
             Spacer()
             Text("This is the first screen")
             Spacer()
             
             .toolbar{
             NavigationLink(
             destination: Screen2()){
             Text("Click Me!")
             .navigationTitle("Home")
             }
             }*/
            
            /*NavigationLink(destination: Screen2()){
             Text("Go to Screen 2")
             .navigationTitle("Home")
             }
             Spacer() */
            
            /*NavigationLink(destination: Text("You arrived to the second view!")
             .foregroundColor(.pink)) {
             Text("Click Me!")
             }
             Spacer()
             NavigationLink(destination: Text("Welcome to the third screen!")
             .font(.title)){
             Text("No, Click Me Instead!")
             }
             Spacer()*/
            .navigationTitle("Cool Colors")
            }
        }
}

#Preview {
    ContentView()
}
