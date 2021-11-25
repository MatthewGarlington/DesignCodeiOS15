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
}

var tabItems = [
    TabItem(text: "Learn Now", icon: "house"),
TabItem(text: "Explore", icon: "magnifyingglass"),
TabItem(text: "Notification", icon: "bell"),
TabItem(text: "Library", icon: "rectangle.stack"),
]
