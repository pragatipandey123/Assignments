//
//  ImageSwiftUI.swift
//  SwiftUIDemo
//
//  Created by Pragati Pandey on 15/03/20.
//  Copyright © 2020 PragatiPandey. All rights reserved.
//

import SwiftUI

struct ImageSwiftUIView: View {
    var body: some View {
        Image("ghost")
        .resizable()
            .frame(width: 200, height: 150)
    }
}

struct ImageSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        ImageSwiftUIView()
    }
}
