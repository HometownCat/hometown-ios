//
//  Feed.swift
//  hometown_ios (iOS)
//
//  Created by 윤주원 on 2022/09/18.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        VStack{
            Image("background1").resizable().aspectRatio(contentMode: .fit)
            HStack(spacing: 14){
                Image(systemName: "heart")
//                Image(systemName: "heart.fill")
                Image(systemName: "message")
//                Spacer()
                Image(systemName: "ellipsis")
            }
            HStack{
                Image(systemName: "person.crop.circle")
                Text("id")
                Text("content")
            }
        }.frame(maxWidth: .infinity)
        
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}
