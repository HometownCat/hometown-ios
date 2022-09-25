//
//  ContentView.swift
//  Shared
//
//  Created by 차윤범 on 2022/08/18.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        ZStack{
            Spacer().background(Color.white).edgesIgnoringSafeArea(.all)
//            LoginView()
            FeedView()
        }
    }
}

//struct MainView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainView()
//    }
//}
