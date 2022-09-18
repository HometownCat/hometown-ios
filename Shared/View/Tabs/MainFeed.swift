//
//  MainFeed.swift
//  hometown_ios (iOS)
//
//  Created by 윤주원 on 2022/09/18.
//

import SwiftUI

struct MainFeed: View {
    var body: some View {
        VStack {
            HStack(spacing: 14){
                Text("동네 선택")
                    .frame(maxWidth: .infinity)
                Spacer()
                HStack{
                    Image(systemName: "magnifyingglass")
                    Image(systemName: "list.dash")
                    Image(systemName: "bell")
                }
                .frame(maxWidth: .infinity)
            }
            
            Spacer()
            Feed()
            Feed()
        }
//                      .navigationBarHidden(true)
    }
}

