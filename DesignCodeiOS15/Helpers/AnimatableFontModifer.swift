//
//  AnimatableFontModifer.swift
//  DesignCodeiOS15
//
//  Created by us-guest on 11/27/21.
//

import SwiftUI

struct AnimatableFontModifer: AnimatableModifier {
    var size: Double
    var weight: Font.Weight = .regular
    var design: Font.Design = .default
    
    var animatableData: Double {
        get { size }
        set { size = newValue }
    }
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: size, weight: weight, design: design))
    }
}

extension View {
    func animitableFont(size: Double, weight: Font.Weight = .regular, design: Font.Design = .default) -> some View {
        self.modifier(AnimatableFontModifer(size: size, weight: weight, design: design))
    }
}
