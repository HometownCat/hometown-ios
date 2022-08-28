//
//  LoginView.swift
//  hometown_ios (iOS)
//
//  Created by 차윤범 on 2022/08/21.
//

import Foundation
import SwiftUI

struct LoginView: View {
    @State private var isOn = true
    @State var registerScreen = false
    let iconWidth: CGFloat = 10
    let inputWidth: CGFloat = 10
    
    init(){
        UISwitch.appearance().onTintColor
        UISwitch.appearance().thumbTintColor
    }
    
    var body : some View {
        //        HStack{
        //            Image(systemName: "envelope").frame(width: iconWidth)
        //            TextField("ID / E-mail Address", text: $email)
        //                .frame(width: inputWidth, height: inputWidth)
        //                .padding()
        //                .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
        //        }
        //        HStack{
        //            Image(systemName: "lock").frame(width: iconWidth)
        //            TextField("Password", text: $password)
        //                .frame(width: inputWidth, height: inputWidth)
        //                .padding()
        //                .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
        //        }
        NavigationView{
            VStack{
                
                HStack {
                    Button(action: { }){
                        Text("로그인")
                            .frame(width: 80, height: 40, alignment: .center)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10).strokeBorder())
                    }
                    
                    Toggle(isOn : $isOn){
                        Text("자동 로그인")
                    }
                    .frame(width: 90, height: 40, alignment: .center)
                }.padding()
                
                
                NavigationLink(
                    destination: RegisterView(registerScreen: $registerScreen)
                ){
                    Text("회원가입")
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
