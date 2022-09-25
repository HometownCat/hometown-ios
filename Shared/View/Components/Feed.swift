//
//  Feed.swift
//  hometown_ios (iOS)
//
//  Created by 윤주원 on 2022/09/18.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        VStack(alignment: .leading){
            Image("background1")
                .resizable().aspectRatio(contentMode: .fit)
                .padding(.horizontal, 10)
            HStack(spacing: 14){
                HStack{
                Image(systemName: "heart")
//                Image(systemName: "heart.fill")
                Image(systemName: "message")
                }
                Spacer()
                Image(systemName: "ellipsis")
            }.padding(.horizontal, 10)
            VStack{
                Commnet()
//                Commnet()
            }.padding(.horizontal, 10)
        }.frame(maxWidth: .infinity)
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
            .previewInterfaceOrientation(.portrait)
    }
}
