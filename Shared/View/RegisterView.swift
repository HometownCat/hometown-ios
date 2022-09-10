//
//  RegisterView.swift
//  hometown_ios (iOS)
//
//  Created by 윤주원 on 2022/08/28.
//

import SwiftUI

struct RegisterView: View {
    @Binding var registerScreen : Bool
    @State var userId : String = ""
    @State var password : String = ""
    @State var passwordConfirm : String = ""
    @State var email : String = ""
    @State var telNum : String = ""
    
    var body: some View {
        VStack{
            Image("cat")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
        }.padding(.horizontal, Constants.medium)
        
        Spacer()
        
        Custom_TextField(bindValue: $userId, label: "ID")
        
        Custom_SecureField(bindValue: $password, label: "비밀번호")
        
        Custom_SecureField(bindValue: $passwordConfirm, label: "비밀번호 확인")
        
        
        Custom_TextField(bindValue: $email, label: "이메일")
        
        Custom_TextField(bindValue: $telNum, label: "전화번호")
        
        Spacer()
        
        VStack{
            Button(action: {}, label: {Text("가입하기")}).buttonStyle(.bordered)
        }
        
        Spacer()
    }
}

