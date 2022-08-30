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
    @State var username: String = "";
    @State var password: String = "";
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

    let iconWidth: CGFloat = 30
    let inputWidth: CGFloat = 30
    
    init(){
        UISwitch.appearance().onTintColor
        UISwitch.appearance().thumbTintColor
    }
    
    var body : some View {
        
        
        NavigationView{
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
                }.padding(.horizontal, Contstants.medium)
                
                HStack{
                    Image(systemName: "envelope").frame(width: iconWidth)
                    TextField("Username", text: $username)
                        .frame(width: 300, height: 20, alignment: .trailing)
                        .padding(.leading, 15)
                        .cornerRadius(70.0)
                        .background(lightGreyColor)
                }.padding(.bottom, 7)
                
                HStack{
                    Image(systemName: "lock").frame(width: iconWidth)
                    SecureField("Password", text: $password)
                        .frame(width: 300, height: 20, alignment: .trailing)
                        .padding(.leading, 15)
                        .cornerRadius(70.0)
                        .background(lightGreyColor)
                }
                HStack(spacing: 40){
                    Button(action: { }){
                        Text("로그인")
                            .frame(width: 80, height: 20, alignment: .center)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
                    }
                    
                    Toggle(isOn : $isOn){
                        Text("자동 로그인")
                            .font(.system(size: 14))
                    }
                    .frame(width: 145, height: 20, alignment: .trailing)
                }.padding()
                
                
                NavigationLink(
                    destination: RegisterView(registerScreen: $registerScreen)
                ){
                    Text("회원가입")
                        .font(.system(size: 14))
                    Spacer()
                        .frame(width: 40)
                    Text("ID/PW 찾기")
                        .font(.system(size: 14))
                }
            }
            
            
        }
        
        
    }

}

struct LoginView_Previews: PreviewProvider{
    
    static var previews: some View{
        LoginView()
    }
}
