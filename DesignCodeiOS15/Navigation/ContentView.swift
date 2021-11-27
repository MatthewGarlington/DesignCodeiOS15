//
//  ContentView.swift
//  DesignCodeiOS15
//
//  Created by us-guest on 10/15/21.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("selectedTab") var selectedTab: Tab = .home
    var body: some View {
        ZStack(alignment: .bottom) {
                switch selectedTab {
                case .home:
                    HomeView()
                case .explore:
                    AccountView()
                case .notifications:
                    ScrollView {
                        Text("Notifications Tab")
                    }
                case .library:
                    ScrollView {
                        Text("Library Tab")
                    }
                }
            TabBar()
        }
        .safeAreaInset(edge: .bottom) {
            Color.clear.frame(height: 44)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)

    }
}
