//
//  ContentView.swift
//  Movement
//
//  Created by Ramill Ibragimov on 20.05.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var x: CGFloat = 0
    
    var body: some View {
        ZStack {
            Rectangle()
                .strokeBorder(style: .init(lineWidth: 8, dash: [10], dashPhase: x))
                .onAppear { self.x -= 20 }
                .animation(Animation.linear.repeatForever(autoreverses: false))
            
            ZStack {
                Rectangle()
                    .strokeBorder(style: .init(lineWidth: 8, dash: [10], dashPhase: x))
                    .onAppear { self.x -= 20 }
                    .animation(Animation.linear.repeatForever(autoreverses: false))
            }.frame(width: 200, height: 400)
            
            ZStack {
                Rectangle()
                    .strokeBorder(style: .init(lineWidth: 8, dash: [10], dashPhase: x))
                    .onAppear { self.x -= 20 }
                    .animation(Animation.linear.repeatForever(autoreverses: false))
            }.frame(width: 100, height: 300)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
