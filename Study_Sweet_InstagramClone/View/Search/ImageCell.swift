//
//  ImageCell.swift
//  Study_Sweet_InstagramClone
//
//  Created by 원태영 on 2023/01/30.
//

import SwiftUI

struct ImageCell : View {
    
    let index : Int
    
    var body: some View {
        Color.gray
            .frame(minHeight: Utility.imageWidth)
            .border(.black)
            .overlay {
                Text("\(index)")
            }
    }
}
