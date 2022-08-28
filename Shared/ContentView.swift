//
//  ContentView.swift
//  Shared
//
//  Created by Jacek Kosinski U on 28/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var blurAmount = 0.0{
        didSet {
            print("New value is \(blurAmount)")
        }
    }
    
    var body: some View {
        VStack{
            Text("Hello, World!")
                    .blur(radius: blurAmount)

                Slider(value: $blurAmount, in: 0...20)
                .onChange(of: blurAmount){newValue in
                    print("New value is \(newValue)")
                }

                Button("Random Blur") {
                    blurAmount = Double.random(in: 0...20)
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
