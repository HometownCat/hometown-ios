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
                      ZStack(alignment: .bottomTrailing){
                          MainFeed()
                          
                          Circle()
                              .foregroundColor(Color.purple)
                              .frame(width: 50, height: 50)
                              .overlay(
                                Image(systemName: "plus")
                                    .font(.system(size: 30))
                                    .foregroundColor(.white)
                              )
                              .padding(.trailing, 10)
                              .shadow(radius: 6)
                      }
                     
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
                          ProfileTab()
                          Text("Profile")
                      }.navigationBarHidden(true)
                  }
                  .tabItem {
                      Image(systemName: "person")
                  }
              }
              }
    
}

