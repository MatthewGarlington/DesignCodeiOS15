//
//  Tab.swift
//  DesignCodeiOS15
//
//  Created by us-guest on 11/25/21.
//

import SwiftUI

struct TabItem: Identifiable {
    var id = UUID()
    var text: String
    var icon: String
    var tab: Tab
    var color: Color
}

var tabItems = [
    TabItem(text: "Learn Now", icon: "house", tab: .home, color: Color.teal),
    TabItem(text: "Explore", icon: "magnifyingglass", tab: .explore, color: Color.blue),
    TabItem(text: "Notification", icon: "bell", tab: .notifications, color: Color.red),
    TabItem(text: "Library", icon: "rectangle.stack", tab: .library, color: Color.pink),
]

enum Tab: String {
    case home
    case explore
    case notifications
    case library
}

struct TabPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
