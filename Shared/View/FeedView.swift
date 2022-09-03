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
                      VStack {
                          Text("Main Screen")
                      }
//                      .navigationBarHidden(true)
                  }
                  .tabItem {
                      Image(systemName: "house.fill")
                  }
                  
                  NavigationView{
                      VStack {
                          Text("Search Screen")
                      }
                  }
                  .tabItem {
                      Image(systemName: "magnifyingglass")
                  }
                  
                  NavigationView{
                      VStack {
                          Text("Camera")
                      }
                  }
                  .tabItem {
                      Image(systemName: "camera")
                  }
                  
                  NavigationView{
                      VStack {
                          Text("Vote")
                      }
                  }
                  .tabItem {
                      Image(systemName: "heart")
                  }

                  NavigationView{
                      VStack {
                          Text("Profile")
                      }
                  }
                  .tabItem {
                      Image(systemName: "person")
                  }
              }
              }
    
}

