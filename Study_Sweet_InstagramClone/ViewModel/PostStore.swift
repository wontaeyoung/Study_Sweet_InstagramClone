//
//  PostStore.swift
//  Study_Sweet_InstagramClone
//
//  Created by 원태영 on 2023/01/03.
//

import Foundation

class PostStore : ObservableObject {
    @Published var posts: [Post]
    
    init(posts: [Post] = []) {
        self.posts = posts
    }
}

let user : User = User(userId: "hexter1994",
                       userName: "원태영",
                       imageURL: "https://namu.wiki/jump/i9qrUoPPtb6US9HEhue5Buf1mlHS%2B9y1o8UArtG52dlTkM%2Fa%2FxzudCBM3QS7B4g%2B")
