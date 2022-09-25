//
//  MainFeed.swift
//  hometown_ios (iOS)
//
//  Created by 윤주원 on 2022/09/18.
//

import SwiftUI

struct MainFeed: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(){
                HStack{
                    Text("동네 선택")
                }
                Spacer()
                HStack{
                    Image(systemName: "magnifyingglass")
                    Image(systemName: "list.dash")
                    Image(systemName: "bell")
                }
               
            }.padding(.horizontal, 10)
            
            Spacer()
            ScrollView{
                Feed()
                Feed()
                Feed()
                Feed()
                Feed()
                Feed()
                Feed()
                Feed()

            }
        }
        .navigationBarHidden(true)
    }
}

