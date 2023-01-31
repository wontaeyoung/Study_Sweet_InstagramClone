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
            .overlay(alignment: .top) {
                if isShorts {
                    Rectangle()
                        .frame(minHeight : Utility.imageWidth * 2)
                        .foregroundColor(.orange)
                        .overlay(alignment: .bottomLeading) {
                            Image(systemName: "play.rectangle.fill")
                                .foregroundColor(.white)
                        }
                }
            }
            .overlay(alignment: .topTrailing) {
                if !isShorts {
                    Image(systemName: "square.on.square.fill")
                        .foregroundColor(.white)
                }
            }
    }
}
