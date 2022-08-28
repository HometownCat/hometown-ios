//
//  ContentView.swift
//  Shared
//
//  Created by 차윤범 on 2022/08/18.
//

import SwiftUI

struct ContentView: View {
    let loginView = LoginView()
  
    var body: some View {
        ZStack{
            Spacer().background(Color.white).edgesIgnoringSafeArea(.all)
            LoginView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        Group{
            ContentView()
//        }
        
    }
}
