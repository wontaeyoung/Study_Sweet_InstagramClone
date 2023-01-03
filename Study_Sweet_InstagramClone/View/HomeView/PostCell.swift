//
//  PostCell.swift
//  Study_Sweet_InstagramClone
//
//  Created by 원태영 on 2023/01/03.
//

import SwiftUI

struct PostCell: View {
    
    let post : Post = Post(user: user,
                           place: "태초마을",
                           imageURLList: ["https://w.namu.la/s/d595655a6bb0f3c9c6c863f364aafd0d6f4193e2afa56d28e187d031e3139121752cee5bb1401602eb2f5b477918e982968f17bba9d3ef35e077ae274a3525705ac704076f6686463ba51d8debebd861ea4baf6b18523a7117e6548cf8455499",
                                          "https://w.namu.la/s/3acc6c7219ef3168c28202feaa574d04ca5eca3ee80ad179df07f2c031417ccfd60126693f77544423686b71e65096631cffb7e4cbc9c0efec092de62d8c8b82e3683b80f65ebac06904505c26c4062bee770c375c33fa4c03b723ab42d17064"],
                           hashtagList: ["피카츄", "이상한 사탕"],
                           likeUsers: [],
                           isColleted: false,
                           comments: [],
                           content: "오늘은 여행을 떠나는 날",
                           date: Date().timeIntervalSince1970)
    
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PostCell_Previews: PreviewProvider {
    static var previews: some View {
        PostCell()
    }
}
