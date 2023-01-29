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
    
    @State private var shortsIndexes : [Int] = [3]
    @State private var searchText : String = ""
    
    let columns : [GridItem] = Array(repeating: .init(.flexible(minimum : Utility.imageWidth, maximum: Utility.imageWidth), spacing: 0, alignment: .top), count: 3)
    
    var body: some View {
        
        
        ScrollView {
            LazyVGrid(columns: columns, spacing: 0) {
                ForEach(1..<Utility.maximumGridCount, id: \.self) {i in
                    ImageCell(index: i)
                        .modifier(OverlayModifier(isShorts: shortsIndexes.contains(i)))
                }
            }
        }
        .searchable(text: $searchText)
        
        .onAppear {
            setShortsIndexes()
        }
    }
    
    private func setShortsIndexes() {
        var appendNumber : Int = 0
        while appendNumber < Utility.maximumGridCount {
            if let last = Array(shortsIndexes.enumerated()).last {
                if last.offset % 2 == 0 {
                    appendNumber = last.element + 10
                } else {
                    appendNumber = last.element + 14
                }
                if appendNumber > 200 {
                    break
                }
                shortsIndexes.append(appendNumber)
                
            }
        }
    }
}


struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
