//
//  Profile.swift
//  hometown_ios (iOS)
//
//  Created by 차윤범 on 2022/09/25.
//

import SwiftUI
import Foundation

struct ProfileTab: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack() {
                HStack{
                    Text("UserName")
                        .padding()
                }
                Spacer()
                HStack{
                    Button(action: { }){
                        Text("Edit")
                            .frame(width: 30, height: 15, alignment: .trailing)
                            .padding()
                            .foregroundColor(.black)
                            .background(Color.white)
                    }.padding(.trailing, 10)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                }
            }.padding(.bottom, 60)
            
            HStack(){
                HStack(){
                Image("cat")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
                    .clipped()
                    .cornerRadius(150)
                    .padding(.bottom, 75)
                }
                HStack(){
                    Text("UserName")
                }
            }
        }
    }
}
