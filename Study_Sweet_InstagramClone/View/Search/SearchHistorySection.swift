//
//  SearchHistorySection.swift
//  Study_Sweet_InstagramClone
//
//  Created by 원태영 on 2023/01/31.
//

import SwiftUI

struct SearchHistorySection: View {
    
    @EnvironmentObject var searchStore: SearchStore
    
    var body: some View {
        
        ScrollView() {
            VStack(spacing: 20) {
                HStack {
                    Text("최근 검색")
                    Spacer()
                    NavigationLink {
                        SearchHistoryAllView()
                            .navigationTitle("최근 검색")
                            .navigationBarTitleDisplayMode(.inline)
                    } label: {
                        Text("모두 보기")
                    }
                    
                }
                
                ForEach(Array(searchStore.searchHistories.reversed()), id: \.self) { history in
                    HStack {
                        NavigationLink {
                            Text(history + "디테일")
                        } label: {
                            Image(systemName: "magnifyingglass.circle")
                                .font(.title2)
                            Text(history)
                            Spacer()
                        }
                        
                        Button {
                            removeHistory(history: history)
                        } label: {
                            Image(systemName: "xmark.circle")
                                .font(.title2)
                        }
                    }
                    .foregroundColor(.primary)
                }
                
            }
        }
        .padding(.horizontal, 20)
    }
    
    private func removeHistory(history: String) {
        guard let firstIndex = searchStore.searchHistories.firstIndex(of: history) else {
            return
        }
        searchStore.searchHistories.remove(at: firstIndex)
    }
    
    
}

//// MARK: -View :
struct SearchHistoryDetailSection : View {
    @EnvironmentObject var searchStore: SearchStore
    var body : some View {

        ForEach(Array(searchStore.searchHistories.reversed()), id: \.self) { history in
            HStack {
                NavigationLink {
                    Text(history + "디테일")
                } label: {
                    Image(systemName: "magnifyingglass.circle")
                        .font(.title2)
                    Text(history)
                    Spacer()
                }
                
                Button {
                    removeHistory(history: history)
                } label: {
                    Image(systemName: "xmark.circle")
                        .font(.title2)
                }
            }
            .foregroundColor(.primary)
        }

    }
    private func removeHistory(history: String) {
        guard let firstIndex = searchStore.searchHistories.firstIndex(of: history) else {
            return
        }
        searchStore.searchHistories.remove(at: firstIndex)
    }

}

struct SearchHistorySection_Previews: PreviewProvider {
    static var previews: some View {
        SearchHistorySection()
            .environmentObject(SearchStore())
    }
}
