//
//  HomeView.swift
//  Study_Sweet_InstagramClone
//
//  Created by 원태영 on 2022/12/30.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var postStore : PostStore = PostStore(posts: [post])
    
    
    
    var body: some View {
        
        ScrollView {
            VStack {
                
                // 내 스토리 라인
                HStack {
                    myProfileStoryButton
                    Spacer()
                }
                .padding(.horizontal, 20)
                
                Divider()
                
                
                ForEach(postStore.posts) {post in
                    
                    PostCell(post: post)
                        .overlay(alignment : .top) {
                            NavigationLink {
                                PostCell(post: post)
                            } label: {
                                Rectangle()
                                    .frame(width: 350, height: 50)
                                    .opacity(0)
                            }
                            
                        }
                }
            }
        }
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarLeading) {
                Button {
                    
                } label: {
                    Text("Instagram")
                        .font(.title)
                        .foregroundColor(.black)
                }
                
            }
            
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                Group {
                    Button {
                        
                    } label: {
                        Image(systemName: "plus.app")
                    }
                    Button {
                        
                    } label: {
                        Image(systemName: "heart")
                    }
                    NavigationLink {
                        Text("Direct Message View")
                    } label: {
                        Image(systemName: "airplane")
                    }
                }
                .foregroundColor(.black)
            }
        }
        
    }
    
    private var myProfileStoryButton : some View {
        Button {
            // 앨범 연결
        } label: {
            VStack {
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(alignment : .bottomTrailing) {
                        ZStack {
                            Circle()
                                .frame(width : 15)
                                .foregroundColor(.blue)
                            Image(systemName: "plus")
                                .font(.caption)
                                .foregroundColor(.white)
                        }
                    }
                Text("내 스토리")
                    .fontWeight(.semibold)
            }
            .foregroundColor(.black)
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
