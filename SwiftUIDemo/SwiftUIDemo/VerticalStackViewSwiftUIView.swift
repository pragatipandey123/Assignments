//
//  VerticalStackViewSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Pragati Pandey on 15/03/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import SwiftUI

struct VerticalStackViewSwiftUIView: View {
    var body: some View {
        VStack {
            Text("First Vertical Stack Text")
                .padding(.all, 10.0)
                .lineLimit(nil)
            Text("Second Vertical Stack Text")
                .padding(.all, 20.0)
                .lineLimit(nil)
            Text("Third Vertical Stack Text")
                .padding(.all, 30.0)
                .lineLimit(nil)
            Text("Fourth Vertical Stack Text")
                .padding(.all, 40.0)
                .lineLimit(nil)
            Text("Fifth Vertical Stack Text")
                .padding(.all, 50.0)
                .lineLimit(nil)
            Text("Sixth Vertical Stack Text")
                .padding(.all, 60.0)
                .lineLimit(nil)
        }.background(Color.pink)
    }
}

struct VerticalStackViewSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalStackViewSwiftUIView()
    }
}
