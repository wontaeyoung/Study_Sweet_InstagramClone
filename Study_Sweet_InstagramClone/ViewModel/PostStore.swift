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
                       imageURL: "https://w.namu.la/s/fb074c9e538edb0b41d818df3cb7b5499a844aeb5e8becc3ce1664468c885d883e8a8243a33eefc11e107b8d7dbbf77a410d78675770117a6654984ebe73f2f2eb846d97e660cdc8ab76067ddad22f9574647c8b25eaf5022f4f481b458094b9")

let user2 : User = User(userId: "Kaz",
                       userName: "투태영",
                       imageURL: "https://w.namu.la/s/efa5d35664f01235ac834d549778f2ea46c54c15d4166e37ca3371739f27f770da973bad4fdd8972b15c2ac087697f27b3e4fde37e33c0a6a39db8f2d8933805c4a08c953dfc17c61bb355a512bdda3a4603ab7c7040433b5ad9f9fe4be99a41")

let imageURLList : [String] = [
    "https://w.namu.la/s/d595655a6bb0f3c9c6c863f364aafd0d6f4193e2afa56d28e187d031e3139121752cee5bb1401602eb2f5b477918e982968f17bba9d3ef35e077ae274a352570eb61cd8366c4eceeeef4abf32b9543f2126e9f5f75fa88dcd4db0b61ace198c6",
    "https://w.namu.la/s/0c240fd6ecac031afc51652a8794e4065ac2523829c70e4572202f9344b1cabd1d77f965e6802b0531427c5f5e4f5f0204efd96626d4d05131fcbc11409f8ee1afcbc5bbd0c7a50366b55de8ff1a957a6a83ebfebf9d112adde61127aa03370a",
    "https://w.namu.la/s/26a9a555eeac7f5812e6c58cac0b9523ea214fe41f5f9d33e36795aafcae18aede2a4dbc77c97b3156d71e1a45dfa2990ba799eda84674ff6bfea3c1af8787917ab3b48eacf0fa6a50a410f4df0f0585cebed9d5ecb372dcbd98f78340dbd7ca",
    "https://w.namu.la/s/9c4cd75cf1d125e094aef1f2e5fb03bec42f6d155c0c731e206977e66f696385a7a8f1a2d98533f787e028193873009f1fd2fb02412a417806ccf170bd8d96f4d56ce9091c784e4a0fb2c9e53ebf8add238f34e8811c4711ad90a7f111cfa5a0"
]

let post : Post = Post(user: user,
                       place: "태초마을",
                       imageURLList: imageURLList,
                       hashtagList: ["피카츄", "이상한 사탕"],
                       likeUsers: [user, user2],
                       isColleted: false,
                       comments: comments,
                       content: "오늘은 여행을 떠나는 날",
                       date: Date().timeIntervalSince1970)

let comments : [Comment] = [
    Comment(user: user, superCommentId: nil, targetUser: user2, likeUsers: [user, user2], content: "피카츄 귀여워", date: Date().timeIntervalSince1970),
    Comment(user: user2, superCommentId: nil, targetUser: user, likeUsers: [user2, user], content: "에몽가도 귀여워", date: Date().timeIntervalSince1970)
]
