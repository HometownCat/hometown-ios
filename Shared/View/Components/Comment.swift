//
//  Comment.swift
//  hometown_ios (iOS)
//
//  Created by 윤주원 on 2022/09/25.
//

import SwiftUI

struct Commnet: View{
    var body: some View{
        HStack{
            Image("cat")
                .resizable()
                .frame(width: 24, height: 24)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(lineWidth: 0.5)
                        .foregroundColor(Color.purple)
                )
            Text("jwyun")
            Text("...")
        }
    }
}
