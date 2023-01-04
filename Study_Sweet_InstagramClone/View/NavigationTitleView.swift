//
//  NavigationTitleView.swift
//  Study_Sweet_InstagramClone
//
//  Created by 원태영 on 2023/01/02.
//

import SwiftUI

struct NavigationTitleView: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            
            // MARK: -View : 가로 스크롤 코드
            Text("가로 스크롤")
                .font(.title3)
                .bold()
            ScrollView(.horizontal) {
                HStack {
                    ForEach(1...20, id: \.self) { num in
                        Text(String(num))
                            .frame(width : 80, height: 80)
                            .background(Color.yellow)
                            .cornerRadius(15)
                    }
                }

            }
            
            Divider()
                .padding(.vertical, 20)
                
            // MARK: -View : 페이지네이션 코드
            Text("페이지네이션")
                .font(.title3)
                .bold()
            TabView {
                ForEach(1...20, id: \.self) { num in
                    Text(String(num))
                        .frame(width : 80, height: 80)
                        .background(Color.yellow)
                        .cornerRadius(15)
                }
            }
            .frame(height: 200)
            .tabViewStyle(.page)
        }
        .padding(.horizontal, 20)
        .frame(width: .infinity, height: UIScreen.main.bounds.height)
        .background(Color.gray)
        
    }
}

struct BagView : View {
    var body: some View {
        Text("장바구니 뷰입니다~")
            .font(.largeTitle)
    }
}

struct NavigationTitleView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationTitleView()
    }
}

