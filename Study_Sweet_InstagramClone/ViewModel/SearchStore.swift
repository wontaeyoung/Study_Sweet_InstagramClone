//
//  SearchStore.swift
//  Study_Sweet_InstagramClone
//
//  Created by 원태영 on 2023/01/31.
//

import Foundation

class SearchStore : ObservableObject {
    @Published var searchHistories: [String]
    
    init(searchHistories: [String] = ["space"]) {
        self.searchHistories = searchHistories
    }
}
