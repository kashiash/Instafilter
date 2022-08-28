//
//  ContentView.swift
//  Shared
//
//  Created by Jacek Kosinski U on 28/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showConfirmation = false
    @State private var backgroundColor = Color.white
    
    
    
    var body: some View {
        Text("Pies wam morde lizał")
            .frame(width: 300, height: 300)
            .background(backgroundColor)
            .onTapGesture {
                showConfirmation = true
            }
            .confirmationDialog("Change bacground",isPresented: $showConfirmation){
                Button("Red") {backgroundColor = .red}
                Button("Green") {backgroundColor = .green}
                Button("Blue") {backgroundColor = .blue}
                Button("Teal") {backgroundColor = .teal}
                Button("Reset") {backgroundColor = .white}
                Button("Cancel") {}
            } message:{
                Text("Select a new color")
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
