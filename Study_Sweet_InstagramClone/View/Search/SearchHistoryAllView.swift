//
//  SearchHistoryAllView.swift
//  Study_Sweet_InstagramClone
//
//  Created by 원태영 on 2023/01/31.
//

import SwiftUI

struct SearchHistoryAllView: View {
    
    @EnvironmentObject var searchStore: SearchStore
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
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
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    searchStore.searchHistories.removeAll()
                } label: {
                    Text("모두 지우기")
                }

            }
        }
    }
    
    private func removeHistory(history: String) {
        guard let firstIndex = searchStore.searchHistories.firstIndex(of: history) else {
            return
        }
        searchStore.searchHistories.remove(at: firstIndex)
    }
}

struct SearchHistoryAllView_Previews: PreviewProvider {
    static var previews: some View {
        SearchHistoryAllView()
    }
}
