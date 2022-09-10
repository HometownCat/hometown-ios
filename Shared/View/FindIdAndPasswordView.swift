//
//  FindIdAndPasswordView.swift
//  hometown_ios (iOS)
//
//  Created by 차윤범 on 2022/08/31.
//

import Foundation
import SwiftUI

struct FindIdAndPasswordView: View{
    @Binding var findScreen: Bool
    @State var userId : String = ""
    @State var userPassword : String = ""
    @State var userEmail : String = ""
    @State var userTelNum : String = ""
    
    @State var isIdFieldFocused = false
    @State var isPasswordFieldFocused = false
    @State var isEmailFieldFocused = false
    @State var isTelNumFieldFocused = false
    
    var body: some View{
        VStack{
            Image("cat")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
        }.padding(.horizontal, Contstants.medium)
        
        Spacer()
        
        Custom_TextField(bindValue: $userId, label: "아이디를 입력해주세요.")
        
        VStack{
            TextField("이메일을 입력해주세요.", text: $userEmail, onEditingChanged: { editingChange in isEmailFieldFocused = editingChange
                
            })
                .font(.system(size: isEmailFieldFocused ? 14 : 10))
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
                .cornerRadius(10)
        }.padding(.horizontal, Contstants.medium)
        
        VStack{
            TextField("전화번호를 입력해주세요.", text: $userTelNum, onEditingChanged: { editingChange in isTelNumFieldFocused = editingChange
                
            })
                .font(.system(size: isTelNumFieldFocused ? 14 : 10))
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
                .cornerRadius(10)
        }.padding(.horizontal, Contstants.medium)
        
        Spacer()
        HStack{
            Button(action: {}, label: {Text("인증하기")}).buttonStyle(.bordered)
                .padding(.trailing, 46)
       
        
            Button(action: {}, label: {Text("ID/PW 찾기")}).buttonStyle(.bordered)
                .padding(.leading, 40)
        }
        
        Spacer()
    }
    
}
