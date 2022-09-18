//
//  FeedView.swift
//  hometown_ios (iOS)
//
//  Created by 윤주원 on 2022/09/03.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        TabView{
                  NavigationView{
                     MainFeed()
                  }
                  .tabItem {
                      Image(systemName: "house.fill")
                  }
                  
                  NavigationView{
                      VStack {
                          Text("Search Screen")
                      }.navigationBarHidden(true)
                  }
                  .tabItem {
                      Image(systemName: "magnifyingglass")
                  }
                  
                  NavigationView{
                      VStack {
                          Text("Camera")
                      }.navigationBarHidden(true)
                  }
                  .tabItem {
                      Image(systemName: "camera")
                  }
                  
                  NavigationView{
                      VStack {
                          Text("Vote")
                      }.navigationBarHidden(true)
                  }
                  .tabItem {
                      Image(systemName: "heart")
                  }

                  NavigationView{
                      VStack {
                          Text("Profile")
                      }.navigationBarHidden(true)
                  }
                  .tabItem {
                      Image(systemName: "person")
                  }
              }
              }
    
}

