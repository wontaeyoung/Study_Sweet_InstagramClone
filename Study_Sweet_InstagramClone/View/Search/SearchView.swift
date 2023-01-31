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
    
    @EnvironmentObject var searchStore: SearchStore
    
    @State private var shortsIndexes : [Int] = [3]
    @State private var shortsDownIndexes: [Int] = []
    @State private var searchText : String = ""
    @State private var didTapSearchBar: Bool = false
    
    
    let columns : [GridItem] = Array(
        repeating: .init(
            .flexible(),
            spacing: 0,
            alignment: .top
        ), count: 3)
    
    var body: some View {
        
        VStack {
            HStack {
                if didTapSearchBar {
                    topSearchBar
                } else {
                    topSearchButton
                }
                
                if didTapSearchBar {
                    searchCancelButton
                }
            }
            .padding(.horizontal, 20)
            
            if didTapSearchBar {
                SearchHistorySection()
            } else {
                gridScrollView
            }
            
        }
        .onAppear {
            setShortsIndexes()
            shortsDownIndexes = setShortsDownIndexes()
        }
    }
    
    
    // MARK: -View Properties
    // MARK: 상단 검색 바
    private var topSearchBar : some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .padding(.leading, 10)
            TextField("검색", text: $searchText)
                .onSubmit {
                    addHistory(newHistory: searchText)
                    searchText = ""
                    print("검색 결과 디테일 네비를 어케 부르지")
                }
                .textInputAutocapitalization(.never)
        }
        .foregroundColor(Color(uiColor: .systemGray3))
        .frame(height: 30)
        .background(Color.gray)
        .cornerRadius(10)
    }
    
    // MARK: 검색 취소 버튼
    private var searchCancelButton : some View {
        Button {
            withAnimation {
                didTapSearchBar = false
            }
        } label: {
            Text("취소")
        }
    }
    
    // MARK: 상단 검색바 형태 버튼
    private var topSearchButton : some View {
        Button {
            withAnimation {
                didTapSearchBar = true
            }
        } label: {
            RoundedRectangle(cornerRadius: 10)
                .modifier(SearchBarModifier())
                .overlay(alignment: .leading) {
                    Label("검색", systemImage: "magnifyingglass")
                        .foregroundColor(Color(uiColor: UIColor.systemGray3))
                        .padding(.leading, 10)
                }
        }
    }
    
    // MARK: 이미지 그리드 스크롤 뷰
    private var gridScrollView: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 0) {
                ForEach(1..<Utility.maximumGridCount, id: \.self) { i in
                    
                    if shortsDownIndexes.contains(i) {
                        Color.clear
                            .frame(minHeight: Utility.imageWidth)
                    } else {
                        ImageCell(index: i)
                            .modifier(OverlayModifier(isShorts: shortsIndexes.contains(i)))
                    }
                    
                }
            }
        }
    }
    
    // MARK: -Methods
    // MARK: Shorts 영상이 위치하는 인덱스를 계산해서 배열에 담는 함수
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
    
    // MARK: shortsIndexes 배열을 활용해 Shorts 영상의 바로 아래 이미지 인덱스 배열을 반환하는 함수
    private func setShortsDownIndexes() -> [Int] {
        return shortsIndexes.map{$0 + 3}
    }
    
    
    // MARK: 검색한 검색어를 history 배열에 추가하는 함수
    private func addHistory(newHistory: String) {
        if let firstIndex = searchStore.searchHistories.firstIndex(of: newHistory) {
            searchStore.searchHistories.remove(at: firstIndex)
        }
        searchStore.searchHistories.append(newHistory)
    }
}


struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
            
    }
}


struct SearchBarModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.gray)
            .frame(height: 30)
    }
}
