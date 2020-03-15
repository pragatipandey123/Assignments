//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Pragati Pandey on 15/03/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                
                NavigationLink(destination: ImageSwiftUIView()){
                    Text("Image")
                }
                NavigationLink(destination:TextSwiftUIView()){
                    Text("Text")
                }
                
                NavigationLink(destination:VerticalStackViewSwiftUIView()){
                    Text("VerticalStackView")
                }
                
            NavigationLink(destination:HorizontalStackSwiftUIView()){
                Text("HorizontalStackView")
                }
                
            NavigationLink(destination:ButtonSwiftUIView()){
                Text("Button")
                }
                
            NavigationLink(destination:PickerSwiftUIView()){
                Text("Picker")
                }
                
                
                    
            }.navigationBarTitle(Text("SwiftUI Assignment"))
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

