//
//  OverlayModifier.swift
//  Study_Sweet_InstagramClone
//
//  Created by 원태영 on 2023/01/30.
//

import SwiftUI

struct OverlayModifier : ViewModifier {
    let isShorts : Bool
    
    func body(content: Content) -> some View {
        content
            .overlay(alignment : .top) {
                if isShorts {
                    Color.orange
                        .frame(minHeight : Utility.imageWidth * 2)
                }
            }
            .overlay(alignment : isShorts
                     ? .bottomLeading
                     : .topTrailing) {
                Image(systemName: isShorts
                      ? "play.rectangle.fill"
                      : "square.on.square.fill")
            }
    }
}
