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
                       imageURL: "https://w.namu.la/s/3e9eff79ca723e9510e20f1ab54adfdfcfe32f2e0133e22d23e9f2c14a3abae581e291a6b38d3d28c8d61c7c27ea42fbeeb4e14ddb50112f49d92c107e8403372caed265cef300053c90b60393c5839350efd0c98bc6fbbb5aad9e4f8f0081e310745ee2fd6fe0212b726b2d0507f29f")

let user2 : User = User(userId: "Kaz",
                       userName: "투태영",
                       imageURL: "https://w.namu.la/s/a1ed42e66126546eceb4bbb33fa7c21ffeb1a7cc3817852c1a832c3b0738c780e05352585558e692c6719451da6f30805ef8c7e5484190291a66b4d5b7235c8aa050e02ae4bd892c1a9af4aebd58f0d5e7f5bb6ef48eb5e3b526d506f8fd0835a402443ff6b3df8278129137f3206f57")

let imageURLList : [String] = [
    "https://w.namu.la/s/3acc6c7219ef3168c28202feaa574d04ca5eca3ee80ad179df07f2c031417ccfd60126693f77544423686b71e65096631cffb7e4cbc9c0efec092de62d8c8b82e3683b80f65ebac06904505c26c4062bee770c375c33fa4c03b723ab42d17064",
    "https://w.namu.la/s/d79f52b2692a0c94fb67ff7f53aa4e0113fe654ae54dfb3520aa51bec85c4254f23373b4ae01518687588d516a67298d1f25bb9564bef48ba9f1429b6aa2f7f24e222a7b87e55fb8327a1eb041ed33f5d9c2f9026c1424f628ab4eb556a7231f",
    "https://w.namu.la/s/5173ad8d54406e5ebad2854e84939258569015cb7dda2847df61ded47ab412048339785af3c6af373e8b570fde2b6fae840e078a4d8690ca25a76e3fcf711774b17f8e9e557c05035d45badbdfe6e5558187af2446e8a5e55661d9f410dc45af",
    "https://w.namu.la/s/d595655a6bb0f3c9c6c863f364aafd0d6f4193e2afa56d28e187d031e3139121752cee5bb1401602eb2f5b477918e982968f17bba9d3ef35e077ae274a3525705ac704076f6686463ba51d8debebd861ea4baf6b18523a7117e6548cf8455499"
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
