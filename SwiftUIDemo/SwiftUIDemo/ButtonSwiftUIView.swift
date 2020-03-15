//
//  ButtonSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Pragati Pandey on 15/03/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import SwiftUI

struct ButtonSwiftUIView: View {
    var body: some View {
                Button(action: {}, label: {
                    Text("SwiftUI Button")
                        .foregroundColor(.black)
                })
                    .padding(.all, 30.0)
                    .frame(width: 200.0)
                    .background(Color.orange)
                    .cornerRadius(20)}
}

struct ButtonSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSwiftUIView()
    }
}
