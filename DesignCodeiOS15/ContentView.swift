//
//  ContentView.swift
//  DesignCodeiOS15
//
//  Created by us-guest on 10/15/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            VStack(alignment: .leading, spacing: 8.0) {
                Image("Logo 2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 26, height: 26)
                Text("SwiftUI for iOS 15")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("20 sections - 3 hours")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text("Design and Code a SwiftUI 3 app with custom layouts, animations and gestures using XCode 13, SF Symbols, Canvas, Concurency, Searchable, and a whole lot more")
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }
            .padding(.all, 20)
            .frame(height: 350)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color("Background")/*@END_MENU_TOKEN@*/)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
