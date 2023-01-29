//
//  SearchView.swift
//  Study_Sweet_InstagramClone
//
//  Created by 원태영 on 2022/12/30.
//

import SwiftUI

// MARK: Memo
/// 1. 인스타그램 Grid는 4장 이미지 + 우측 Shorts -> 6장 이미지 -> 좌측 Shorts + 4장 이미지 -> 6장 이미지 순으로 구성되어 있다

struct SearchView: View {
    let columns : [GridItem] = Array(repeating: .init(.flexible(), spacing: 0), count: 3)
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 0) {
                
                ForEach(1..<200) {i in
                    Color.gray
                        .border(.black)
                }
                
            }
        }
    }
}

struct ImageCell : View {
    
    let index : Int
    
    var body: some View {
        Color.gray
            .overlay {
                Text("\(index)")
            }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
