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
    @State var isIdFieldFocused = false
    
    var body: some View {
        
        VStack{
            TextField("아이디를 입력해주세요.", text: $userId, onEditingChanged: { editingChange in isIdFieldFocused = editingChange
                
            })
                .font(.system(size: isIdFieldFocused ? 14 : 10))
                .padding()
                .background(Color(uiColor: .secondarySystemBackground))
                .cornerRadius(10)
        }
    }
}

