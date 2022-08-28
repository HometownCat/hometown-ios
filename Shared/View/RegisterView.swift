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
    @State var userPassword : String = ""
    @State var userEmail : String = ""
    @State var userTelNum : String = ""
    
    @State var isIdFieldFocused = false
    @State var isPasswordFieldFocused = false
    @State var isEmailFieldFocused = false
    @State var isTelNumFieldFocused = false
    var body: some View {
        let horizontal : CGFloat = 30
        
        VStack{
            Image("cat")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
        }.padding(.horizontal, horizontal)
        
        Spacer()
        
        VStack{
        
            TextField("아이디를 입력해주세요.", text: $userId, onEditingChanged: { editingChange in isIdFieldFocused = editingChange
                
            })
                .font(.system(size: isIdFieldFocused ? 14 : 10))
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
                .cornerRadius(10)
            
        }.padding(.horizontal, horizontal)
        
        VStack{
            SecureField("비밀번호를 입력해주세요.", text: $userPassword)
                .font(.system(size: isPasswordFieldFocused ? 14 : 10))
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
                .cornerRadius(10)
        }.padding(.horizontal, horizontal)
        
        VStack{
            TextField("이메일을 입력해주세요.", text: $userEmail, onEditingChanged: { editingChange in isEmailFieldFocused = editingChange
                
            })
                .font(.system(size: isEmailFieldFocused ? 14 : 10))
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
                .cornerRadius(10)
        }.padding(.horizontal, horizontal)
        
        VStack{
            TextField("전화번호를 입력해주세요.", text: $userTelNum, onEditingChanged: { editingChange in isTelNumFieldFocused = editingChange
                
            })
                .font(.system(size: isTelNumFieldFocused ? 14 : 10))
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
                .cornerRadius(10)
        }.padding(.horizontal, horizontal)
        
        Spacer()
        
        VStack{
            Button(action: {}, label: {Text("가입하기")}).buttonStyle(.bordered)
        }
        
        Spacer()
    }
}

