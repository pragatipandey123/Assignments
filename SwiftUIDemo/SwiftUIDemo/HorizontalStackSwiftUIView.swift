//
//  HorizontalStackSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Pragati Pandey on 15/03/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import SwiftUI

struct HorizontalStackSwiftUIView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 40.0) {
             Text("First Horizontal Stack Text")
                 .padding(20.0)
                 .lineLimit(nil)
             Text("Second Horizontal Stack Text")
                 .padding(10.0)
                 .lineLimit(nil)
         }
         .background(Color.pink)
         .padding(.all, 20.0)
    }
}

struct HorizontalStackSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalStackSwiftUIView()
    }
}
