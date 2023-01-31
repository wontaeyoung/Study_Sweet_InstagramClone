//
//  ContentView.swift
//  Study_Sweet_InstagramClone
//
//  Created by 원태영 on 2022/12/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationStack {
                HomeView()
            }
            .tabItem {
                Image(systemName: "house")
            }
            
            NavigationStack {
                SearchView()
            }
            .tabItem {
                Image(systemName: "magnifyingglass")
            }
            
            NavigationStack {
                ReelsView()
            }
            .tabItem {
                Image(systemName: "play.rectangle")
            }
            
            NavigationStack {
                ShopView()
            }
            .tabItem {
                Image(systemName: "handbag")
            }
            
            NavigationStack {
                ProfileView()
            }
            .tabItem {
                Image(systemName: "person.circle")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

