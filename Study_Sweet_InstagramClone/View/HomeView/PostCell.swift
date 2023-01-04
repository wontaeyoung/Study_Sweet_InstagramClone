//
//  PostCell.swift
//  Study_Sweet_InstagramClone
//
//  Created by 원태영 on 2023/01/03.
//

import SwiftUI



struct PostCell: View {
    
    let screenSize = UIScreen.main.bounds
    
    let post : Post
    
    @State private var isLiked : Bool = false
    
    var body: some View {
        VStack(alignment : .leading) {
            // MARK: -프로필 이미지와 유저 정보 섹션
            HStack {
                AsyncImage(url: URL(string: post.user.imageURL)!) { image in
                    image
                        .resizable()
                        .background(Color.gray)
                        .clipShape(Circle())
                        
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 40, height : 40)
                
                VStack(alignment: .leading) {
                    Text(post.user.userId)
                    Text(post.place)
                }
                .font(.callout)
                
                Spacer()

                Button {
                    
                } label: {
                    
                    VStack(spacing : -25) {
                        Text(".")
                        Text(".")
                        Text(".")
                    }
                    .font(.title)
                    .foregroundColor(.black)
                    
                    
                }

            }
            
            // MARK: -Async 이미지 파트
            TabView {
                ForEach(post.imageURLList, id: \.self) { urlString in
                    AsyncImage(url: URL(string: urlString)!) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width : screenSize.width,
                           height: screenSize.height)
                    
                }
            }
            .padding(.horizontal, -20)
            .tabViewStyle(.page(indexDisplayMode: .never))
            
            // MARK: -가로 버튼 리스트
            HStack {
                Button {
                    
                } label: {
                    Image(systemName: "heart")
                }

                Button {
                    
                } label: {
                    Image(systemName: "message")
                }
                
                Button {
                    
                } label: {
                    Image(systemName: "airplane")
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "bookmark")
                }

            }
            .foregroundColor(.black)
            .font(.title)
            .padding(.bottom)
            
            
            // MARK: -댓글 파트
            HStack {
                
                ForEach(post.likeUsers) { user in
                    AsyncImage(url: URL(string: user.imageURL)!) { image in
                        image
                            .resizable()
                            .background(Color.gray)
                            .clipShape(Circle())
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 30, height : 30)
                }
                
                    
                Text("\(post.likeUsers.first!.userId)님 외 \(post.likeUsers.count-1)명이 좋아합니다")
            }
            
            // MARK: -게시물 내용
            HStack {
                Text(post.user.userId)
                    .bold()
                Text(post.content)
            }
            
            Button("댓글 \(post.comments.count)개 모두 보기") {
                
            }
            
            ForEach(post.comments) {comment in
                HStack {
                    Text(comment.user.userId)
                        .bold()
                    Button("@\(comment.targetUser?.userId ?? "nil")") {
                        
                    }
                    Text(comment.content)
                }
            }
            
        }
        .padding(20)
        
    }
}

struct PostCell_Previews: PreviewProvider {
    static var previews: some View {
        PostCell(post: post)
    }
}
