//
//  ContentView.swift
//  Study_Sweet_InstagramClone
//
//  Created by 원태영 on 2022/12/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        NavigationStack {
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                    }
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                    }
                
                ReelsView()
                    .tabItem {
                        Image(systemName: "play.rectangle")
                    }
                
                ShopView()
                    .tabItem {
                        Image(systemName: "handbag")
                    }
                
                SearchView()
                    .tabItem {
                        Image(systemName: "person.circle")
                    }
                
            }
        }
         
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

