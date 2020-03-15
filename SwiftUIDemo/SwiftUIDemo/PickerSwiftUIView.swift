//
//  PickerSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Pragati Pandey on 15/03/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import SwiftUI

struct PickerSwiftUIView: View {
    
    @State private var pickerSelectedIndex = 0
    var arrayText = ["One","Two","Three", "Four", "Five", "Six"]
    
    var body: some View {
       VStack(spacing: 70.0) {
           Picker(selection:$pickerSelectedIndex, label: Text("Picker")) {
               ForEach(0..<arrayText.count) {
                   Text(self.arrayText[$0])
                    .multilineTextAlignment(.leading)
                       .frame(width: 900)
                       .padding(.all, 10.0) //.tag($0)
               }
               }.frame(width: UIScreen.main.bounds.width/2)
           
           Text("This is the SwifUI Picker")
       }
       .padding(.all, 70.0)
    }
}

struct PickerSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        PickerSwiftUIView()
    }
}
