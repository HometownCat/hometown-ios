//
//  LoginView.swift
//  hometown_ios (iOS)
//
//  Created by 차윤범 on 2022/08/21.
//

import Foundation
import SwiftUI
import UIKit

struct LoginView: View {
    @State private var isOn = true
    @State var registerScreen = false
    @State var findScreen = false
    @State var username: String = "";
    @State var password: String = "";
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

//    let iconWidth: CGFloat = 32
//    let iconHeight: CGFloat = 32
    let inputWidth: CGFloat = 30
    
    let textFieldWidth: CGFloat = 330
    let textFieldHeight: CGFloat = 40
    
    init(){
        UISwitch.appearance().onTintColor
        UISwitch.appearance().thumbTintColor
    }
    
    var body : some View {
        
        
        NavigationView{
            ZStack{
                Image("background1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    VStack {
                        Text("우리동네 킹냥이")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .padding(.horizontal, 20)
                        Image("cat")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 200, height: 200)
                            .clipped()
                            .cornerRadius(45)
                            .padding(.bottom, 75)
                    }.padding(.horizontal, Constants.medium)
    //                    .alignmentGuide(.leading, computeValue: {d in d[explicit: .leading]})
                    
                    HStack{
                        Image(systemName: "person").frame(width: Constants.iconWidth, height: Constants.iconHeight)
                        TextField("Username", text: $username)
                            .frame(width: textFieldWidth, height: textFieldHeight, alignment: .leading)
                            .padding(.leading, 15)
                            .background(lightGreyColor)
                            .cornerRadius(11)
                    }.padding(.bottom, 3)
                    
                    HStack{
                        Image(systemName: "lock").frame(width: Constants.iconWidth, height: Constants.iconHeight)
                        SecureField("Password", text: $password)
                            .frame(width: textFieldWidth, height: textFieldHeight, alignment: .leading)
                            .padding(.leading, 15)
                            .background(lightGreyColor)
                            .cornerRadius(11)
                    }.padding(.bottom, 27)
                    
                    HStack(alignment: .center, spacing: 48){
                        Button(action: { }){
                            Text("로그인")
                                .frame(width: 80, height: 15, alignment: .center)
                                .padding()
                                .foregroundColor(.black)
                                .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
                                .background(Color.white)
                                .cornerRadius(10)
                        }.padding(.leading, 30)
                            .foregroundColor(.black)
                            .cornerRadius(10)
                        
                        Toggle(isOn : $isOn){
                            Text("자동 로그인")
                                .font(.system(size: 14))
                        }
                        .frame(width: 130, height: 20)
                    }.padding(.bottom, 28).padding(.trailing, 10)
                    
                    HStack{
                        NavigationLink(
                            destination: RegisterView(registerScreen: $registerScreen)
                        ){
                            Text("회원가입")
                                .font(.system(size: 14))
                                .foregroundColor(.black)
                        }.padding(.leading, 20)
                        
                        NavigationLink(destination: FindIdAndPasswordView(findScreen: $findScreen)){
                            Text("ID/PW 찾기")
                                .font(.system(size: 14))
                                .foregroundColor(.black)
                        }.padding(.leading, 40)
                    }
                }.padding(.bottom, 80)
            
            }
        }
        
    };

}

//struct LoginView_Previews: PreviewProvider{
//
//    static var previews: some View{
//        Group {
//            LoginView()
//
//        }
//    }
//}
