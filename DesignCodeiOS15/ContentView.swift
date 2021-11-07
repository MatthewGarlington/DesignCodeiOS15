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
                Spacer()
                Image("Logo 2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 26, height: 26)
                    .cornerRadius(20)
                Text("SwiftUI for iOS 15")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("20 sections - 3 hours".uppercased())
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
                Text("Design and Code a SwiftUI 3 app with custom layouts, animations and gestures using XCode 13, SF Symbols, Canvas, Concurrency, Searchable, and a whole lot more")
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.secondary)
            }
            .padding(.all, 20)
            .padding(.vertical, 20)
            .frame(height: 350)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
            .shadow(color: Color("Shadow").opacity(0.3), radius: 10, x: 0, y: 10)
            .padding(.horizontal, 20)
            .background(Image("Blob 1").offset(x: 250, y: -100))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)

    }
}
