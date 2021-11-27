//
//  PreferenceKeys.swift
//  DesignCodeiOS15
//
//  Created by us-guest on 11/27/21.
//

import SwiftUI

struct ScrollPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
