//
//  HomeView.swift
//  DesignCodeiOS15
//
//  Created by us-guest on 11/26/21.
//

import SwiftUI

struct HomeView: View {
    @State var hasScroll = false
    var body: some View {
        ScrollView {
            GeometryReader { proxy in
                Color.clear.preference(key: ScrollPreferenceKey.self, value: proxy.frame(in: .named("scroll")).minY)
            }
            .frame(height: 0)
            FeaturedItem()
            
            Color.clear
                .frame(height: 1000)
        }
        .coordinateSpace(name: "scroll")
        .onPreferenceChange(ScrollPreferenceKey.self, perform: { value in
            withAnimation(.easeInOut) {
            if value < 0 {
                hasScroll = true
            } else {
                hasScroll = false
            }
            }
        })
        .safeAreaInset(edge: .top, content: {
            Color.clear
                .frame(height: 70)
        })
        .overlay(
            NavigationBar(title: "Featured")
                .opacity(hasScroll ? 1 : 0)
        )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
