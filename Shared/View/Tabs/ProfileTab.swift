//
//  Profile.swift
//  hometown_ios (iOS)
//
//  Created by 차윤범 on 2022/09/25.
//

import SwiftUI
import Foundation
import Alamofire

struct ProfileTab: View {
//    @State private var user = UserResponse(from: UserResponseResults)
//    @State private var userId = user.id
    @State private var users = [UserRequest]()
    @State private var boards = [Board]()
    
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
                    .padding(.leading, 25)
                }
                HStack(){
                    Text("UserName")
                }
            }
            
            HStack(){
                List(boards, id: \.id) { item in
                    VStack(alignment: .leading){
                        Text(item.title).font(.headline)
                    }
                }
            }
        }
        .task {
            await loadData()
        }
    }
    func loadData() async{
        requestAF("http://localhost:3000/api/board/feed", "GET")
        
//        request("http://localhost:3000/api/board/feed", "GET") { (success, data) in
//          print(data)
//        }
        
    }
}
